@interface WorkingLatencyURLSessionDelegate
- (BOOL)checkLimits;
- (WorkingLatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate urlSessions:(id)sessions tcpKey:(id)self0 tlsKey:(id)self1 reqrespKey:(id)self2 selfKey:(id)self3;
- (int64_t)currentResponsivenessConfidenceValue;
- (int64_t)getProbeTimeout;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler;
- (void)scheduleNewTaskForeign;
- (void)scheduleNewTaskSelf;
- (void)waitForSaturation:(id)saturation;
@end

@implementation WorkingLatencyURLSessionDelegate

- (WorkingLatencyURLSessionDelegate)initWithConfiguration:(id)configuration testName:(id)name queue:(id)queue testEndpoint:(id)endpoint resultsObject:(id)object resultsDelegate:(id)delegate urlSessions:(id)sessions tcpKey:(id)self0 tlsKey:(id)self1 reqrespKey:(id)self2 selfKey:(id)self3
{
  configurationCopy = configuration;
  sessionsCopy = sessions;
  v56.receiver = self;
  v56.super_class = WorkingLatencyURLSessionDelegate;
  v20 = [(LatencyURLSessionDelegate *)&v56 initWithConfiguration:configurationCopy testName:name queue:queue testEndpoint:endpoint resultsObject:object resultsDelegate:delegate tcpKey:key tlsKey:tlsKey reqrespKey:reqrespKey selfKey:selfKey];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workingSessions, sessions);
    v21->_probeLoadConnections = 1;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tcpTmpArray = v21->_tcpTmpArray;
    v21->_tcpTmpArray = v22;

    v24 = [TrimmedMean alloc];
    v25 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v26 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v27 = [(TrimmedMean *)v24 initWithSize:v25 withTrimAt:v26];
    tcpTrim = v21->_tcpTrim;
    v21->_tcpTrim = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tlsTmpArray = v21->_tlsTmpArray;
    v21->_tlsTmpArray = v29;

    v31 = [TrimmedMean alloc];
    v32 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v33 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v34 = [(TrimmedMean *)v31 initWithSize:v32 withTrimAt:v33];
    tlsTrim = v21->_tlsTrim;
    v21->_tlsTrim = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    h2TmpArray = v21->_h2TmpArray;
    v21->_h2TmpArray = v36;

    v38 = [TrimmedMean alloc];
    v39 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v40 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v41 = [(TrimmedMean *)v38 initWithSize:v39 withTrimAt:v40];
    h2Trim = v21->_h2Trim;
    v21->_h2Trim = v41;

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selfTmpArray = v21->_selfTmpArray;
    v21->_selfTmpArray = v43;

    v45 = [TrimmedMean alloc];
    v46 = ([(NetworkQualityConfiguration *)v21->super._config movingAveragePeriod]/ 0.2);
    *&v47 = [(NetworkQualityConfiguration *)v21->super._config trimmedMeanThreshold]/ 100.0;
    v48 = [(TrimmedMean *)v45 initWithSize:v46 withTrimAt:v47];
    selfTrim = v21->_selfTrim;
    v21->_selfTrim = v48;

    v50 = [[LatencySaturationDetection alloc] initWithConfig:configurationCopy];
    saturation = v21->_saturation;
    v21->_saturation = v50;

    v21->_saturation_reached = 0;
    v21->_exit_value = 60000.0 / [configurationCopy latencyCriteria];
    v52 = [MEMORY[0x277CBEAA8] now];
    start = v21->_start;
    v21->_start = v52;

    objc_storeStrong(&v21->_current, v21->_start);
  }

  return v21;
}

- (int64_t)getProbeTimeout
{
  currentThroughput = [(NetworkQualityExecutions *)self->super._execution currentThroughput];
  if (![(NetworkQualityExecutions *)self->super._execution currentThroughput])
  {
    return 1000000000;
  }

  v4 = 24000.0 / ((currentThroughput * 5.0) / 100.0);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < 0.04)
  {
    v4 = 0.04;
  }

  return (v4 * 1000000000.0);
}

