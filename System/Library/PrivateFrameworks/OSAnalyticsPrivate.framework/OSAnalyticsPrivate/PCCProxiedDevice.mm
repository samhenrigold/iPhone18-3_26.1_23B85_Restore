@interface PCCProxiedDevice
- (BOOL)doWork:(id)work;
- (PCCProxiedDevice)initWithEndpoint:(id)endpoint;
- (void)acceptTaskingPayload:(id)payload forRouting:(id)routing withId:(id)id;
- (void)ack:(id)ack result:(BOOL)result error:(id)error;
- (void)finish:(id)finish target:(id)target event:(id)event type:(id)type result:(id)result;
- (void)handleConnection:(BOOL)connection from:(id)from;
- (void)handleFile:(id)file from:(id)from metadata:(id)metadata;
- (void)handleMessage:(id)message from:(id)from;
- (void)initiate:(id)initiate transferGroupWithOptions:(id)options job:(id)job;
- (void)initiate:(id)initiate transferLog:(id)log withOptions:(id)options job:(id)job;
- (void)sendDeviceMetadata:(id)metadata;
- (void)startTimer;
@end

@implementation PCCProxiedDevice

- (PCCProxiedDevice)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v13.receiver = self;
  v13.super_class = PCCProxiedDevice;
  v6 = [(PCCProxiedDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_jobTimeout = 1200.0;
    v8 = objc_opt_new();
    jobByTracker = v7->_jobByTracker;
    v7->_jobByTracker = v8;

    v10 = dispatch_queue_create("com.apple.ProxiedCrashCopier.job_queue", 0);
    job_queue = v7->_job_queue;
    v7->_job_queue = v10;

    objc_storeStrong(&v7->_endpoint, endpoint);
    [(PCCEndpoint *)v7->_endpoint runWithDelegate:v7];
  }

  return v7;
}

- (void)handleConnection:(BOOL)connection from:(id)from
{
  connectionCopy = connection;
  fromCopy = from;
  if (connectionCopy)
  {
    ++self->up_count;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    if (OSAIsConfiguredRSDDevice() && [standardUserDefaults BOOLForKey:@"disablePushOnConnection"])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping group transfer from proxy-configured device with disablePushOnConnection set", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote ProxyingDevice connected, initiating group xfer", v9, 2u);
      }

      [(PCCProxiedDevice *)self initiate:fromCopy transferGroupWithOptions:&unk_286EB2328 job:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote ProxyingDevice disconnected", v8, 2u);
  }
}

