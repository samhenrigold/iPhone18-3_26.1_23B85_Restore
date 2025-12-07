@interface HADayStreamProcessorService
- (BOOL)shouldSendCoreAnalytics;
- (void)appendDays:(id)days;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)beginSessionWithConfig:(id)config;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)finishSessionWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated withReply:(id)reply;
@end

@implementation HADayStreamProcessorService

- (BOOL)shouldSendCoreAnalytics
{
  v2 = +[MCProfileConnection sharedConnection];
  isHealthDataSubmissionAllowed = [v2 isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKeyPath:@"HADateOfLastDayStreamProcessorCAEvent"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v5 timeIntervalSinceNow];
      LOBYTE(isHealthDataSubmissionAllowed) = v6 < -84600.0;
    }

    else
    {
      LOBYTE(isHealthDataSubmissionAllowed) = 1;
    }
  }

  return isHealthDataSubmissionAllowed;
}

- (void)beginSessionWithConfig:(id)config
{
  configCopy = config;
  v5 = sub_100001A74(configCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    v16 = "[HADayStreamProcessorService beginSessionWithConfig:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v15, 0xCu);
  }

  processor = [(HADayStreamProcessorService *)self processor];

  if (processor)
  {
    v8 = sub_100001A74(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100001AFC();
    }
  }

  v9 = [[MAIDayStreamProcessor alloc] initWithConfig:configCopy];
  [(HADayStreamProcessorService *)self setProcessor:v9];

  processor2 = [(HADayStreamProcessorService *)self processor];

  if (processor2)
  {
    v12 = [[MAIDayStreamDiagnosticLogger alloc] initWithConfig:configCopy];
    [(HADayStreamProcessorService *)self setDiagnosticLogger:v12];

    v14 = sub_100001A74(v13);
    self->_signpostID = os_signpost_id_make_with_pointer(v14, self);
  }

  else
  {
    v14 = sub_100001A74(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100001B30();
    }
  }
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  processor = [(HADayStreamProcessorService *)self processor];

  if (processor)
  {
    processor2 = [(HADayStreamProcessorService *)self processor];
    [processor2 beginPhase:phaseCopy onJulianDay:v4];

    diagnosticLogger = [(HADayStreamProcessorService *)self diagnosticLogger];
    [diagnosticLogger beginPhase:phaseCopy onJulianDay:v4];
  }

  else
  {
    v10 = sub_100001A74(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100001B64();
    }
  }
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  processor = [(HADayStreamProcessorService *)self processor];

  if (processor)
  {
    processor2 = [(HADayStreamProcessorService *)self processor];
    [processor2 endPhase:phaseCopy onJulianDay:v4];

    diagnosticLogger = [(HADayStreamProcessorService *)self diagnosticLogger];
    [diagnosticLogger endPhase:phaseCopy onJulianDay:v4];
  }

  else
  {
    v10 = sub_100001A74(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100001B64();
    }
  }
}

- (void)appendDays:(id)days
{
  daysCopy = days;
  processor = [(HADayStreamProcessorService *)self processor];

  if (processor)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = daysCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          processor2 = [(HADayStreamProcessorService *)self processor];
          [processor2 appendDay:v12];

          diagnosticLogger = [(HADayStreamProcessorService *)self diagnosticLogger];
          [diagnosticLogger appendDay:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100001A74(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100001B64();
    }
  }
}

- (void)finishSessionWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated withReply:(id)reply
{
  v4 = *&updated;
  replyCopy = reply;
  v7 = sub_100001A74(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[HADayStreamProcessorService finishSessionWithMostRecentMenstrualFlowJulianDayUpdated:withReply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  processor = [(HADayStreamProcessorService *)self processor];
  v9 = processor == 0;

  if (!v9)
  {
    diagnosticLogger = [(HADayStreamProcessorService *)self diagnosticLogger];
    [diagnosticLogger finalizeDayStreamInputWithDay:v4];

    v13 = sub_100001A74(v12);
    v14 = v13;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "DayStreamProcessorAnalysisDuration", &unk_100002F15, &buf, 2u);
    }

    buf = 0uLL;
    v48 = 0;
    processor2 = [(HADayStreamProcessorService *)self processor];
    v17 = processor2;
    if (processor2)
    {
      objc_msgSend_analyzeWithMostRecentMenstrualFlowJulianDayUpdated_(processor2);
    }

    else
    {
      buf = 0uLL;
      v48 = 0;
    }

    menstruationPredictions = [buf menstruationPredictions];
    v20 = -1.0;
    if (![menstruationPredictions count])
    {
      goto LABEL_19;
    }

    firstObject = [menstruationPredictions firstObject];
    isOngoingMenstruation = [firstObject isOngoingMenstruation];

    if (isOngoingMenstruation)
    {
      if ([menstruationPredictions count] < 2)
      {
LABEL_19:

        fertilityPredictions = [buf fertilityPredictions];
        if ([fertilityPredictions count])
        {
          fertilityPredictions2 = [buf fertilityPredictions];
          firstObject2 = [fertilityPredictions2 firstObject];
          predictionPrimarySource = [firstObject2 predictionPrimarySource];

          v30 = predictionPrimarySource;
        }

        else
        {
          v30 = -1.0;
        }

        v32 = sub_100001A74(v31);
        v33 = v32;
        v34 = self->_signpostID;
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *v43 = 134218240;
          v44 = v20;
          v45 = 2048;
          v46 = v30;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v34, "DayStreamProcessorAnalysisDuration", "menstrualPredictionFirstPrimarySource=%{signpost.telemetry:number1}f fertilityPredictionFirstPrimarySource=%{signpost.telemetry:number2}f enableTelemetry=YES ", v43, 0x16u);
        }

        diagnosticLogger2 = [(HADayStreamProcessorService *)self diagnosticLogger];
        v36 = buf;
        v42[0] = v36;
        v37 = *(&buf + 1);
        v42[1] = v37;
        v38 = v48;
        v42[2] = v38;
        if (diagnosticLogger2)
        {
          [diagnosticLogger2 logDayStreamProcessorOutput:v42];
        }

        else
        {
          v39 = v38;
        }

        if ([(HADayStreamProcessorService *)self shouldSendCoreAnalytics])
        {
          v40 = +[NSUserDefaults standardUserDefaults];
          v41 = +[NSDate date];
          [v40 setValue:v41 forKeyPath:@"HADateOfLastDayStreamProcessorCAEvent"];

          if (*(&buf + 1))
          {
            AnalyticsSendEvent();
          }

          if (v48)
          {
            AnalyticsSendEvent();
          }
        }

        [(HADayStreamProcessorService *)self setProcessor:0];
        [(HADayStreamProcessorService *)self setDiagnosticLogger:0];
        replyCopy[2](replyCopy, buf);

        goto LABEL_34;
      }

      firstObject3 = [menstruationPredictions objectAtIndexedSubscript:1];
    }

    else
    {
      firstObject3 = [menstruationPredictions firstObject];
    }

    v24 = firstObject3;
    predictionPrimarySource2 = [firstObject3 predictionPrimarySource];

    v20 = predictionPrimarySource2;
    goto LABEL_19;
  }

  v18 = sub_100001A74(v10);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_100001B64();
  }

  replyCopy[2](replyCopy, 0);
LABEL_34:
}

@end