- (void)scheduleNewTaskSelf
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->super._canceled && self->_probeLoadConnections)
  {
    if ([(NSMutableArray *)self->_workingSessions count]&& [(NSMutableArray *)self->super._tasks count]<= 0x32 && [(NSMutableArray *)self->super._sessions count]< 0x33)
    {
      v5 = [(NSMutableArray *)self->_workingSessions objectAtIndex:arc4random_uniform([(NSMutableArray *)self->_workingSessions count])];
      v6 = [v5 dataTaskWithRequest:self->super._request];
      [v6 setDelegate:self];
      [v6 set_hostOverride:self->super._testEndpoint];
      [(NSMutableArray *)self->super._tasks addObject:v6];
      getProbeTimeout = [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout];
      netqual_log_init(getProbeTimeout, v8);
      v9 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        tasks = self->super._tasks;
        v11 = v9;
        LODWORD(tasks) = [(NSMutableArray *)tasks count];
        v12 = [(NSMutableArray *)self->super._sessions count];
        *buf = 136316674;
        v18 = "[WorkingLatencyURLSessionDelegate scheduleNewTaskSelf]";
        v19 = 1024;
        v20 = 787;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v5;
        v25 = 1024;
        v26 = tasks;
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = getProbeTimeout / 0xF4240;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - Created Self WorkingLatencyTask %@ on session %@, task-count %u session-count %u next in %llu ms", buf, 0x3Cu);
      }

      [v6 resume];
      v13 = dispatch_time(0, getProbeTimeout);
      underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__WorkingLatencyURLSessionDelegate_scheduleNewTaskSelf__block_invoke_240;
      v15[3] = &unk_279969378;
      v15[4] = self;
      dispatch_after(v13, underlyingQueue, v15);
    }

    else
    {
      v3 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
      underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__WorkingLatencyURLSessionDelegate_scheduleNewTaskSelf__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v3, underlyingQueue2, block);
    }
  }
}

- (void)scheduleNewTaskForeign
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->super._canceled)
  {
    if ([(NSMutableArray *)self->super._tasks count]<= 0x32 && [(NSMutableArray *)self->super._sessions count]< 0x33)
    {
      createDefaultNSURLSessionConfiguration = [(NetworkQualityExecutions *)self->super._execution createDefaultNSURLSessionConfiguration];
      v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:createDefaultNSURLSessionConfiguration delegate:self delegateQueue:self->super._queue];
      [(NSMutableArray *)self->super._sessions addObject:v6];
      v7 = [v6 dataTaskWithRequest:self->super._request];
      [v7 setDelegate:self];
      [v7 set_hostOverride:self->super._testEndpoint];
      [(NSMutableArray *)self->super._tasks addObject:v7];
      getProbeTimeout = [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout];
      netqual_log_init(getProbeTimeout, v9);
      v10 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        tasks = self->super._tasks;
        v12 = v10;
        LODWORD(tasks) = [(NSMutableArray *)tasks count];
        v13 = [(NSMutableArray *)self->super._sessions count];
        *buf = 136316674;
        v19 = "[WorkingLatencyURLSessionDelegate scheduleNewTaskForeign]";
        v20 = 1024;
        v21 = 824;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v6;
        v26 = 1024;
        v27 = tasks;
        v28 = 1024;
        v29 = v13;
        v30 = 2048;
        v31 = getProbeTimeout / 0xF4240;
        _os_log_impl(&dword_25B962000, v12, OS_LOG_TYPE_DEFAULT, "%s:%u - Created Foreign WorkingLatencyTask %@ on session %@, task-count %u session-count %u next in %llu ms", buf, 0x3Cu);
      }

      [v7 resume];
      v14 = dispatch_time(0, getProbeTimeout);
      underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__WorkingLatencyURLSessionDelegate_scheduleNewTaskForeign__block_invoke_241;
      v16[3] = &unk_279969378;
      v16[4] = self;
      dispatch_after(v14, underlyingQueue, v16);
    }

    else
    {
      v3 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
      underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__WorkingLatencyURLSessionDelegate_scheduleNewTaskForeign__block_invoke;
      block[3] = &unk_279969378;
      block[4] = self;
      dispatch_after(v3, underlyingQueue2, block);
    }
  }
}