- (void)handleMessage:(id)message from:(id)from
{
  v105[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  fromCopy = from;
  ++self->msg_count;
  v8 = [(__CFString *)messageCopy objectForKeyedSubscript:@"messageType"];
  if ([v8 isEqualToString:@"initiateMetadataUpdate"])
  {
    v9 = messageCopy;
    v10 = [(__CFString *)messageCopy objectForKeyedSubscript:@"jobId"];
    v105[0] = @"updateProxiedDeviceMetadata";
    v104[0] = @"messageType";
    v104[1] = @"deviceMetadata";
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    metadata = [mEMORY[0x277D36B80] metadata];
    v13 = metadata;
    v104[2] = @"jobId";
    v14 = @"<unknown-job>";
    if (v10)
    {
      v14 = v10;
    }

    v105[1] = metadata;
    v105[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v95 = @"initiateMetadataUpdate";
      v96 = 2112;
      v97 = v10;
      v98 = 2112;
      v99 = @"updateProxiedDeviceMetadata";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@); posting %@", buf, 0x20u);
    }

    v16 = [(PCCEndpoint *)self->_endpoint send:fromCopy message:v15 error:0];

    messageCopy = v9;
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"acceptTasking"])
  {
    v17 = [(__CFString *)messageCopy objectForKeyedSubscript:@"forRouting"];
    v18 = [(__CFString *)messageCopy objectForKeyedSubscript:@"withTaskingId"];
    v19 = [(__CFString *)messageCopy objectForKeyedSubscript:@"settings"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v95 = @"acceptTasking";
      v96 = 2112;
      v97 = v17;
      v98 = 2112;
      v99 = v18;
      v100 = 2112;
      v101 = objc_opt_class();
      v102 = 2048;
      v103 = v19;
      v20 = v101;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@-%@ '%@' payload %@ %p", buf, 0x34u);
    }

    [(PCCProxiedDevice *)self acceptTaskingPayload:v19 forRouting:v17 withId:v18];

LABEL_23:
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"initiateLogTransfer"])
  {
    v17 = [(__CFString *)messageCopy objectForKeyedSubscript:@"jobId"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v95 = @"initiateLogTransfer";
      v96 = 2112;
      v97 = v17;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@)", buf, 0x16u);
    }

    v18 = [(__CFString *)messageCopy objectForKeyedSubscript:@"logFile"];
    if (v18)
    {
      [(PCCProxiedDevice *)self initiate:fromCopy transferLog:v18 withOptions:messageCopy job:v17];
    }

    else
    {
      [(PCCProxiedDevice *)self initiate:fromCopy transferGroupWithOptions:messageCopy job:v17];
    }

    goto LABEL_23;
  }

  if ([v8 isEqualToString:@"initiateLogList"])
  {
    v21 = [(__CFString *)messageCopy objectForKeyedSubscript:@"jobId"];
    v22 = objc_opt_new();
    v69 = messageCopy;
    v23 = [(__CFString *)messageCopy objectForKeyedSubscript:@"path"];
    v71 = fromCopy;
    v67 = v23;
    if ([v23 length])
    {
      v92 = *MEMORY[0x277D36C48];
      v93 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    }

    else
    {
      v24 = 0;
    }

    v36 = MEMORY[0x277D36B68];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __39__PCCProxiedDevice_handleMessage_from___block_invoke;
    v79[3] = &unk_2799C0150;
    v37 = v22;
    v80 = v37;
    v66 = v24;
    [v36 iterateLogsWithOptions:v24 usingBlock:v79];
    v38 = v21;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v37 count];
      *buf = 138413058;
      v95 = @"initiateLogList";
      v96 = 2112;
      v97 = v21;
      v98 = 2112;
      v99 = @"jobStatus";
      v100 = 2048;
      v101 = v39;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "received request %@ (%@); posting %@ %lu logs", buf, 0x2Au);
    }

    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v37, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v41 = v37;
    v42 = [v41 countByEnumeratingWithState:&v75 objects:v91 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v76;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(v41);
          }

          path = [*(*(&v75 + 1) + 8 * i) path];
          [v40 addObject:path];
        }

        v43 = [v41 countByEnumeratingWithState:&v75 objects:v91 count:16];
      }

      while (v43);
    }

    v89[0] = @"messageType";
    v89[1] = @"jobType";
    v90[0] = @"jobStatus";
    v90[1] = @"initiateLogList";
    v89[2] = @"jobId";
    v89[3] = @"content";
    v90[2] = v38;
    v90[3] = v40;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:4];
    fromCopy = v71;
    v48 = [(PCCEndpoint *)self->_endpoint send:v71 message:v47 error:0];

    messageCopy = v69;
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"synchronize"])
  {
    v25 = [(__CFString *)messageCopy objectForKeyedSubscript:@"jobId"];
    v70 = [(__CFString *)messageCopy objectForKeyedSubscript:@"options"];
    v26 = [v70 objectForKeyedSubscript:@"status"];
    bOOLValue = [v26 BOOLValue];

    if (bOOLValue)
    {
      v87[0] = @"messageType";
      v87[1] = @"jobType";
      v88[0] = @"jobStatus";
      v88[1] = @"synchronize";
      v88[2] = v25;
      v87[2] = @"jobId";
      v87[3] = @"content";
      v85[0] = @"tracking";
      allValues = [(NSMutableDictionary *)self->_jobByTracker allValues];
      v64 = [allValues valueForKey:@"description"];
      v86[0] = v64;
      v85[1] = @"timeout";
      v63 = [MEMORY[0x277CCABB0] numberWithDouble:self->_jobTimeout];
      v86[1] = v63;
      v85[2] = @"timer";
      v62 = [MEMORY[0x277CCABB0] numberWithInt:self->_expiryTimer != 0];
      v86[2] = v62;
      v85[3] = @"transaction";
      v61 = [MEMORY[0x277CCABB0] numberWithInt:self->_txn != 0];
      v86[3] = v61;
      v85[4] = @"files";
      v60 = [MEMORY[0x277CCABB0] numberWithInt:self->file_count];
      v86[4] = v60;
      v85[5] = @"msgs";
      v28 = [MEMORY[0x277CCABB0] numberWithInt:self->msg_count];
      v86[5] = v28;
      v85[6] = @"connections";
      v29 = [MEMORY[0x277CCABB0] numberWithInt:self->up_count];
      v86[6] = v29;
      v85[7] = @"jobs";
      [MEMORY[0x277CCABB0] numberWithInt:self->job_count];
      v68 = v25;
      v31 = v30 = messageCopy;
      v86[7] = v31;
      v85[8] = @"expirations";
      v32 = [MEMORY[0x277CCABB0] numberWithInt:self->expire_count];
      v86[8] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:9];
      v88[3] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];

      messageCopy = v30;
      v25 = v68;

      v35 = [(PCCEndpoint *)self->_endpoint send:fromCopy message:v34 error:0];
