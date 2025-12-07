@interface PPSSignpostTimeSeriesTask
+ (id)_signpostAnimiationIntervalData:(id)data;
+ (id)_signpostIntervalData:(id)data;
+ (id)_workflowEventData:(id)data;
+ (id)_workflowEventTrackerData:(id)data;
+ (id)_workflowIncompleteIntervalData:(id)data;
+ (id)_workflowIntervalData:(id)data;
+ (id)_workflowSignpostTrackerData:(id)data;
- (BOOL)perform:(BOOL *)perform withStopDate:(id *)date;
- (PPSSignpostTimeSeriesTask)initWithRequest:(id)request;
- (id)_compositeAllowlist:(id)allowlist;
- (id)_compressData:(id)data;
- (id)_defaultAllowlist;
- (id)_instrumentationAllowlist;
- (id)_workflowAllowlist;
- (void)_flushTimeSeries;
@end

@implementation PPSSignpostTimeSeriesTask

- (PPSSignpostTimeSeriesTask)initWithRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v26.receiver = self;
    v26.super_class = PPSSignpostTimeSeriesTask;
    v6 = [(PPSSignpostTimeSeriesTask *)&v26 init];
    v7 = v6;
    if (v6)
    {
      v6->_allowGlitches = 1;
      _defaultAllowlist = [(PPSSignpostTimeSeriesTask *)v6 _defaultAllowlist];
      v28[0] = _defaultAllowlist;
      _workflowAllowlist = [(PPSSignpostTimeSeriesTask *)v7 _workflowAllowlist];
      v28[1] = _workflowAllowlist;
      v10 = [NSArray arrayWithObjects:v28 count:2];
      v11 = [(PPSSignpostTimeSeriesTask *)v7 _compositeAllowlist:v10];
      allowlistForPersistence = v7->_allowlistForPersistence;
      v7->_allowlistForPersistence = v11;

      if (v7->_allowGlitches)
      {
        v27[0] = v7->_allowlistForPersistence;
        _instrumentationAllowlist = [(PPSSignpostTimeSeriesTask *)v7 _instrumentationAllowlist];
        v27[1] = _instrumentationAllowlist;
        v14 = [NSArray arrayWithObjects:v27 count:2];
        v15 = [(PPSSignpostTimeSeriesTask *)v7 _compositeAllowlist:v14];
        allowlistForParsing = v7->_allowlistForParsing;
        v7->_allowlistForParsing = v15;
      }

      else
      {
        v18 = v7->_allowlistForPersistence;
        _instrumentationAllowlist = v7->_allowlistForParsing;
        v7->_allowlistForParsing = v18;
      }

      v19 = +[PPSFileUtilities containerPath];
      v20 = [v19 stringByAppendingString:@"/Library/Signposts/"];
      v21 = [NSURL fileURLWithPath:v20];
      targetDirectory = v7->_targetDirectory;
      v7->_targetDirectory = v21;

      objc_storeStrong(&v7->_request, request);
      v23 = objc_opt_new();
      timeSeries = v7->_timeSeries;
      v7->_timeSeries = v23;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)perform:(BOOL *)perform withStopDate:(id *)date
{
  v38 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v38 setShouldComposeMetadataString:0];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100004448;
  v58[3] = &unk_100010A10;
  val = self;
  v58[4] = self;
  v58[5] = perform;
  performCopy = perform;
  v36 = objc_retainBlock(v58);
  [v38 setIntervalCompletionProcessingBlock:v36];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100004704;
  v57[3] = &unk_100010A38;
  v57[4] = self;
  [v38 setProcessingCompletionBlock:v57];
  v37 = +[WRWorkflow allWorkflows];
  if ([v37 count])
  {
    v6 = +[NSMutableArray array];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = v37;
    v8 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v8)
    {
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v53 + 1) + 8 * i);
          contextualTelemetryEnabled = [v11 contextualTelemetryEnabled];
          v13 = contextualTelemetryEnabled;
          v14 = PPSLogSignpostTimeSeriesTask(contextualTelemetryEnabled);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v15)
            {
              name = [v11 name];
              *buf = 138412290;
              v60 = name;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting up tracker for workflow '%@'...", buf, 0xCu);
            }

            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_100004770;
            v52[3] = &unk_100010A60;
            v52[4] = v11;
            v52[5] = val;
            v17 = objc_retainBlock(v52);
            v18 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:v11 eventCompletionCallback:v17];
            [v6 addObject:v18];
          }

          else
          {
            if (v15)
            {
              name2 = [v11 name];
              contextualTelemetryEnabled2 = [v11 contextualTelemetryEnabled];
              *buf = 138412546;
              v60 = name2;
              v61 = 1024;
              v62 = contextualTelemetryEnabled2;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping workflow '%@' (contextualTelemetryEnabled=%d)...", buf, 0x12u);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v8);
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10000510C;
    v49[3] = &unk_100010A88;
    v21 = v6;
    v50 = v21;
    v51 = performCopy;
    v22 = objc_retainBlock(v49);
    [v38 setEmitEventProcessingBlock:v22];
    [v38 setBeginEventProcessingBlock:v22];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000052C8;
    v45[3] = &unk_100010AB0;
    v45[4] = val;
    v46 = v22;
    v47 = v36;
    v48 = performCopy;
    v23 = v22;
    [v38 setIntervalCompletionProcessingBlock:v45];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100005398;
    v42[3] = &unk_100010AD8;
    v43 = v21;
    v44 = performCopy;
    v24 = v21;
    [v38 setDeviceRebootProcessingBlock:v42];
  }

  [v38 setSubsystemCategoryFilter:val->_allowlistForParsing];
  sourceURL = [(PPSSignpostServiceRequest *)val->_request sourceURL];
  path = [sourceURL path];
  startDate = [(PPSSignpostServiceRequest *)val->_request startDate];
  endDate = [(PPSSignpostServiceRequest *)val->_request endDate];
  v41 = 0;
  v29 = [v38 processLogArchiveWithPath:path startDate:startDate endDate:endDate errorOut:&v41];
  v30 = v41;

  if (v29)
  {
    if (date)
    {
      *date = [(PPSSignpostTimeSeriesTask *)val lastSignpostDate];
    }

    objc_initWeak(buf, val);
    objc_copyWeak(&v40, buf);
    AnalyticsSendEventLazy();
    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
  }

  else
  {
    v32 = PPSLogSignpostTimeSeriesTask(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100007BD0(&val->_request, v30, v32);
    }
  }

  return v29;
}