- (void)executeTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  v7 = MEMORY[0x25F873620](handler);
  completionHandler = self->super._completionHandler;
  self->super._completionHandler = v7;

  request = self->super._request;
  self->super._request = requestCopy;
  v10 = requestCopy;

  v11 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
  underlyingQueue = [(NSOperationQueue *)self->super._queue underlyingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WorkingLatencyURLSessionDelegate_executeTaskWithRequest_completionHandler___block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_after(v11, underlyingQueue, block);

  v13 = dispatch_time(0, [(WorkingLatencyURLSessionDelegate *)self getProbeTimeout]);
  underlyingQueue2 = [(NSOperationQueue *)self->super._queue underlyingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__WorkingLatencyURLSessionDelegate_executeTaskWithRequest_completionHandler___block_invoke_2;
  v15[3] = &unk_279969378;
  v15[4] = self;
  dispatch_after(v13, underlyingQueue2, v15);
}

- (void)waitForSaturation:(id)saturation
{
  self->super._saturationHandler = MEMORY[0x25F873620](saturation, a2);

  MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  [(NSMutableArray *)self->super._tasks removeObject:task];
  if (!self->super._canceled)
  {
    invalidateAndCancel = [(NSMutableArray *)self->super._sessions indexOfObject:sessionCopy];
    if (invalidateAndCancel != 0x7FFFFFFFFFFFFFFFLL)
    {
      invalidateAndCancel = [sessionCopy invalidateAndCancel];
    }

    if (errorCopy)
    {
      netqual_log_init(invalidateAndCancel, v11);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [WorkingLatencyURLSessionDelegate URLSession:task:didCompleteWithError:];
      }

      if (!self->super._canceled)
      {
        objc_storeStrong(&self->super._error, error);
        (*(self->super._completionHandler + 2))();
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v212 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(session);
  taskCopy = task;
  metricsCopy = metrics;
  if (!self->_saturation_reached && ![(WorkingLatencyURLSessionDelegate *)self checkLimits])
  {
    v11 = [(LatencyURLSessionDelegate *)self didFinishCollectingMetrics:metricsCopy task:taskCopy];
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      transactionMetrics = [metricsCopy transactionMetrics];
      v173 = [transactionMetrics objectAtIndex:v12];

      if ([(NSMutableArray *)self->_workingSessions indexOfObject:*&v8]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        isReusedConnection = [v173 isReusedConnection];
        if ((isReusedConnection & 1) == 0)
        {
          netqual_log_init(isReusedConnection, v15);
          v35 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
            *&buf[12] = 1024;
            *&buf[14] = 912;
            *&buf[18] = 2080;
            *&buf[20] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
            *&buf[28] = 2112;
            *&buf[30] = taskCopy;
            *&buf[38] = 2112;
            v195 = v8;
            _os_log_impl(&dword_25B962000, v35, OS_LOG_TYPE_DEFAULT, "%s:%u - %s - request for task %@ was not reused on session %@", buf, 0x30u);
          }

          self->_probeLoadConnections = 0;
          goto LABEL_109;
        }

        if (!self->_probeLoadConnections)
        {
LABEL_109:

          goto LABEL_110;
        }
      }

      if ([(NSMutableArray *)self->super._sessions indexOfObject:*&v8]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v168 = self->super._selfKey;
        selfTmpArray = self->_selfTmpArray;
        v17 = MEMORY[0x277CCABB0];
        obj = [v173 responseEndDate];
        requestStartDate = [v173 requestStartDate];
        [obj timeIntervalSinceDate:requestStartDate];
        v19 = [v17 numberWithInt:(v18 * 1000.0)];
        v20 = selfTmpArray;
        v21 = v19;
        [(NSMutableArray *)v20 addObject:v19];
        goto LABEL_63;
      }

      workingLatencyResults = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
      obj = [workingLatencyResults valueForKey:self->super._tcpKey];

      if (!obj)
      {
        obj = objc_alloc_init(MEMORY[0x277CBEB18]);
        workingLatencyResults2 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        [workingLatencyResults2 setObject:obj forKey:self->super._tcpKey];
      }

      workingLatencyResults3 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
      requestStartDate = [workingLatencyResults3 valueForKey:self->super._tlsKey];

      if (!requestStartDate)
      {
        requestStartDate = objc_alloc_init(MEMORY[0x277CBEB18]);
        workingLatencyResults4 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        [workingLatencyResults4 setObject:requestStartDate forKey:self->super._tlsKey];
      }

      mutableOtherValues = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
      v167 = [mutableOtherValues valueForKey:@"ecn_values"];

      if (!v167)
      {
        v167 = objc_alloc_init(MEMORY[0x277CBEB38]);
        mutableOtherValues2 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        [mutableOtherValues2 setObject:v167 forKey:@"ecn_values"];
      }

      mutableOtherValues3 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
      v165 = [mutableOtherValues3 valueForKey:@"l4s_enablement"];

      if (!v165)
      {
        v165 = objc_alloc_init(MEMORY[0x277CBEB38]);
        mutableOtherValues4 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        [mutableOtherValues4 setObject:v165 forKey:@"l4s_enablement"];
      }

      report = [v173 _establishmentReport];
      if (!report)
      {
LABEL_28:
        networkProtocolName = [v173 networkProtocolName];
        if (networkProtocolName)
        {
          mutableOtherValues5 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          v43 = [mutableOtherValues5 objectForKey:@"protocols_seen"];

          if (!v43)
          {
            v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
            mutableOtherValues6 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
            [mutableOtherValues6 setValue:v43 forKey:@"protocols_seen"];
          }

          v45 = [v43 objectForKey:networkProtocolName];
          if (v45)
          {
            v46 = v45;
          }

          else
          {
            v46 = &unk_286D22CA0;
          }

          v47 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v46, "intValue") + 1}];

          [v43 setObject:v47 forKey:networkProtocolName];
        }

        mutableOtherValues7 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v49 = [mutableOtherValues7 objectForKey:@"proxy_state"];

        if (!v49)
        {
          v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues8 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues8 setValue:v49 forKey:@"proxy_state"];
        }

        isProxyConnection = [v173 isProxyConnection];
        v52 = @"not_proxied";
        if (isProxyConnection)
        {
          v52 = @"proxied";
        }

        v53 = v52;
        v54 = [v49 objectForKey:v53];
        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = &unk_286D22CA0;
        }

        v56 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v55, "intValue") + 1}];

        [v49 setObject:v56 forKey:v53];
        mutableOtherValues9 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v58 = [mutableOtherValues9 objectForKey:@"interface-type"];

        if (!v58)
        {
          v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues10 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues10 setValue:v58 forKey:@"interface-type"];
        }

        _interfaceName = [v173 _interfaceName];
        v61 = _interfaceName;
        [_interfaceName UTF8String];
        v62 = nw_interface_create_with_name();

        v63 = MEMORY[0x277CCACA8];
        type = nw_interface_get_type(v62);
        v65 = [v63 stringWithUTF8String:nw_interface_type_to_string(type)];
        v66 = [v58 objectForKey:v65];
        if (v66)
        {
          v67 = v66;
        }

        else
        {
          v67 = &unk_286D22CA0;
        }

        v68 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v67, "intValue") + 1}];

        [v58 setObject:v68 forKey:v65];
        mutableOtherValues11 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v70 = [mutableOtherValues11 objectForKey:@"rat"];

        if (!v70)
        {
          v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues12 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues12 setValue:v70 forKey:@"rat"];
        }

        if (nw_interface_get_radio_type())
        {
          v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_radio_type_to_string()];
        }

        else
        {
          v72 = @"unknown";
        }

        v73 = [v70 objectForKey:v72];

        if (v73)
        {
          v74 = v73;
        }

        else
        {
          v74 = &unk_286D22CA0;
        }

        v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v74, "intValue") + 1}];

        [v70 setObject:v75 forKey:v72];
        mutableOtherValues13 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
        v77 = [mutableOtherValues13 objectForKey:@"multipath"];

        if (!v77)
        {
          v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
          mutableOtherValues14 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
          [mutableOtherValues14 setValue:v77 forKey:@"multipath"];
        }

        isMultipath = [v173 isMultipath];
        v80 = @"disabled";
        if (isMultipath)
        {
          v80 = @"negotiated";
        }

        v81 = v80;
        v82 = [v77 objectForKey:v81];
        if (v82)
        {
          v83 = v82;
        }

        else
        {
          v83 = &unk_286D22CA0;
        }

        v84 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v83, "intValue") + 1}];

        [v77 setObject:v84 forKey:v81];
        v168 = self->super._reqrespKey;
        h2TmpArray = self->_h2TmpArray;
        v86 = MEMORY[0x277CCABB0];
        responseEndDate = [v173 responseEndDate];
        requestStartDate2 = [v173 requestStartDate];
        [responseEndDate timeIntervalSinceDate:requestStartDate2];
        v90 = [v86 numberWithInt:(v89 * 1000.0)];
        [(NSMutableArray *)h2TmpArray addObject:v90];

        v21 = v167;