LABEL_52:

      goto LABEL_24;
    }

    v49 = [v70 objectForKey:@"set-expire"];

    if (v49)
    {
      v50 = [v70 objectForKeyedSubscript:@"set-expire"];
      intValue = [v50 intValue];

      if (intValue <= 5)
      {
        v52 = 5;
      }

      else
      {
        v52 = intValue;
      }

      if (v52 >= 3600)
      {
        v52 = 3600;
      }

      self->_jobTimeout = v52;
      v83[0] = @"messageType";
      v83[1] = @"jobType";
      v84[0] = @"jobStatus";
      v84[1] = @"synchronize";
      v84[2] = v25;
      v83[2] = @"jobId";
      v83[3] = @"content";
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"jobTimeout set to %.0f secs", v52];
      v84[3] = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:4];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        jobTimeout = self->_jobTimeout;
        *buf = 134217984;
        v95 = *&jobTimeout;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "jobTimeout set to %.0f secs", buf, 0xCu);
      }
    }

    else
    {
      v56 = [v70 objectForKeyedSubscript:@"test-expire"];
      bOOLValue2 = [v56 BOOLValue];

      if (bOOLValue2)
      {
        job_queue = self->_job_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__PCCProxiedDevice_handleMessage_from___block_invoke_125;
        block[3] = &unk_2799C0178;
        block[4] = self;
        v73 = v25;
        v74 = fromCopy;
        dispatch_async(job_queue, block);

        goto LABEL_52;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "remote synchronization", buf, 2u);
      }

      v81[0] = @"messageType";
      v81[1] = @"jobType";
      v82[0] = @"jobStatus";
      v82[1] = @"synchronize";
      v81[2] = @"jobId";
      v81[3] = @"content";
      v82[2] = v25;
      v82[3] = @"remote-Ok";
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
    }

    v59 = [(PCCEndpoint *)self->_endpoint send:fromCopy message:v54 error:0];

    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = messageCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message %@", buf, 0xCu);
  }

LABEL_24:
}

void __39__PCCProxiedDevice_handleMessage_from___block_invoke_125(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1 + 32) + 80) / 60.0;
    *buf = 134217984;
    v11 = v2;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting bogus job; wait for expiration in %.1f mins", buf, 0xCu);
  }

  v3 = [[PCCJob alloc] initWithID:*(a1 + 40) forTarget:*(a1 + 48) options:0];
  [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:@"<bogus-tracker>"];
  [*(a1 + 32) startTimer];
  v4 = [*(*(a1 + 32) + 32) allValues];
  v5 = [v4 valueForKey:@"description"];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:4];

  v7 = [*(*(a1 + 32) + 8) send:*(a1 + 48) message:v6 error:0];
}

- (void)handleFile:(id)file from:(id)from metadata:(id)metadata
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCProxiedDevice handleFile:from:metadata:];
  }
}

- (void)sendDeviceMetadata:(id)metadata
{
  v12[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v11[0] = @"messageType";
  v11[1] = @"deviceMetadata";
  v12[0] = @"updateProxiedDeviceMetadata";
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  metadata = [mEMORY[0x277D36B80] metadata];
  v12[1] = metadata;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"updateProxiedDeviceMetadata";
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "posted %@ (unsolicited)", &v9, 0xCu);
  }

  v8 = [(PCCEndpoint *)self->_endpoint send:metadataCopy message:v7 error:0];
}

