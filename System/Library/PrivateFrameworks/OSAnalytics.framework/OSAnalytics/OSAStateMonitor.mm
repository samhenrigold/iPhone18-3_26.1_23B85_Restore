@interface OSAStateMonitor
+ (BOOL)processCALogEvent:(id)event eventPayload:(id)payload into:(id *)into;
+ (id)CALogStateToString:(int64_t)string;
+ (id)dateForEvent:(id)event;
+ (id)evaluateCALogStates:(id)states;
+ (void)checkAndReportCALogStates;
+ (void)checkCALogWrittenStatus;
+ (void)checkSubmissionStatus;
+ (void)evaluateState;
+ (void)postFailureWithReason:(id)reason;
+ (void)recordEvent:(id)event;
+ (void)recordEvent:(id)event with:(id)with;
@end

@implementation OSAStateMonitor

+ (void)evaluateState
{
  if (evaluateState_token != -1)
  {
    +[OSAStateMonitor evaluateState];
  }

  v2 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AE4F7000, v2, OS_LOG_TYPE_DEFAULT, "Running the state monitor.", v3, 2u);
  }

  +[OSAStateMonitor checkCALogWrittenStatus];
  +[OSAStateMonitor checkSubmissionStatus];
  +[OSAStateMonitor checkAndReportCALogStates];
}

uint64_t __32__OSAStateMonitor_evaluateState__block_invoke()
{
  OSAStateMonitorLogDomain = os_log_create("com.apple.osanalytics.monitors", "state-monitor");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)recordEvent:(id)event
{
  eventCopy = event;
  if (([eventCopy isEqualToString:@"log-submission"] & 1) != 0 || objc_msgSend(eventCopy, "isEqualToString:", @"ca-log-written"))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    v4 = [OSAStateMonitor keyForEvent:eventCopy];
    [OSADefaults setObject:v3 forKey:v4];
  }

  else
  {
    [OSAStateMonitor recordEvent:eventCopy with:0];
  }
}

+ (void)recordEvent:(id)event with:(id)with
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v14 = @"eventName";
  v15 = eventCopy;
  v6 = MEMORY[0x1E695DF20];
  withCopy = with;
  v8 = [v6 dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v9 = [v8 mutableCopy];

  [v9 addEntriesFromDictionary:withCopy];
  v10 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v13 = [v10 stringWithFormat:@"state-monitor.ca.event.%f", v12, v14, v15, v16];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[OSAStateMonitor recordEvent:with:];
  }

  [OSADefaults setObject:v9 forKey:v13];
}

+ (void)checkCALogWrittenStatus
{
  v2 = [OSAStateMonitor dateForEvent:@"ca-log-written"];
  [v2 timeIntervalSinceNow];
  v4 = v3;

  if (v4 < -90000.0)
  {

    [OSAStateMonitor postFailureWithReason:@"Missing CA log after rollover"];
  }
}

+ (void)checkSubmissionStatus
{
  if (!OSAIsRSDDisplay())
  {
    v2 = [OSAStateMonitor dateForEvent:@"log-submission"];
    [v2 timeIntervalSinceNow];
    v4 = v3;

    if (v4 < -129600.0)
    {

      [OSAStateMonitor postFailureWithReason:@"Log submission is overdue"];
    }
  }
}

+ (void)postFailureWithReason:(id)reason
{
  v13[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v4 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_ERROR))
  {
    [(OSAStateMonitor *)reasonCopy postFailureWithReason:v4];
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = reasonCopy;
  v5 = reasonCopy;
  AnalyticsSendEventLazy();
  v12[0] = @"crk";
  v6 = [OSASystemConfiguration sharedInstance:v10];
  crashReporterKey = [v6 crashReporterKey];
  v12[1] = @"reason";
  v13[0] = crashReporterKey;
  v8 = @"<unknown>";
  if (v5)
  {
    v8 = v5;
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  rtcsc_send(2006, 2006, v9);
}

id __41__OSAStateMonitor_postFailureWithReason___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = @"<unknown>";
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  v4 = @"reason";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)checkAndReportCALogStates
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AE4F7000, a2, OS_LOG_TYPE_DEBUG, "Will discard keys: %@", &v2, 0xCu);
}