LABEL_63:

        workingLatencyResults5 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
        v172 = [workingLatencyResults5 valueForKey:v168];

        if (!v172)
        {
          v172 = objc_alloc_init(MEMORY[0x277CBEB18]);
          workingLatencyResults6 = [(NetworkQualityExecutionsResult *)self->super._results workingLatencyResults];
          [workingLatencyResults6 setObject:v172 forKey:v168];
        }

        v93 = MEMORY[0x277CCABB0];
        responseEndDate2 = [v173 responseEndDate];
        requestStartDate3 = [v173 requestStartDate];
        [responseEndDate2 timeIntervalSinceDate:requestStartDate3];
        v97 = [v93 numberWithInt:(v96 * 1000.0)];
        [v172 addObject:v97];

        obja = [MEMORY[0x277CBEAA8] now];
        [obja timeIntervalSinceDate:self->_start];
        if (v98 < 0.2)
        {
          goto LABEL_108;
        }

        objc_storeStrong(&self->_start, obja);
        [(TrimmedMean *)self->_tcpTrim add:self->_tcpTmpArray];
        v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
        tcpTmpArray = self->_tcpTmpArray;
        self->_tcpTmpArray = v99;

        [(TrimmedMean *)self->_tlsTrim add:self->_tlsTmpArray];
        v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
        tlsTmpArray = self->_tlsTmpArray;
        self->_tlsTmpArray = v101;

        [(TrimmedMean *)self->_h2Trim add:self->_h2TmpArray];
        v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v104 = self->_h2TmpArray;
        self->_h2TmpArray = v103;

        [(TrimmedMean *)self->_selfTrim add:self->_selfTmpArray];
        v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v106 = self->_selfTmpArray;
        self->_selfTmpArray = v105;

        [(TrimmedMean *)self->_tcpTrim getTrimmedMean];
        v108 = v107;
        [(TrimmedMean *)self->_tlsTrim getTrimmedMean];
        v110 = v109;
        [(TrimmedMean *)self->_h2Trim getTrimmedMean];
        v112 = v111;
        [(TrimmedMean *)self->_selfTrim getTrimmedMean];
        v114 = *&v113;
        v115 = fabsf(v108);
        v116 = fabsf(v110);
        v117 = fabsf(v112);
        if (v115 >= 0.00000011921 || v116 >= 0.00000011921 || (v118 = 0.0, v117 >= 0.00000011921))
        {
          v119 = v108 != 0.0;
          if (v110 != 0.0)
          {
            ++v119;
          }

          if (v112 != 0.0)
          {
            ++v119;
          }

          v118 = ((v108 + v110) + v112) / v119;
        }

        v120 = fabsf(*&v113);
        if (fabsf(v118) < 0.00000011921)
        {
          HIDWORD(v113) = 872415232;
          if (v120 < 0.00000011921)
          {
LABEL_108:

            goto LABEL_109;
          }
        }

        else
        {
          *&v113 = LODWORD(v118) | 0x3400000000000000;
          if (v120 >= 0.00000011921)
          {
            *&v113 = (v114 + v118) * 0.5;
          }
        }

        v166 = v116;
        v162 = v120;
        reporta = v117;
        v121 = 60000.0 / *&v113;
        *&v113 = 60000.0 / *&v113;
        v122 = [(SaturationDetection *)self->_saturation add:v113];
        if (v122 && ([(NetworkQualityExecutions *)self->super._execution throughputSaturated]|| [(NetworkQualityExecutions *)self->super._execution throughputMetExitCriteria]))
        {
          if (self->super._saturationHandler)
          {
            self->_saturation_reached = 1;
          }

          getSaturation = [(SaturationDetection *)self->_saturation getSaturation];
        }

        else
        {
          getSaturation = [(SaturationDetection *)self->_saturation getAverage];
        }

        v126 = v125;
        netqual_log_init(getSaturation, v124);
        v127 = os_log_netqual;
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          saturation_reached = self->_saturation_reached;
          throughputSaturated = [(NetworkQualityExecutions *)self->super._execution throughputSaturated];
          throughputMetExitCriteria = [(NetworkQualityExecutions *)self->super._execution throughputMetExitCriteria];
          *buf = 136318210;
          *&buf[4] = "[WorkingLatencyURLSessionDelegate URLSession:task:didFinishCollectingMetrics:]";
          *&buf[12] = 1024;
          *&buf[14] = 1173;
          *&buf[18] = 2048;
          *&buf[20] = v121;
          *&buf[28] = 2048;
          *&buf[30] = v126;
          *&buf[38] = 2048;
          v195 = v108;
          v196 = 2048;
          v197 = v110;
          v198 = 2048;
          v199 = v112;
          v200 = 2048;
          v201 = v118;
          v202 = 2048;
          v203 = v114;
          v204 = 1024;
          v205 = v122;
          v206 = 1024;
          v207 = saturation_reached;
          v208 = 1024;
          v209 = throughputSaturated;
          v210 = 1024;
          v211 = throughputMetExitCriteria;
          _os_log_impl(&dword_25B962000, v127, OS_LOG_TYPE_DEFAULT, "%s:%u - Responsiveness: %.3f, Saturated: %.3f tcpMean: %.3f tlsMean: %.3f rrMean %.3f foreignMean %.3f srrMean %.3f sd=%d sr=%d exec->ts=%d, exec->tmec=%d", buf, 0x70u);
        }

        isDownlink = self->isDownlink;
        *&v132 = v126;
        v133 = [MEMORY[0x277CCABB0] numberWithFloat:v132];
        results = self->super._results;
        if (isDownlink)
        {
          downlinkResponsiveness = [(NetworkQualityResult *)results downlinkResponsiveness];
          [downlinkResponsiveness setValue:v133];

          v136 = MEMORY[0x277CCABB0];
          downlinkResponsiveness2 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          value = [downlinkResponsiveness2 value];
          v139 = [v136 numberWithLong:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value, "integerValue"))}];
          downlinkResponsiveness3 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          [downlinkResponsiveness3 setRating:v139];

          downlinkResponsiveness4 = [(NetworkQualityResult *)self->super._results downlinkResponsiveness];
          [downlinkResponsiveness4 updateConfidence:{-[WorkingLatencyURLSessionDelegate currentResponsivenessConfidenceValue](self, "currentResponsivenessConfidenceValue")}];

          if (v115 >= 0.00000011921)
          {
            v142.n128_f32[0] = 60000.0 / v108;
            v144 = [MEMORY[0x277CCABB0] numberWithFloat:v142.n128_f64[0]];
            [(NetworkQualityResult *)self->super._results setDownlinkTCPResponsiveness:v144];
          }

          HIDWORD(v145) = 872415232;
          v143.n128_f32[0] = v166;
          if (v166 >= 0.00000011921)
          {
            *&v145 = 60000.0 / v110;
            v146 = [MEMORY[0x277CCABB0] numberWithFloat:{v145, v143.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setDownlinkTLSResponsiveness:v146];
          }

          HIDWORD(v147) = 872415232;
          v143.n128_f32[0] = reporta;
          if (reporta >= 0.00000011921)
          {
            *&v147 = 60000.0 / v112;
            v148 = [MEMORY[0x277CCABB0] numberWithFloat:{v147, v143.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setDownlinkHTTPForeignResponsiveness:v148];
          }

          v142.n128_u64[0] = 0x3400000034000000;
          v143.n128_f32[0] = v162;
          if (v162 < 0.00000011921)
          {
            goto LABEL_105;
          }

          v142.n128_f32[0] = 60000.0 / v114;
          v149 = [MEMORY[0x277CCABB0] numberWithFloat:{v142.n128_f64[0], v143.n128_f64[0]}];
          [(NetworkQualityResult *)self->super._results setDownlinkHTTPSelfResponsiveness:v149];
        }

        else
        {
          uplinkResponsiveness = [(NetworkQualityResult *)results uplinkResponsiveness];
          [uplinkResponsiveness setValue:v133];

          v151 = MEMORY[0x277CCABB0];
          uplinkResponsiveness2 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          value2 = [uplinkResponsiveness2 value];
          v154 = [v151 numberWithLong:{+[NetworkQualityResult ratingForResponsivenessScore:](NetworkQualityResult, "ratingForResponsivenessScore:", objc_msgSend(value2, "integerValue"))}];
          uplinkResponsiveness3 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          [uplinkResponsiveness3 setRating:v154];

          uplinkResponsiveness4 = [(NetworkQualityResult *)self->super._results uplinkResponsiveness];
          [uplinkResponsiveness4 updateConfidence:{-[WorkingLatencyURLSessionDelegate currentResponsivenessConfidenceValue](self, "currentResponsivenessConfidenceValue")}];

          if (v115 >= 0.00000011921)
          {
            v142.n128_f32[0] = 60000.0 / v108;
            v157 = [MEMORY[0x277CCABB0] numberWithFloat:v142.n128_f64[0]];
            [(NetworkQualityResult *)self->super._results setUplinkTCPResponsiveness:v157];
          }

          HIDWORD(v158) = 872415232;
          v143.n128_f32[0] = v166;
          if (v166 >= 0.00000011921)
          {
            *&v158 = 60000.0 / v110;
            v159 = [MEMORY[0x277CCABB0] numberWithFloat:{v158, v143.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setUplinkTLSResponsiveness:v159];
          }

          HIDWORD(v160) = 872415232;
          v143.n128_f32[0] = reporta;
          if (reporta >= 0.00000011921)
          {
            *&v160 = 60000.0 / v112;
            v161 = [MEMORY[0x277CCABB0] numberWithFloat:{v160, v143.n128_f64[0]}];
            [(NetworkQualityResult *)self->super._results setUplinkHTTPForeignResponsiveness:v161];
          }

          v142.n128_u64[0] = 0x3400000034000000;
          v143.n128_f32[0] = v162;
          if (v162 < 0.00000011921)
          {
            goto LABEL_105;
          }

          v142.n128_f32[0] = 60000.0 / v114;
          v149 = [MEMORY[0x277CCABB0] numberWithFloat:{v142.n128_f64[0], v143.n128_f64[0]}];
          [(NetworkQualityResult *)self->super._results setUplinkHTTPSelfResponsiveness:v149];
        }

LABEL_105:
        if (self->_saturation_reached)
        {
          (*(self->super._completionHandler + 2))(v142, v143);
          (*(self->super._saturationHandler + 2))();
        }

        [(LatencyURLSessionDelegate *)self shareProgress];
        goto LABEL_108;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__0;
      *&buf[32] = __Block_byref_object_dispose__0;
      v195 = 0.0;
      v190 = 0;
      v191 = &v190;
      v192 = 0x2020000000;
      v193 = 0;
      v186 = 0;
      v187 = &v186;
      v188 = 0x2020000000;
      v189 = 0;
      v182 = 0;
      v183 = &v182;
      v184 = 0x2020000000;
      v185 = 0;
      enumerate_block[0] = MEMORY[0x277D85DD0];
      enumerate_block[1] = 3221225472;
      enumerate_block[2] = __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke;
      enumerate_block[3] = &unk_2799695D8;
      v178 = buf;
      v179 = &v190;
      v177 = metricsCopy;
      v180 = &v186;
      v181 = &v182;
      nw_establishment_report_enumerate_protocols(report, enumerate_block);
      if (*(v187 + 24) == 1)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183[3]];
        [obj addObject:v30];

        v31 = self->_tcpTmpArray;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183[3]];
        [(NSMutableArray *)v31 addObject:v32];
      }

      v33 = *(*&buf[8] + 40);
      v34 = MEMORY[0x25F873380]();
      if (MEMORY[0x25F873390](v33, v34))
      {
      }

      else
      {
        v36 = *(*&buf[8] + 40);
        v37 = nw_protocol_copy_quic_connection_definition();
        LODWORD(v36) = MEMORY[0x25F873390](v36, v37);

        if (!v36)
        {
LABEL_27:
          v174 = v167;
          v175 = v165;
          nw_establishment_report_enumerate_protocol_l4s_state();

          _Block_object_dispose(&v182, 8);
          _Block_object_dispose(&v186, 8);
          _Block_object_dispose(&v190, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_28;
        }
      }

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v191[3]];
      [requestStartDate addObject:v38];

      v39 = self->_tlsTmpArray;
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v191[3]];
      [(NSMutableArray *)v39 addObject:v40];

      goto LABEL_27;
    }
  }

