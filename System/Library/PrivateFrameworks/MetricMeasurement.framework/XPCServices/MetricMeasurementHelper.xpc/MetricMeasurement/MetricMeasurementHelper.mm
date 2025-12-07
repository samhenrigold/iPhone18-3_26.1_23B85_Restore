@interface MetricMeasurementHelper
- (MetricMeasurementHelper)init;
- (void)_quiesceBeforeIterationHelper:(double)helper timeout:(double)timeout response:(id)response;
- (void)_sampleWithProxyMetric:(id)metric timeout:(double)timeout response:(id)response;
- (void)_startFunctionCoverageCollectionHelper:(id)helper response:(id)response;
- (void)_startPerformanceTraceHelper:(id)helper response:(id)response;
- (void)_stopFunctionCoverageCollectionHelper:(id)helper;
- (void)_stopPerformanceTraceHelper:(id)helper;
- (void)_terminateProcessesBeforeIterationHelper:(id)helper response:(id)response;
- (void)_uncacheBeforeIterationHelper:(id)helper response:(id)response;
- (void)_wakeWithPhrase:(id)phrase response:(id)response;
- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error;
- (void)performanceTraceDidStart:(id)start;
- (void)performanceTraceDidStop:(id)stop;
@end

@implementation MetricMeasurementHelper

- (MetricMeasurementHelper)init
{
  v10.receiver = self;
  v10.super_class = MetricMeasurementHelper;
  v2 = [(MetricMeasurementHelper *)&v10 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    start_trace_sem = v2->_start_trace_sem;
    v2->_start_trace_sem = v3;

    v5 = dispatch_semaphore_create(0);
    completed_trace_sem = v2->_completed_trace_sem;
    v2->_completed_trace_sem = v5;

    v7 = dispatch_semaphore_create(0);
    stop_trace_sem = v2->_stop_trace_sem;
    v2->_stop_trace_sem = v7;
  }

  return v2;
}

- (void)performanceTraceDidStart:(id)start
{
  startCopy = start;
  if (startCopy)
  {
    objc_storeStrong(&performanceTraceDidStartError, start);
  }

  dispatch_semaphore_signal(self->_start_trace_sem);
}

- (void)performanceTraceDidStop:(id)stop
{
  stopCopy = stop;
  if (stopCopy)
  {
    objc_storeStrong(&performanceTraceDidStopError, stop);
  }

  dispatch_semaphore_signal(self->_stop_trace_sem);
}

- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error
{
  completeCopy = complete;
  tokenCopy = token;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&performanceTraceDidCompleteError, error);
  }

  objc_storeStrong(&self->_sandboxExtensionToken, token);
  objc_storeStrong(&self->_performanceTraceURL, complete);
  v14 = _MXMGetLog(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    performanceTraceURL = self->_performanceTraceURL;
    v16 = 138412290;
    v17 = performanceTraceURL;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Peformance trace URL: %@", &v16, 0xCu);
  }

  dispatch_semaphore_signal(self->_completed_trace_sem);
}

- (void)_wakeWithPhrase:(id)phrase response:(id)response
{
  phraseCopy = phrase;
  responseCopy = response;
  if ([phraseCopy isEqualToString:@"Copyright © 2019 Apple"])
  {
    v6 = [phraseCopy stringByAppendingString:@"ACK"];
    responseCopy[2](responseCopy, v6);
  }
}

- (void)_sampleWithProxyMetric:(id)metric timeout:(double)timeout response:(id)response
{
  metricCopy = metric;
  responseCopy = response;
  v10 = _MXMGetLog(responseCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    metric = [metricCopy metric];
    *buf = 138412290;
    v22 = metric;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempting to sample probe using underlying metric: %@.", buf, 0xCu);
  }

  v20 = 0;
  _remoteProbe = [metricCopy _remoteProbe];
  v13 = [_remoteProbe sampleWithTimeout:&v20 stopReason:timeout];
  v15 = _MXMGetLog(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    samples = [v13 samples];
    *buf = 138412290;
    v22 = samples;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Captured Samples: %@. Now attempting to reply with this data.", buf, 0xCu);
  }

  responseCopy[2](responseCopy, v13, v20, 0);
  v19 = _MXMGetLog(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Replied with samples.", buf, 2u);
  }
}

- (void)_startPerformanceTraceHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v9 = _MXMGetLog(responseCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = helperCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Setting the following configurations for performance trace: %@", buf, 0xCu);
  }

  if (helperCopy)
  {
    [PTTraceConfig configWithDictionary:helperCopy];
  }

  else
  {
    [PTTraceConfig configWithTemplate:1];
  }
  v10 = ;
  [v10 setSkipNotification:1];
  v11 = +[NSXPCConnection currentConnection];
  [v10 setOwnerPID:{objc_msgSend(v11, "processIdentifier")}];

  v12 = [PTTraceSession initWithConfig:v10];
  traceSession = self->_traceSession;
  self->_traceSession = v12;

  [(PTTraceSession *)self->_traceSession setDelegate:self];
  [(PTTraceSession *)self->_traceSession startPerformanceTrace];
  start_trace_sem = self->_start_trace_sem;
  v15 = dispatch_time(0, 20000000000);
  if (dispatch_semaphore_wait(start_trace_sem, v15))
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Timed out while trying to start the performance trace.";
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v16];
  }

  else
  {
    v17 = 0;
  }

  responseCopy[2](responseCopy, v17, performanceTraceDidStartError, 0);
}