+ (BOOL)processCALogEvent:(id)event eventPayload:(id)payload into:(id *)into
{
  v101 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  payloadCopy = payload;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEBUG))
  {
    +[OSAStateMonitor processCALogEvent:eventPayload:into:];
  }

  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSinceDate:eventCopy];
  v11 = v10;

  if (v11 >= 300.0)
  {
    v12 = [payloadCopy objectForKeyedSubscript:@"eventName"];
    if (!*into)
    {
      *into = objc_opt_new();
    }

    if ([v12 isEqualToString:@"ca-2hr-heartbeat"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"startTimestamp"];
      allKeys2 = [*into objectForKeyedSubscript:allKeys];
      if (!allKeys2)
      {
        v15 = [MEMORY[0x1E695E0F8] mutableCopy];
        [*into setObject:v15 forKeyedSubscript:allKeys];

        allKeys2 = [*into objectForKeyedSubscript:allKeys];
      }

      v16 = [allKeys2 objectForKeyedSubscript:@"twoHrHeartbeat"];
      unsignedIntValue = [v16 unsignedIntValue];

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntValue + 1];
      [allKeys2 setObject:v18 forKeyedSubscript:@"twoHrHeartbeat"];

      v19 = &unk_1F241EA40;
LABEL_16:
      [allKeys2 setObject:v19 forKeyedSubscript:@"lastSuccessfulLogState"];
      [*into setObject:allKeys2 forKeyedSubscript:allKeys];
LABEL_17:

      goto LABEL_18;
    }

    if ([v12 isEqualToString:@"ca-log-written-new"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"startTimestamp"];
      allKeys2 = [*into objectForKeyedSubscript:allKeys];
      if (!allKeys2)
      {
        v21 = [MEMORY[0x1E695E0F8] mutableCopy];
        [*into setObject:v21 forKeyedSubscript:allKeys];

        allKeys2 = [*into objectForKeyedSubscript:allKeys];
      }

      v22 = [payloadCopy objectForKeyedSubscript:@"totalHeartbeats"];
      [allKeys2 setObject:v22 forKeyedSubscript:@"totalHeartbeats"];

      v23 = [payloadCopy objectForKeyedSubscript:@"endTimestamp"];
      [allKeys2 setObject:v23 forKeyedSubscript:@"endTimestamp"];

      v24 = [payloadCopy objectForKeyedSubscript:@"logPath"];
      [allKeys2 setObject:v24 forKeyedSubscript:@"logPath"];

      v19 = &unk_1F241EA58;
      goto LABEL_16;
    }

    v69 = payloadCopy;
    if ([v12 isEqualToString:@"submission-started"])
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      allKeys = [*into allKeys];
      v26 = [allKeys countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (!v26)
      {
        goto LABEL_18;
      }

      v27 = v26;
      v66 = v12;
      v28 = *v91;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v91 != v28)
          {
            objc_enumerationMutation(allKeys);
          }

          v30 = [*into objectForKeyedSubscript:*(*(&v90 + 1) + 8 * i)];
          [v30 setObject:eventCopy forKeyedSubscript:@"lastSubmissionStartTimestamp"];
          [v30 setObject:&unk_1F241EA70 forKeyedSubscript:@"lastSuccessfulLogState"];
        }

        v27 = [allKeys countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v27);
      goto LABEL_29;
    }

    if ([v12 isEqualToString:@"submission-found-logs"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      allKeys2 = [*into allKeys];
      v31 = [allKeys2 countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (!v31)
      {
        goto LABEL_17;
      }

      v32 = v31;
      v64 = eventCopy;
      v67 = v12;
      v33 = *v87;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v87 != v33)
          {
            objc_enumerationMutation(allKeys2);
          }

          v35 = [*into objectForKeyedSubscript:{*(*(&v86 + 1) + 8 * j), v64}];
          v36 = [v35 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v36])
          {
            [v35 setObject:&unk_1F241EA88 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v32 = [allKeys2 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v32);
    }

    else if ([v12 isEqualToString:@"submission-logs-added-to-archive"])
    {
      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      allKeys2 = [*into allKeys];
      v37 = [allKeys2 countByEnumeratingWithState:&v82 objects:v98 count:16];
      if (!v37)
      {
        goto LABEL_17;
      }

      v38 = v37;
      v64 = eventCopy;
      v67 = v12;
      v39 = *v83;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v83 != v39)
          {
            objc_enumerationMutation(allKeys2);
          }

          v41 = [*into objectForKeyedSubscript:{*(*(&v82 + 1) + 8 * k), v64}];
          v42 = [v41 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v42])
          {
            [v41 setObject:&unk_1F241EAA0 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v38 = [allKeys2 countByEnumeratingWithState:&v82 objects:v98 count:16];
      }

      while (v38);
    }

    else
    {
      if (![v12 isEqualToString:@"submission-http-post-started"])
      {
        if ([v12 isEqualToString:@"ca-log-retired"])
        {
          v65 = eventCopy;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          allKeys = [*into allKeys];
          v49 = [allKeys countByEnumeratingWithState:&v74 objects:v96 count:16];
          if (!v49)
          {
            goto LABEL_18;
          }

          v50 = v49;
          v66 = v12;
          v68 = *v75;
          do
          {
            for (m = 0; m != v50; ++m)
            {
              if (*v75 != v68)
              {
                objc_enumerationMutation(allKeys);
              }

              v52 = [*into objectForKeyedSubscript:*(*(&v74 + 1) + 8 * m)];
              v53 = [v52 objectForKeyedSubscript:@"logPath"];
              v54 = [payloadCopy objectForKeyedSubscript:@"logPath"];
              v55 = [v53 isEqualToString:v54];

              if (v55)
              {
                [v52 setObject:&unk_1F241EAD0 forKeyedSubscript:@"lastSuccessfulLogState"];
                v56 = [v69 objectForKeyedSubscript:@"retiredReason"];
                [v52 setObject:v56 forKeyedSubscript:@"retiredReason"];
              }

              payloadCopy = v69;
            }

            v50 = [allKeys countByEnumeratingWithState:&v74 objects:v96 count:16];
          }

          while (v50);
          eventCopy = v65;
          goto LABEL_30;
        }

        if (![v12 hasPrefix:@"Error"])
        {
          goto LABEL_19;
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        allKeys = [*into allKeys];
        v57 = [allKeys countByEnumeratingWithState:&v70 objects:v95 count:16];
        if (!v57)
        {
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        v58 = v57;
        v66 = v12;
        v59 = *v71;
        do
        {
          for (n = 0; n != v58; ++n)
          {
            if (*v71 != v59)
            {
              objc_enumerationMutation(allKeys);
            }

            v61 = [*into objectForKeyedSubscript:*(*(&v70 + 1) + 8 * n)];
            [v61 setObject:v12 forKeyedSubscript:@"lastSubmissionError"];
            v62 = [v69 objectForKeyedSubscript:@"errorDesc"];

            if (v62)
            {
              v63 = [v69 objectForKeyedSubscript:@"errorDesc"];
              [v61 setObject:v63 forKeyedSubscript:@"errorDesc"];
            }
          }

          v58 = [allKeys countByEnumeratingWithState:&v70 objects:v95 count:16];
        }

        while (v58);
LABEL_29:
        payloadCopy = v69;
LABEL_30:
        v12 = v66;
        goto LABEL_18;
      }

      allKeys = [payloadCopy objectForKeyedSubscript:@"foundLogs"];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      allKeys2 = [*into allKeys];
      v43 = [allKeys2 countByEnumeratingWithState:&v78 objects:v97 count:16];
      if (!v43)
      {
        goto LABEL_17;
      }

      v44 = v43;
      v64 = eventCopy;
      v67 = v12;
      v45 = *v79;
      do
      {
        for (ii = 0; ii != v44; ++ii)
        {
          if (*v79 != v45)
          {
            objc_enumerationMutation(allKeys2);
          }

          v47 = [*into objectForKeyedSubscript:{*(*(&v78 + 1) + 8 * ii), v64}];
          v48 = [v47 objectForKeyedSubscript:@"logPath"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [allKeys containsObject:v48])
          {
            [v47 setObject:&unk_1F241EAB8 forKeyedSubscript:@"lastSuccessfulLogState"];
          }
        }

        v44 = [allKeys2 countByEnumeratingWithState:&v78 objects:v97 count:16];
      }

      while (v44);
    }

    eventCopy = v64;
    v12 = v67;
    payloadCopy = v69;
    goto LABEL_17;
  }

  v20 = OSAStateMonitorLogDomain;
  if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, v20, OS_LOG_TYPE_DEFAULT, "Event within submission window. Ignoring, will pick up next run.", buf, 2u);
  }