LABEL_110:
}

uint64_t __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  if (([*(a1 + 32) isProxy] & 1) == 0)
  {
    v7 = nw_protocol_copy_tcp_definition();
    v8 = MEMORY[0x25F873390](v6, v7);

    if (v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }

  return 1;
}

uint64_t __79__WorkingLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke_2(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = nw_protocol_copy_tcp_definition();
  if (MEMORY[0x25F873390](v8, v9))
  {
  }

  else
  {
    v10 = nw_protocol_copy_quic_connection_definition();
    v11 = MEMORY[0x25F873390](v8, v10);

    if (!v11)
    {
      v21 = 1;
      goto LABEL_13;
    }
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_connection_client_accurate_ecn_state_to_string(a3)];
  v13 = [*(a1 + 32) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_286D22CA0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

  [*(a1 + 32) setObject:v15 forKey:v12];
  v16 = @"disabled";
  if (a5)
  {
    v16 = @"enabled";
  }

  v17 = *(a1 + 40);
  v18 = v16;
  v19 = [v17 objectForKey:v18];

  if (!v19)
  {
    v19 = &unk_286D22CA0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v19, "intValue") + 1}];

  [*(a1 + 40) setObject:v20 forKey:v18];
  v21 = 0;
LABEL_13:

  return v21;
}