- (id)_compositeAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005804;
  v6[3] = &unk_100010B28;
  v4 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v7 = v4;
  [allowlistCopy enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)_defaultAllowlist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058A4;
  block[3] = &unk_100010B50;
  block[4] = self;
  if (qword_100015A30 != -1)
  {
    dispatch_once(&qword_100015A30, block);
  }

  return qword_100015A38;
}

- (id)_instrumentationAllowlist
{
  if (qword_100015A40 != -1)
  {
    sub_100007C9C();
  }

  v3 = qword_100015A48;

  return v3;
}

- (id)_workflowAllowlist
{
  if (qword_100015A50 != -1)
  {
    sub_100007CB0();
  }

  v3 = qword_100015A58;

  return v3;
}

+ (id)_signpostAnimiationIntervalData:(id)data
{
  dataCopy = data;
  v5 = [self _signpostIntervalData:dataCopy];
  v6 = [v5 mutableCopy];

  beginEvent = [dataCopy beginEvent];
  v8 = +[SignpostAnimationOverrunQuery nonFirstFrameContributedGlitches:](SignpostAnimationOverrunQuery, "nonFirstFrameContributedGlitches:", [beginEvent processID]);

  v9 = [dataCopy overrunIntervals:v8];
  v10 = [v9 count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  [v6 setObject:v11 forKeyedSubscript:@"perceivedGlitchCount"];

  [dataCopy nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
  v12 = [NSNumber numberWithDouble:?];
  [v6 setObject:v12 forKeyedSubscript:@"perceivedGlitchRatio"];

  v14 = PPSLogSignpostTimeSeriesTask(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 objectForKeyedSubscript:@"EndProcessName"];
    if (v15)
    {
      v16 = @"EndProcessName";
    }

    else
    {
      v16 = @"BeginProcessName";
    }

    v17 = [v6 objectForKeyedSubscript:v16];
    v18 = [v6 objectForKeyedSubscript:@"Subsystem"];
    v19 = [v6 objectForKeyedSubscript:@"Category"];
    v20 = [v6 objectForKeyedSubscript:@"Name"];
    beginDate = [dataCopy beginDate];
    v23 = 138413314;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = beginDate;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Generated animation interval data for process '%@': '%@::%@::%@' (%@)", &v23, 0x34u);
  }

  return v6;
}

+ (id)_signpostIntervalData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  [v4 setObject:@"Powerlog" forKeyedSubscript:@"CollectionType"];
  category = [dataCopy category];
  [v4 setObject:category forKeyedSubscript:@"Category"];

  name = [dataCopy name];
  [v4 setObject:name forKeyedSubscript:@"Name"];

  subsystem = [dataCopy subsystem];
  [v4 setObject:subsystem forKeyedSubscript:@"Subsystem"];

  [dataCopy timebaseRatio];
  v8 = [NSNumber numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"TimebaseRatio"];

  string1Name = [dataCopy string1Name];
  [v4 setObject:string1Name forKeyedSubscript:@"String1Name"];

  string1Value = [dataCopy string1Value];
  [v4 setObject:string1Value forKeyedSubscript:@"String1Value"];

  string2Name = [dataCopy string2Name];
  [v4 setObject:string2Name forKeyedSubscript:@"String2Name"];

  string2Value = [dataCopy string2Value];
  [v4 setObject:string2Value forKeyedSubscript:@"String2Value"];

  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [dataCopy startMachContinuousTime]);
  [v4 setObject:v13 forKeyedSubscript:@"startMachContinuousTime"];

  v14 = [dataCopy beginWallTimeStringWithTimeZoneName:0];
  [v4 setObject:v14 forKeyedSubscript:@"beginWallTime"];

  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [dataCopy endMachContinuousTime]);
  [v4 setObject:v15 forKeyedSubscript:@"endMachContinuousTime"];

  v16 = [dataCopy endWallTimeStringWithTimeZoneName:0];
  [v4 setObject:v16 forKeyedSubscript:@"endWallTime"];

  beginEvent = [dataCopy beginEvent];

  if (beginEvent)
  {
    beginEvent2 = [dataCopy beginEvent];
    v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [beginEvent2 processID]);
    [v4 setObject:v19 forKeyedSubscript:@"BeginPid"];

    beginEvent3 = [dataCopy beginEvent];
    processName = [beginEvent3 processName];
    [v4 setObject:processName forKeyedSubscript:@"BeginProcessName"];
  }

  endEvent = [dataCopy endEvent];

  if (endEvent)
  {
    endEvent2 = [dataCopy endEvent];
    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [endEvent2 processID]);
    [v4 setObject:v24 forKeyedSubscript:@"EndPid"];

    endEvent3 = [dataCopy endEvent];
    processName2 = [endEvent3 processName];
    [v4 setObject:processName2 forKeyedSubscript:@"EndProcessName"];
  }

  number1Name = [dataCopy number1Name];
  if (number1Name)
  {
    v28 = number1Name;
    number1Value = [dataCopy number1Value];

    if (number1Value)
    {
      number1Name2 = [dataCopy number1Name];
      [v4 setObject:number1Name2 forKeyedSubscript:@"Number1Name"];

      number1Value2 = [dataCopy number1Value];
      [v4 setObject:number1Value2 forKeyedSubscript:@"Number1Value"];
    }
  }

  number2Name = [dataCopy number2Name];
  if (number2Name)
  {
    v34 = number2Name;
    number2Value = [dataCopy number2Value];

    if (number2Value)
    {
      number2Name2 = [dataCopy number2Name];
      [v4 setObject:number2Name2 forKeyedSubscript:@"Number2Name"];

      number2Value2 = [dataCopy number2Value];
      [v4 setObject:number2Value2 forKeyedSubscript:@"Number2Value"];
    }
  }

  v38 = IsInternalBuild(number2Name, v33);
  if (v38)
  {
    subsystem2 = [dataCopy subsystem];
    v40 = [subsystem2 isEqualToString:@"com.apple.metrickit.log"];

    if (v40)
    {
      beginEvent4 = [dataCopy beginEvent];
      metrics = [beginEvent4 metrics];

      if (metrics)
      {
        beginEvent5 = [dataCopy beginEvent];
        metrics2 = [beginEvent5 metrics];
        cpuTimeNsec = [metrics2 cpuTimeNsec];
        [cpuTimeNsec doubleValue];
        v47 = [NSNumber numberWithDouble:v46 / 1000000000.0];
        [v4 setObject:v47 forKeyedSubscript:@"BeginCPUTime"];

        beginEvent6 = [dataCopy beginEvent];
        metrics3 = [beginEvent6 metrics];
        dirtyMemoryLifetimePeakKB = [metrics3 dirtyMemoryLifetimePeakKB];
        [v4 setObject:dirtyMemoryLifetimePeakKB forKeyedSubscript:@"BeginPeakMemory"];

        beginEvent7 = [dataCopy beginEvent];
        metrics4 = [beginEvent7 metrics];
        dirtyMemoryKB = [metrics4 dirtyMemoryKB];
        [v4 setObject:dirtyMemoryKB forKeyedSubscript:@"BeginDirtyMemory"];

        beginEvent8 = [dataCopy beginEvent];
        metrics5 = [beginEvent8 metrics];
        storageDirtiedKB = [metrics5 storageDirtiedKB];
        [v4 setObject:storageDirtiedKB forKeyedSubscript:@"BeginDiskLogicalWrites"];
      }

      endEvent4 = [dataCopy endEvent];
      metrics6 = [endEvent4 metrics];

      if (metrics6)
      {
        endEvent5 = [dataCopy endEvent];
        metrics7 = [endEvent5 metrics];
        cpuTimeNsec2 = [metrics7 cpuTimeNsec];
        [cpuTimeNsec2 doubleValue];
        v63 = [NSNumber numberWithDouble:v62 / 1000000000.0];
        [v4 setObject:v63 forKeyedSubscript:@"EndCPUTime"];

        endEvent6 = [dataCopy endEvent];
        metrics8 = [endEvent6 metrics];
        dirtyMemoryLifetimePeakKB2 = [metrics8 dirtyMemoryLifetimePeakKB];
        [v4 setObject:dirtyMemoryLifetimePeakKB2 forKeyedSubscript:@"EndPeakMemory"];

        endEvent7 = [dataCopy endEvent];
        metrics9 = [endEvent7 metrics];
        dirtyMemoryKB2 = [metrics9 dirtyMemoryKB];
        [v4 setObject:dirtyMemoryKB2 forKeyedSubscript:@"EndDirtyMemory"];

        endEvent8 = [dataCopy endEvent];
        metrics10 = [endEvent8 metrics];
        storageDirtiedKB2 = [metrics10 storageDirtiedKB];
        [v4 setObject:storageDirtiedKB2 forKeyedSubscript:@"EndDiskLogicalWrites"];
      }
    }
  }

  v73 = PPSLogSignpostTimeSeriesTask(v38);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v4 objectForKeyedSubscript:@"EndProcessName"];
    if (v74)
    {
      v75 = @"EndProcessName";
    }

    else
    {
      v75 = @"BeginProcessName";
    }

    v76 = [v4 objectForKeyedSubscript:v75];
    v77 = [v4 objectForKeyedSubscript:@"Subsystem"];
    v78 = [v4 objectForKeyedSubscript:@"Category"];
    v79 = [v4 objectForKeyedSubscript:@"Name"];
    beginDate = [dataCopy beginDate];
    v82 = 138413314;
    v83 = v76;
    v84 = 2112;
    v85 = v77;
    v86 = 2112;
    v87 = v78;
    v88 = 2112;
    v89 = v79;
    v90 = 2112;
    v91 = beginDate;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Generated signpost interval data for process '%@': '%@::%@::%@' (%@)", &v82, 0x34u);
  }

  return v4;
}