- (void)acceptTaskingPayload:(id)payload forRouting:(id)routing withId:(id)id
{
  v19[2] = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  routingCopy = routing;
  idCopy = id;
  if (OSAIsRSDDevice())
  {
    goto LABEL_2;
  }

  if ([@"-1" isEqualToString:idCopy])
  {
    goto LABEL_4;
  }

  if (([routingCopy isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(routingCopy, "isEqualToString:", @"ca1-ohttp"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_2:
      v10 = payloadCopy;
      payloadCopy = v10;
LABEL_5:
      v11 = [MEMORY[0x277D36B88] applyTasking:routingCopy taskId:idCopy fromBlob:v10];
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown payload format for ca1 routing", buf, 2u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18[0] = @"PayloadContent";
    v18[1] = @"PayloadType";
    v19[0] = payloadCopy;
    v19[1] = @"Configuration";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    payloadCopy = v12;
  }

  v15 = 0;
  v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:payloadCopy format:200 options:0 error:&v15];
  v14 = v15;
  v10 = v14;
  if (v13)
  {

    v10 = v13;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Serialization of settings to plist failed: %@", buf, 0xCu);
  }

LABEL_6:
}

- (void)ack:(id)ack result:(BOOL)result error:(id)error
{
  ackCopy = ack;
  errorCopy = error;
  if (ackCopy)
  {
    job_queue = self->_job_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__PCCProxiedDevice_ack_result_error___block_invoke;
    v11[3] = &unk_2799C01A0;
    v11[4] = self;
    v12 = ackCopy;
    resultCopy = result;
    v13 = errorCopy;
    dispatch_async(job_queue, v11);
  }
}

void __37__PCCProxiedDevice_ack_result_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    [v3 registerResult:*(a1 + 56) error:*(a1 + 48)];
    [*(a1 + 32) doWork:v3];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)initiate:(id)initiate transferGroupWithOptions:(id)options job:(id)job
{
  initiateCopy = initiate;
  optionsCopy = options;
  jobCopy = @"<unsolicited>";
  if (job)
  {
    jobCopy = job;
  }

  v11 = jobCopy;
  job_queue = self->_job_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PCCProxiedDevice_initiate_transferGroupWithOptions_job___block_invoke;
  v16[3] = &unk_2799C01C8;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = v11;
  v20 = initiateCopy;
  v13 = initiateCopy;
  v14 = v11;
  v15 = optionsCopy;
  dispatch_async(job_queue, v16);
}

void __58__PCCProxiedDevice_initiate_transferGroupWithOptions_job___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"allFiles"];
  v4 = [v3 BOOLValue];

  if (*(*(a1 + 40) + 24))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"event"];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 objectForKeyedSubscript:@"event"];
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:@"jobEvent"];
      if (v12)
      {
        v7 = [*(a1 + 32) objectForKeyedSubscript:@"jobEvent"];
      }

      else
      {
        v7 = @"<unknown>";
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = [*(*(a1 + 40) + 24) jid];
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "declining job %{public}@; group transfer already in progress (%{public}@)", buf, 0x16u);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    if (v4)
    {
      v18 = @"xfer-all";
    }

    else
    {
      v18 = @"xfer-group";
    }

    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"group transfer already in progress";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v21 = [v19 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:5 userInfo:v20];
    [v15 finish:v16 target:v17 event:v7 type:v18 result:v21];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"standard";
      v9 = *(a1 + 48);
      if (v4)
      {
        v8 = @"all";
      }

      *buf = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting job %{public}@, transfer group '%@'", buf, 0x16u);
    }

    ++*(*(a1 + 40) + 68);
    v7 = *(a1 + 32);
    if (*(*(a1 + 40) + 76) == 1)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = [v10 mutableCopy];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v22 = v11;
      [(__CFString *)v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"<preserve>"];

      v7 = v22;
    }

    v20 = [[PCCGroupJob alloc] initWithID:*(a1 + 48) forTarget:*(a1 + 56) options:v7];
    if ([*(a1 + 40) doWork:v20])
    {
      objc_storeStrong((*(a1 + 40) + 24), v20);
      [*(a1 + 40) startTimer];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)initiate:(id)initiate transferLog:(id)log withOptions:(id)options job:(id)job
{
  initiateCopy = initiate;
  logCopy = log;
  optionsCopy = options;
  jobCopy = @"<unsolicited>";
  if (job)
  {
    jobCopy = job;
  }

  v14 = jobCopy;
  job_queue = self->_job_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PCCProxiedDevice_initiate_transferLog_withOptions_job___block_invoke;
  block[3] = &unk_2799C01F0;
  block[4] = self;
  v21 = optionsCopy;
  v22 = v14;
  v23 = initiateCopy;
  v24 = logCopy;
  v16 = logCopy;
  v17 = initiateCopy;
  v18 = v14;
  v19 = optionsCopy;
  dispatch_async(job_queue, block);
}