LABEL_20:

  return v11 >= 300.0;
}

+ (id)evaluateCALogStates:(id)states
{
  v85 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v68 = [MEMORY[0x1E695E0F0] mutableCopy];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v70 = statesCopy;
  obj = [statesCopy allKeys];
  v71 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v71)
  {
    v69 = *v77;
    do
    {
      v4 = 0;
      do
      {
        if (*v77 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v72 = v4;
        v5 = *(*(&v76 + 1) + 8 * v4);
        v6 = [v70 objectForKeyedSubscript:v5];
        v7 = [v6 objectForKeyedSubscript:@"totalHeartbeats"];
        unsignedIntValue = [v7 unsignedIntValue];
        v9 = [v6 objectForKeyedSubscript:@"twoHrHeartbeat"];
        unsignedIntValue2 = [v9 unsignedIntValue];

        v73 = v5;
        if (unsignedIntValue != unsignedIntValue2)
        {
          v11 = OSAStateMonitorLogDomain;
          if (os_log_type_enabled(OSAStateMonitorLogDomain, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE4F7000, v11, OS_LOG_TYPE_DEFAULT, "Identified heartbeat mismatch. Reporting to RTC now.", buf, 2u);
          }

          v12 = [v6 objectForKeyedSubscript:@"endTimestamp"];
          v82[0] = @"crk";
          v13 = +[OSASystemConfiguration sharedInstance];
          crashReporterKey = [v13 crashReporterKey];
          v83[0] = crashReporterKey;
          v83[1] = v5;
          v82[1] = @"CA_startTimestamp";
          v82[2] = @"CA_endTimestamp";
          v15 = &stru_1F2411100;
          if (v12)
          {
            v15 = v12;
          }

          v83[2] = v15;
          v82[3] = @"expectedCAHeartbeats";
          v16 = [v6 objectForKeyedSubscript:@"twoHrHeartbeat"];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = &unk_1F241EAE8;
          }

          v83[3] = v18;
          v82[4] = @"actualCAHeartbeats";
          v19 = [v6 objectForKeyedSubscript:@"totalHeartbeats"];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = &unk_1F241EAE8;
          }

          v83[4] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:5];

          rtcsc_send(2008, 2008, v22);
        }

        v23 = MEMORY[0x1E695DEC8];
        v24 = [v6 objectForKeyedSubscript:@"lastSubmissionError"];
        v25 = [v6 objectForKeyedSubscript:@"errorDesc"];
        v26 = [v23 arrayWithObjects:{v24, v25, 0}];
        v27 = [v26 componentsJoinedByString:@":"];

        v74 = [v6 objectForKeyedSubscript:@"endTimestamp"];
        v28 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        LODWORD(v25) = [v28 isEqualToNumber:&unk_1F241EA70];

        if (v25)
        {
          v29 = [v6 objectForKeyedSubscript:@"logPath"];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v31 = [defaultManager fileExistsAtPath:v29];

          v32 = @"ErrorFileNotFound";
          if ((v31 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isReadableFileAtPath:", v29), v33, v32 = @"ErrorFileNotReadable", v34))
          {
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v32, v27, 0}];
            v36 = [v35 componentsJoinedByString:@":"];

            v27 = v36;
          }
        }

        v37 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v38 = [v37 isEqualToNumber:&unk_1F241EA88];

        if (v38)
        {
          v39 = [v6 objectForKeyedSubscript:@"logPath"];
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v41 = [defaultManager2 fileExistsAtPath:v39];

          v42 = @"ErrorFileNotFound";
          if ((v41 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "isReadableFileAtPath:", v39), v43, v42 = @"ErrorFileNotReadable", v44))
          {

            v27 = v42;
          }
        }

        v45 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v46 = [v45 isEqualToNumber:&unk_1F241EAD0];

        if (v46)
        {
          v47 = [v6 objectForKeyedSubscript:@"retiredReason"];
          v48 = [v47 isEqualToString:@"submitted"];

          if ((v48 & 1) == 0)
          {
            v49 = [v6 objectForKeyedSubscript:@"retiredReason"];

            v27 = v49;
          }
        }

        v80[0] = @"crk";
        v50 = +[OSASystemConfiguration sharedInstance];
        crashReporterKey2 = [v50 crashReporterKey];
        v81[0] = crashReporterKey2;
        v81[1] = v5;
        v80[1] = @"CA_startTimestamp";
        v80[2] = @"CA_endTimestamp";
        if (v74)
        {
          v52 = v74;
        }

        else
        {
          v52 = &stru_1F2411100;
        }

        v81[2] = v52;
        v80[3] = @"submissionStartTimestamp";
        v53 = [v6 objectForKeyedSubscript:@"lastSubmissionStartTimestamp"];
        v54 = v53;
        v55 = @"<unknown>";
        if (v53)
        {
          v55 = v53;
        }

        v81[3] = v55;
        v80[4] = @"lastSuccessfulState";
        v56 = [v6 objectForKeyedSubscript:@"lastSuccessfulLogState"];
        v57 = +[OSAStateMonitor CALogStateToString:](OSAStateMonitor, "CALogStateToString:", [v56 intValue]);
        v58 = v57;
        v80[5] = @"errorMessage";
        if (v27)
        {
          v59 = v27;
        }

        else
        {
          v59 = &stru_1F2411100;
        }

        v81[4] = v57;
        v81[5] = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:6];

        rtcsc_send(2007, 2007, v60);
        v61 = objc_opt_new();
        [v61 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
        v62 = [v61 dateFromString:v73];
        if (!v62 || ([MEMORY[0x1E695DF00] now], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "timeIntervalSinceDate:", v62), v65 = v64, v63, (v65 > 259200.0) | v46 & 1))
        {
          [v68 addObject:v73];
        }

        v4 = v72 + 1;
      }

      while (v71 != v72 + 1);
      v71 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v71);
  }

  return v68;
}

+ (id)CALogStateToString:(int64_t)string
{
  if ((string - 2) > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7A27BA8[string - 2];
  }
}

+ (id)dateForEvent:(id)event
{
  v10 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = [OSAStateMonitor keyForEvent:eventCopy];
  v5 = [OSADefaults objectForKey:v4];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = eventCopy;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Initializing event date for %{public}@", &v8, 0xCu);
    }

    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [OSAStateMonitor keyForEvent:eventCopy];
    [OSADefaults setObject:v5 forKey:v6];
  }

  return v5;
}

+ (void)recordEvent:with:.cold.1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s %@", v0, 0x16u);
}

+ (void)postFailureWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AE4F7000, a2, OS_LOG_TYPE_ERROR, "State monitor observed a failure: %{public}@", &v2, 0xCu);
}

+ (void)processCALogEvent:eventPayload:into:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1AE4F7000, v0, OS_LOG_TYPE_DEBUG, "%{public}s %@", v1, 0x16u);
}

@end