+ (id)_workflowEventData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  machContTimeNs = [dataCopy machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:machContTimeNs];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  return v4;
}

+ (id)_workflowEventTrackerData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  [v4 setObject:@"WorkflowResponsiveness" forKeyedSubscript:@"CollectionType"];
  workflow = [dataCopy workflow];
  name = [workflow name];
  [v4 setObject:name forKeyedSubscript:@"WorkflowName"];

  eventStart = [dataCopy eventStart];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [eventStart machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"OverallStartTime"];

  eventEnd = [dataCopy eventEnd];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [eventEnd machContTimeNs]);
  [v4 setObject:v10 forKeyedSubscript:@"OverallEndTime"];

  error = [dataCopy error];

  if (error)
  {
    error2 = [dataCopy error];
    if (error2)
    {
      error3 = [dataCopy error];
      domain = [error3 domain];
      if ([domain isEqualToString:WRErrorDomain])
      {
        error4 = [dataCopy error];
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error4 code]);
        [v4 setObject:v16 forKeyedSubscript:@"ErrorCode"];
      }

      else
      {
        [v4 setObject:&off_100011B20 forKeyedSubscript:@"ErrorCode"];
      }
    }

    else
    {
      [v4 setObject:&off_100011B20 forKeyedSubscript:@"ErrorCode"];
    }
  }

  return v4;
}

