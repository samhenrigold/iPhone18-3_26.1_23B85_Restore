@interface HAHistoricalAnalyzerService
- (BOOL)shouldSendCoreAnalytics;
- (void)appendDays:(id)days;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)beginSession;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)finishSessionWithReply:(id)reply;
@end

@implementation HAHistoricalAnalyzerService

- (BOOL)shouldSendCoreAnalytics
{
  v2 = +[MCProfileConnection sharedConnection];
  isHealthDataSubmissionAllowed = [v2 isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 valueForKeyPath:@"HADateOfLastHistoricalAnalyzerCAEvent"];

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

- (void)beginSession
{
  v3 = sub_100001974(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = "[HAHistoricalAnalyzerService beginSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v13, 0xCu);
  }

  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
  {
    v6 = sub_100001974(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000019FC();
    }
  }

  v7 = objc_opt_new();
  [(HAHistoricalAnalyzerService *)self setAnalyzer:v7];

  analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer2)
  {
    v10 = objc_opt_new();
    [(HAHistoricalAnalyzerService *)self setDiagnosticLogger:v10];

    v12 = sub_100001974(v11);
    self->_signpostID = os_signpost_id_make_with_pointer(v12, self);
  }

  else
  {
    v12 = sub_100001974(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100001A30();
    }
  }
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
  {
    analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
    [analyzer2 beginPhase:phaseCopy onJulianDay:v4];

    diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    [diagnosticLogger beginPhase:phaseCopy onJulianDay:v4];
  }

  else
  {
    v10 = sub_100001974(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }
  }
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v4 = *&day;
  phaseCopy = phase;
  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
  {
    analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
    [analyzer2 endPhase:phaseCopy onJulianDay:v4];

    diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    [diagnosticLogger endPhase:phaseCopy onJulianDay:v4];
  }

  else
  {
    v10 = sub_100001974(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }
  }
}

- (void)appendDays:(id)days
{
  daysCopy = days;
  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];

  if (analyzer)
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
          analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
          [analyzer2 appendDay:v12];

          diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
          [diagnosticLogger appendDay:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100001974(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }
  }
}

- (void)finishSessionWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100001974(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v41 = "[HAHistoricalAnalyzerService finishSessionWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  analyzer = [(HAHistoricalAnalyzerService *)self analyzer];
  v7 = analyzer == 0;

  if (v7)
  {
    v24 = sub_100001974(v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_100001A64();
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    diagnosticLogger = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    [diagnosticLogger finalizeHistoricalAnalyzerInput];

    v11 = sub_100001974(v10);
    v12 = v11;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HistoricalAnalyzerAnalysisDuration", "", buf, 2u);
    }

    analyzer2 = [(HAHistoricalAnalyzerService *)self analyzer];
    analyze = [analyzer2 analyze];
    v17 = v16;

    v18 = analyze;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:buf count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v37;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(*(&v36 + 1) + 8 * i) predictionPrimarySource] == 2)
          {
            ++v20;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v36 objects:buf count:16];
      }

      while (v19);
      v23 = v20;
    }

    else
    {
      v23 = 0.0;
    }

    v26 = sub_100001974(v25);
    v27 = v26;
    v28 = self->_signpostID;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 134217984;
      v41 = *&v23;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v28, "HistoricalAnalyzerAnalysisDuration", "primarySourceWristTemperatureCount=%{signpost.telemetry:number1}lf enableTelemetry=YES ", buf, 0xCu);
    }

    diagnosticLogger2 = [(HAHistoricalAnalyzerService *)self diagnosticLogger];
    v30 = v18;
    v31 = v17;
    if (diagnosticLogger2)
    {
      [diagnosticLogger2 logHistoricalAnalyzerOutput:{analyze, v17}];
    }

    else
    {
    }

    shouldSendCoreAnalytics = [(HAHistoricalAnalyzerService *)self shouldSendCoreAnalytics];
    if (v17)
    {
      v33 = shouldSendCoreAnalytics;
    }

    else
    {
      v33 = 0;
    }

    if (v33 == 1)
    {
      v34 = +[NSUserDefaults standardUserDefaults];
      v35 = +[NSDate date];
      [v34 setValue:v35 forKeyPath:@"HADateOfLastHistoricalAnalyzerCAEvent"];

      AnalyticsSendEvent();
    }

    [(HAHistoricalAnalyzerService *)self setAnalyzer:0];
    [(HAHistoricalAnalyzerService *)self setDiagnosticLogger:0];
    (replyCopy)[2](replyCopy, v30);
  }
}

@end