- (void)_stopPerformanceTraceHelper:(id)helper
{
  helperCopy = helper;
  traceSession = self->_traceSession;
  if (!traceSession)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = @"No performance trace session to stop.";
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v13];
    v11 = 0;
    goto LABEL_7;
  }

  [(PTTraceSession *)traceSession stopPerformanceTrace];
  stop_trace_sem = self->_stop_trace_sem;
  v7 = dispatch_time(0, 20000000000);
  v8 = dispatch_semaphore_wait(stop_trace_sem, v7);
  completed_trace_sem = self->_completed_trace_sem;
  v10 = dispatch_time(0, 300000000000);
  v11 = dispatch_semaphore_wait(completed_trace_sem, v10);
  if (v8)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = @"Stopping performance trace timed out.";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v12];
  }

  if (v11)
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = @"Did not receive performance trace completed signal.";
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v13];
LABEL_7:
  }

  helperCopy[2](helperCopy, self->_performanceTraceURL, self->_sandboxExtensionToken, v8, v11, performanceTraceDidStopError, performanceTraceDidCompleteError);
}

- (void)_startFunctionCoverageCollectionHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v9 = _MXMGetLog(responseCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = helperCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Setting the following configurations for function coverage: %@", buf, 0xCu);
  }

  v10 = [helperCopy valueForKey:@"targetedProcesses"];
  v11 = [helperCopy valueForKey:@"isLongRunningTest"];
  v12 = v11;
  if (!v11)
  {
    v11 = &__kCFBooleanTrue;
  }

  bOOLValue = [v11 BOOLValue];

  v14 = [helperCopy valueForKey:@"areTargetedProcessesRunning"];
  v15 = v14;
  if (!v14)
  {
    v14 = &__kCFBooleanFalse;
  }

  bOOLValue2 = [v14 BOOLValue];

  v17 = objc_alloc_init(FunctionCoverageCollection);
  functionCoverage = self->_functionCoverage;
  self->_functionCoverage = v17;

  v21 = _MXMGetLog(v19, v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (bOOLValue)
  {
    if (v22)
    {
      v23 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Invoking lossy function coverage collection with targeted processes: %@", buf, 0xCu);
    }

    v24 = self->_functionCoverage;
    v32 = 0;
    v25 = &v32;
    [(FunctionCoverageCollection *)v24 startCollectingLossy:&v32 targetedProcesses:v10];
  }

  else
  {
    if (v22)
    {
      v26 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v34 = v26;
      v35 = 1024;
      v36 = bOOLValue2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Invoking lossless function coverage collection with targeted processes: %@; targetedProcessesAreRunning: %d", buf, 0x12u);
    }

    v27 = self->_functionCoverage;
    v31 = 0;
    v25 = &v31;
    [(FunctionCoverageCollection *)v27 startCollectingLossless:&v31 targetedProcesses:v10 targetedProcessesAreRunning:0];
  }

  v28 = *v25;
  v30 = _MXMGetLog(v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Finished starting function coverage collection", buf, 2u);
  }

  responseCopy[2](responseCopy, v28);
}