+ (id)_workflowIncompleteIntervalData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  machContTimeNs = [dataCopy machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:machContTimeNs];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  [v4 setObject:&off_100011B38 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

+ (id)_workflowIntervalData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  start = [dataCopy start];
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [start machContTimeNs]);
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  v7 = [dataCopy end];

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

+ (id)_workflowSignpostTrackerData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  signpost = [dataCopy signpost];
  name = [signpost name];
  [v4 setObject:name forKeyedSubscript:@"Name"];

  signpost2 = [dataCopy signpost];
  subsystem = [signpost2 subsystem];
  [v4 setObject:subsystem forKeyedSubscript:@"Subsystem"];

  signpost3 = [dataCopy signpost];
  category = [signpost3 category];
  [v4 setObject:category forKeyedSubscript:@"Category"];

  individuationIdentifier = [dataCopy individuationIdentifier];
  v12 = [individuationIdentifier length];

  if (v12)
  {
    individuationIdentifier2 = [dataCopy individuationIdentifier];
    [v4 setObject:individuationIdentifier2 forKeyedSubscript:@"IndividuationIdentifier"];
  }

  v24 = dataCopy;
  environment = [dataCopy environment];
  v15 = environment;
  if (environment)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [environment countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [NSString stringWithFormat:@"@env_%@", v20];
          v22 = [v15 objectForKey:v20];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v4 setObject:v22 forKeyedSubscript:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  return v4;
}