void __57__PCCProxiedDevice_initiate_transferLog_withOptions_job___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  ++*(*(a1 + 32) + 68);
  v3 = *(a1 + 40);
  if (*(*(a1 + 32) + 76) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = [v4 mutableCopy];
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"<preserve>"];

    v3 = v6;
  }

  v7 = [[PCCJob alloc] initWithID:*(a1 + 48) forTarget:*(a1 + 56) options:v3 forFile:*(a1 + 64)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = [(PCCJob *)v7 type];
    v10 = *(a1 + 64);
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting job %{public}@, %{public}@ '%{public}@'", &v11, 0x20u);
  }

  if ([*(a1 + 32) doWork:v7])
  {
    [*(a1 + 32) startTimer];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)doWork:(id)work
{
  v39[1] = *MEMORY[0x277D85DE8];
  workCopy = work;
  nextFilepath = [(PCCJob *)workCopy nextFilepath];

  if (nextFilepath)
  {
    ++self->file_count;
    options = [(PCCJob *)workCopy options];
    v7 = [options objectForKeyedSubscript:@"allFiles"];
    if ([v7 BOOLValue])
    {
      v8 = 1200;
    }

    else
    {
      v8 = 0;
    }

    [(PCCEndpoint *)self->_endpoint setFileTimeout:v8];

    endpoint = self->_endpoint;
    target = [(PCCJob *)workCopy target];
    v11 = MEMORY[0x277CBEBC0];
    nextFilepath2 = [(PCCJob *)workCopy nextFilepath];
    v13 = [v11 fileURLWithPath:nextFilepath2];
    metadata = [(PCCJob *)workCopy metadata];
    v33 = 0;
    v15 = [(PCCEndpoint *)endpoint send:target file:v13 metadata:metadata error:&v33];
    v16 = v33;

    if (v15)
    {
      [(NSMutableDictionary *)self->_jobByTracker setObject:workCopy forKeyedSubscript:v15];
      v17 = workCopy != 0;
    }

    else
    {
      if (!v16)
      {
        v24 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39[0] = @"no send tracking id";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        v16 = [v24 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:4 userInfo:v25];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(PCCJob *)workCopy jid];
        *buf = 138412546;
        v35 = v26;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "aborting job %@; file send failure: %@", buf, 0x16u);
      }

      v27 = [(PCCJob *)workCopy jid];
      target2 = [(PCCJob *)workCopy target];
      event = [(PCCJob *)workCopy event];
      type = [(PCCGroupJob *)workCopy type];
      [(PCCProxiedDevice *)self finish:v27 target:target2 event:event type:type result:v16];

      groupXferJob = self->_groupXferJob;
      if (groupXferJob == workCopy)
      {
        self->_groupXferJob = 0;
      }

      v17 = 0;
    }
  }

  else
  {
    v18 = [(PCCJob *)workCopy jid];
    target3 = [(PCCJob *)workCopy target];
    event2 = [(PCCJob *)workCopy event];
    type2 = [(PCCGroupJob *)workCopy type];
    result = [(PCCGroupJob *)workCopy result];
    [(PCCProxiedDevice *)self finish:v18 target:target3 event:event2 type:type2 result:result];

    v23 = self->_groupXferJob;
    if (v23 == workCopy)
    {
      self->_groupXferJob = 0;
    }

    return 0;
  }

  return v17;
}