- (void)_stopFunctionCoverageCollectionHelper:(id)helper
{
  if (self->_functionCoverage)
  {
    helperCopy = helper;
    v6 = +[NSDate date];
    v7 = objc_alloc_init(NSDateFormatter);
    [v7 setDateStyle:1];
    [v7 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v8 = [v7 stringFromDate:v6];
    v9 = [NSString stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/XCTest-%@-Function-Coverage.json", v8];
    v10 = [NSURL fileURLWithPath:v9];
    functionCoverage = self->_functionCoverage;
    v14 = 0;
    [(FunctionCoverageCollection *)functionCoverage stopCollecting:&v14 outputJsonFilePath:v9];
    v12 = v14;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"No function coverage session to stop.";
    helperCopy2 = helper;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v6];
    v10 = 0;
    v9 = 0;
  }

  (*(helper + 2))(helper, v10, v12);
}

- (void)_quiesceBeforeIterationHelper:(double)helper timeout:(double)timeout response:(id)response
{
  responseCopy = response;
  v8 = objc_alloc_init(MXMTargetQueue);
  [(MXMTargetQueue *)v8 setTarget:helper];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (timeout > 0.0)
  {
    v9 = [(MXMTargetQueue *)v8 size];
    if (v9 >= timeout)
    {
      timeout = [(MXMTargetQueue *)v8 size];
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003110;
  v25 = sub_100003120;
  v26 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100003128;
  v15 = &unk_10000C4E8;
  v17 = &v21;
  v19 = __tp;
  v10 = v8;
  v16 = v10;
  v18 = &v27;
  timeoutCopy = timeout;
  v11 = [MXMSysmonRequest requestWithType:1 handler:&v12];
  [v11 addAttributes:{51, 13, 0, v12, v13, v14, v15}];
  [v11 setInterval:1.0];
  [v11 execute];
  [v11 wait];
  responseCopy[2](responseCopy, *(v28 + 24), v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

- (void)_uncacheBeforeIterationHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v6 = objc_alloc_init(NSMutableArray);
  if (helperCopy && [helperCopy count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v42 = helperCopy;
    v7 = helperCopy;
    v8 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v51;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v50 + 1) + 8 * v12);
          v49 = v13;
          v15 = [MXMUncacheConfiguration configWithDictionary:v14 error:&v49];
          v10 = v49;

          if (v10)
          {
            v18 = 1;
          }

          else
          {
            v18 = v15 == 0;
          }

          if (v18)
          {
            v19 = _MXMGetLog(v16, v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create MXMUncacheConfiguration from dictionaries.", buf, 2u);
            }

            responseCopy[2](responseCopy, 0, v10);
          }

          else
          {
            [v6 addObject:v15];
          }

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    helperCopy = v42;
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v57 = NSLocalizedDescriptionKey;
    v58 = @"Array of uncache configurations was nil or empty.";
    v20 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v10 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v20];

    responseCopy[2](responseCopy, 0, v10);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  if ([v6 count])
  {
    v43 = helperCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = v22;
    v24 = *v46;
    while (1)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        filepath = [v26 filepath];
        if (!filepath || (v29 = filepath, [v26 filepath], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "length"), v30, v29, !v31))
        {
          v38 = _MXMGetLog(filepath, v28);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            filepath2 = [v26 filepath];
            *buf = 138412290;
            v55 = filepath2;
            v40 = v38;
            v41 = "Invalid filepath: %@";
LABEL_38:
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
          }

LABEL_39:

          continue;
        }

        v32 = _MXMGetLog(filepath, v28);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          filepath3 = [v26 filepath];
          *buf = 138412290;
          v55 = filepath3;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Attempting to uncache filepath: %@", buf, 0xCu);
        }

        filepath4 = [v26 filepath];
        v35 = _uncacheFilepath(filepath4);

        if (v35)
        {
          v38 = _MXMGetLog(v36, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            filepath2 = [v26 filepath];
            *buf = 138412290;
            v55 = filepath2;
            v40 = v38;
            v41 = "Failed to uncache filepath: %@";
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (!v23)
      {
LABEL_42:

        helperCopy = v43;
        break;
      }
    }
  }

LABEL_43:
  responseCopy[2](responseCopy, 1, v10);
}

- (void)_terminateProcessesBeforeIterationHelper:(id)helper response:(id)response
{
  helperCopy = helper;
  responseCopy = response;
  v6 = objc_alloc_init(NSMutableArray);
  if (helperCopy && [helperCopy count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v42 = helperCopy;
    v7 = helperCopy;
    v8 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v51;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v50 + 1) + 8 * v12);
          v49 = v13;
          v15 = [MXMTerminateProcessConfiguration configWithDictionary:v14 error:&v49];
          v10 = v49;

          if (v10)
          {
            v18 = 1;
          }

          else
          {
            v18 = v15 == 0;
          }

          if (v18)
          {
            v19 = _MXMGetLog(v16, v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create MXMTerminateProcessConfiguration from dictionaries.", buf, 2u);
            }

            responseCopy[2](responseCopy, 0, v10);
          }

          else
          {
            [v6 addObject:v15];
          }

          v12 = v12 + 1;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    helperCopy = v42;
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v57 = NSLocalizedDescriptionKey;
    v58 = @"Array of terminate process configurations was nil or empty.";
    v20 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v10 = [NSError errorWithDomain:@"InstrumentErrorDomain" code:0 userInfo:v20];

    responseCopy[2](responseCopy, 0, v10);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  if ([v6 count])
  {
    v43 = helperCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = v22;
    v24 = *v46;
    while (1)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        processName = [v26 processName];
        if (!processName || (v29 = processName, [v26 processName], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "length"), v30, v29, !v31))
        {
          v38 = _MXMGetLog(processName, v28);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            processName2 = [v26 processName];
            *buf = 138412290;
            v55 = processName2;
            v40 = v38;
            v41 = "Invalid process name: %@";
LABEL_38:
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
          }

LABEL_39:

          continue;
        }

        v32 = _MXMGetLog(processName, v28);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          processName3 = [v26 processName];
          *buf = 138412290;
          v55 = processName3;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Attempting to terminate process with name: %@", buf, 0xCu);
        }

        processName4 = [v26 processName];
        v35 = _terminateProcess(processName4);

        if ((v35 & 1) == 0)
        {
          v38 = _MXMGetLog(v36, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            processName2 = [v26 processName];
            *buf = 138412290;
            v55 = processName2;
            v40 = v38;
            v41 = "Failed to terminate process name: %@";
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (!v23)
      {
LABEL_42:

        helperCopy = v43;
        break;
      }
    }
  }

LABEL_43:
  responseCopy[2](responseCopy, 1, v10);
}

@end