- (int64_t)currentResponsivenessConfidenceValue
{
  if (!self->_probeLoadConnections)
  {
    return 1;
  }

  if (![(NetworkQualityExecutions *)self->super._execution throughputSaturated])
  {
    return 1;
  }

  if (self->_saturation_reached)
  {
    return 3;
  }

  return 2;
}

- (BOOL)checkLimits
{
  if (!self->super._saturationHandler)
  {
    return 0;
  }

  if (![(LatencyURLSessionDelegate *)self metExitCriteria])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v4 timeIntervalSinceDate:self->_current];
    if (v5 >= 0.2)
    {
      objc_storeStrong(&self->_current, v4);
      [(SaturationDetection *)self->_saturation getAverage];
      exitCriteriaCounter = self->super._exitCriteriaCounter;
      if (self->_exit_value >= v7)
      {
        if (exitCriteriaCounter >= 1)
        {
          v3 = 0;
          self->super._exitCriteriaCounter = 0;
          goto LABEL_7;
        }
      }

      else
      {
        self->super._exitCriteriaCounter = exitCriteriaCounter + 1;
        if ([(LatencyURLSessionDelegate *)self metExitCriteria])
        {
          (*(self->super._saturationHandler + 2))();
          [(LatencyURLSessionDelegate *)self shareProgress];
          v3 = 1;
          goto LABEL_7;
        }
      }
    }

    v3 = 0;
LABEL_7:

    return v3;
  }

  return 1;
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Load failed with error: %@", v2, v3, v4, v5, v6);
}

@end