- (void)finish:(id)finish target:(id)target event:(id)event type:(id)type result:(id)result
{
  v35[4] = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  targetCopy = target;
  eventCopy = event;
  typeCopy = type;
  resultCopy = result;
  if (resultCopy)
  {
    v34[0] = @"messageType";
    v34[1] = @"jobId";
    v35[0] = @"jobStatus";
    v35[1] = finishCopy;
    v34[2] = @"jobEvent";
    v34[3] = @"jobType";
    v35[2] = eventCopy;
    v35[3] = typeCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v18 = [v17 mutableCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = resultCopy;
      domain = [(__CFString *)v19 domain];
      [v18 setObject:domain forKeyedSubscript:@"error_domain"];

      v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString code](v19, "code")}];
      [v18 setObject:v21 forKeyedSubscript:@"error_code"];

      userInfo = [(__CFString *)v19 userInfo];

      [v18 setObject:userInfo forKeyedSubscript:@"error_info"];
    }

    else
    {
      [v18 setObject:resultCopy forKeyedSubscript:@"content"];
    }

    v23 = [(PCCEndpoint *)self->_endpoint send:targetCopy message:v18 error:0];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v25 = @"Ok";
    if (isKindOfClass)
    {
      v25 = resultCopy;
    }

    v30 = 138412546;
    v31 = finishCopy;
    v32 = 2112;
    v33 = v25;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "completed job %@: %@", &v30, 0x16u);
  }

  if (![(NSMutableDictionary *)self->_jobByTracker count])
  {
    expiryTimer = self->_expiryTimer;
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (expiryTimer)
    {
      if (v27)
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding jobs; releasing transaction", &v30, 2u);
      }

      dispatch_source_cancel(self->_expiryTimer);
      v28 = self->_expiryTimer;
      self->_expiryTimer = 0;

      txn = self->_txn;
      self->_txn = 0;
    }

    else if (v27)
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding jobs (and no transactions were in play)", &v30, 2u);
    }
  }
}

- (void)startTimer
{
  job_queue = self->_job_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PCCProxiedDevice_startTimer__block_invoke;
  block[3] = &unk_2799C0218;
  block[4] = self;
  dispatch_async(job_queue, block);
}

void __30__PCCProxiedDevice_startTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!*(v3 + 40))
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v9 = dispatch_walltime(0, (*(v7 + 80) * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__PCCProxiedDevice_startTimer__block_invoke_2;
    handler[3] = &unk_2799C0218;
    handler[4] = v10;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(*(*(a1 + 32) + 40));
    if (*(*(a1 + 32) + 48))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "re-starting job timer and extending transaction";
LABEL_7:
        _os_log_impl(&dword_25D12D000, v12, OS_LOG_TYPE_DEFAULT, v13, v17, 2u);
      }
    }

    else
    {
      v14 = os_transaction_create();
      v15 = *(a1 + 32);
      v16 = *(v15 + 48);
      *(v15 + 48) = v14;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "starting job timer and creating transaction";
        goto LABEL_7;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __30__PCCProxiedDevice_startTimer__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v40 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(*(a1 + 32) + 40));
  v2 = *(v1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v29 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(*(v1 + 32) + 32);
  v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v27 = v1;
    v28 = *MEMORY[0x277CCA450];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v8];
        v10 = [v9 lastTouch];
        [v10 timeIntervalSinceNow];
        v12 = fabs(v11);
        v13 = *(*(v1 + 32) + 80);

        if (v12 > v13)
        {
          ++*(*(v1 + 32) + 72);
          [v29 addObject:v8];
          v31 = *(v1 + 32);
          v14 = [v9 jid];
          v15 = [v9 target];
          v16 = [v9 event];
          v17 = [v9 type];
          v18 = v6;
          v19 = MEMORY[0x277CCA9B8];
          v37 = v28;
          v38 = @"job expired due to lack of progress";
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v21 = v20 = v5;
          v22 = [v19 errorWithDomain:@"ProxyGizmoLogTransferErrorDomain" code:5 userInfo:v21];
          [v31 finish:v14 target:v15 event:v16 type:v17 result:v22];

          v6 = v18;
          v1 = v27;

          v5 = v20;
          v23 = *(v27 + 32);
          v24 = *(v23 + 24);
          if (v9 == v24)
          {
            *(v23 + 24) = 0;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  [*(*(v1 + 32) + 32) removeObjectsForKeys:v29];
  if ([*(*(v1 + 32) + 32) count])
  {
    [*(v1 + 32) startTimer];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "job expiration event; releasing transaction", buf, 2u);
    }

    v25 = *(v1 + 32);
    v26 = *(v25 + 48);
    *(v25 + 48) = 0;
  }
}

@end