- (id)_compressData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    memset(&v10.total_out, 0, 72);
    v10.avail_in = [dataCopy length];
    v4 = 0;
    if (!deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v5 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = v10.total_out;
        if (total_out >= [v5 length])
        {
          [v5 increaseLengthBy:0x4000];
        }

        mutableBytes = [v5 mutableBytes];
        v10.next_out = &mutableBytes[v10.total_out];
        v8 = [v5 length];
        v10.avail_out = v8 - LODWORD(v10.total_out);
        deflate(&v10, 4);
      }

      while (!v10.avail_out);
      deflateEnd(&v10);
      [v5 setLength:v10.total_out];
      v4 = [NSData dataWithData:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_flushTimeSeries
{
  targetDirectory = [(PPSSignpostTimeSeriesTask *)self targetDirectory];

  if (targetDirectory)
  {
    v5 = +[NSFileManager defaultManager];
    targetDirectory2 = [(PPSSignpostTimeSeriesTask *)self targetDirectory];
    [v5 createDirectoryAtURL:targetDirectory2 withIntermediateDirectories:1 attributes:0 error:0];

    timeSeries = [(PPSSignpostTimeSeriesTask *)self timeSeries];
    v8 = [NSJSONSerialization dataWithJSONObject:timeSeries options:0 error:0];

    v9 = [(PPSSignpostTimeSeriesTask *)self _compressData:v8];
    if (v9)
    {
      targetDirectory3 = [(PPSSignpostTimeSeriesTask *)self targetDirectory];
      firstSignpostDate = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
      [firstSignpostDate timeIntervalSince1970];
      v13 = [NSString stringWithFormat:@"signpost.%f.json.gz", v12];
      v14 = [targetDirectory3 URLByAppendingPathComponent:v13];

      v52 = 0;
      LOBYTE(firstSignpostDate) = [v9 writeToURL:v14 options:1 error:&v52];
      v15 = v52;
      v16 = PPSLogSignpostTimeSeriesTask(v15);
      timeSeries4 = v16;
      if (firstSignpostDate)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          timeSeries2 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
          v19 = [timeSeries2 count];
          lastPathComponent = [v14 lastPathComponent];
          *buf = 134218242;
          v54 = v19;
          v55 = 2112;
          v56 = lastPathComponent;
          _os_log_impl(&_mh_execute_header, timeSeries4, OS_LOG_TYPE_DEFAULT, "Flushed %lu signposts to '%@'", buf, 0x16u);
        }

        firstSignpostDate2 = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
        if (firstSignpostDate2)
        {
          v22 = firstSignpostDate2;
          firstSignpostDate3 = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
          v51 = v15;
          v24 = [v14 setResourceValue:firstSignpostDate3 forKey:NSURLCreationDateKey error:&v51];
          v25 = v51;

          if ((v24 & 1) == 0)
          {
            v27 = PPSLogSignpostTimeSeriesTask(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_100007CFC(v14, v27);
            }
          }
        }

        else
        {
          v25 = v15;
        }

        v49 = [NSDate dateWithTimeIntervalSinceNow:129600.0];
        [PPSFileUtilities markAsPurgeable:v14 urgency:512 startDate:v49];

        timeSeries3 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
        -[PPSSignpostTimeSeriesTask setTimeSeriesSize:](self, "setTimeSeriesSize:", [timeSeries3 count] + -[PPSSignpostTimeSeriesTask timeSeriesSize](self, "timeSeriesSize"));

        [(PPSSignpostTimeSeriesTask *)self setOutputFileCount:[(PPSSignpostTimeSeriesTask *)self outputFileCount]+ 1];
        timeSeries4 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
        [timeSeries4 removeAllObjects];
        v15 = v25;
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100007CC4(timeSeries4, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    else
    {
      v15 = PPSLogSignpostTimeSeriesTask(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100007D94(v15, v35, v36, v37, v38, v39, v40, v41);
      }
    }
  }

  else
  {
    v8 = PPSLogSignpostTimeSeriesTask(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007DCC(v8, v28, v29, v30, v31, v32, v33, v34);
    }
  }
}

@end