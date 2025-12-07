@interface PCCProxyingDevice
- (BOOL)isFilenameReasonable:(id)reasonable;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PCCProxyingDevice)initWithEndpoint:(id)endpoint;
- (void)ack:(id)ack result:(BOOL)result error:(id)error;
- (void)addRequest:(id)request event:(id)event type:(id)type onComplete:(id)complete;
- (void)deliver:(id)deliver tasking:(id)tasking taskId:(id)id fromBlob:(id)blob;
- (void)diagnosticResultsEvent:(id)event type:(id)type result:(id)result;
- (void)finishRequest:(id)request result:(id)result;
- (void)finishRequestWithMessage:(id)message result:(id)result;
- (void)handleConnection:(BOOL)connection from:(id)from;
- (void)handleFile:(id)file from:(id)from metadata:(id)metadata;
- (void)handleMessage:(id)message from:(id)from;
- (void)listDevices:(id)devices;
- (void)request:(id)request logListWithOptions:(id)options onComplete:(id)complete;
- (void)request:(id)request transferGroupWithOptions:(id)options onComplete:(id)complete;
- (void)request:(id)request transferLog:(id)log withOptions:(id)options onComplete:(id)complete;
- (void)startRequest:(id)request message:(id)message onComplete:(id)complete;
- (void)startTimer;
- (void)summarizeLog:(id)log reason:(id)reason;
- (void)synchronize:(id)synchronize withOptions:(id)options onComplete:(id)complete;
- (void)updateProxiedDeviceMetadata:(id)metadata from:(id)from;
@end

@implementation PCCProxyingDevice

- (PCCProxyingDevice)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v21.receiver = self;
  v21.super_class = PCCProxyingDevice;
  v6 = [(PCCProxyingDevice *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_requestTimeout = 1200.0;
    v8 = objc_opt_new();
    reqById = v7->_reqById;
    v7->_reqById = v8;

    v10 = objc_opt_new();
    reqByTracker = v7->_reqByTracker;
    v7->_reqByTracker = v10;

    v12 = dispatch_queue_create("com.apple.ProxiedCrashCopier.request_queue", 0);
    request_queue = v7->_request_queue;
    v7->_request_queue = v12;

    v14 = dispatch_queue_create("com.apple.OSASyncProxy.conn_queue", 0);
    sync_proxy_queue = v7->_sync_proxy_queue;
    v7->_sync_proxy_queue = v14;

    objc_storeStrong(&v7->_endpoint, endpoint);
    [(PCCEndpoint *)v7->_endpoint runWithDelegate:v7];
    v16 = objc_opt_new();
    sync_summary = v7->_sync_summary;
    v7->_sync_summary = v16;

    v18 = objc_opt_new();
    tasking_summary = v7->_tasking_summary;
    v7->_tasking_summary = v18;
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_286EB66F0];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy _setQueue:self->_sync_proxy_queue];
  [connectionCopy resume];

  return 1;
}

- (void)listDevices:(id)devices
{
  endpoint = self->_endpoint;
  devicesCopy = devices;
  deviceIds = [(PCCEndpoint *)endpoint deviceIds];
  (*(devices + 2))(devicesCopy, deviceIds, 0);
}

- (void)synchronize:(id)synchronize withOptions:(id)options onComplete:(id)complete
{
  v50 = *MEMORY[0x277D85DE8];
  synchronizeCopy = synchronize;
  optionsCopy = options;
  completeCopy = complete;
  v11 = [(PCCEndpoint *)self->_endpoint synchronize:synchronizeCopy withOptions:optionsCopy];
  v12 = [optionsCopy objectForKeyedSubscript:@"remote"];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = *&optionsCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requesting remote synchronization with options: %@", buf, 0xCu);
    }

    v46[0] = @"messageType";
    v46[1] = @"options";
    v47[0] = @"synchronize";
    v47[1] = optionsCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    [(PCCProxyingDevice *)self startRequest:synchronizeCopy message:v14 onComplete:completeCopy];
LABEL_17:

    goto LABEL_18;
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"status"];
  bOOLValue2 = [v15 BOOLValue];

  if (bOOLValue2)
  {
    v44[0] = @"requesting";
    allValues = [(NSMutableDictionary *)self->_reqById allValues];
    v39 = [allValues valueForKey:@"description"];
    v45[0] = v39;
    v44[1] = @"tracking";
    allKeys = [(NSMutableDictionary *)self->_reqByTracker allKeys];
    v45[1] = allKeys;
    v44[2] = @"timeout";
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestTimeout];
    v45[2] = v37;
    v44[3] = @"timer";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_expiryTimer != 0];
    v45[3] = v36;
    v44[4] = @"transaction";
    v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_txn != 0];
    v45[4] = v35;
    v44[5] = @"files";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->file_count];
    v45[5] = v17;
    v44[6] = @"msgs";
    [MEMORY[0x277CCABB0] numberWithInt:self->msg_count];
    v19 = v18 = v11;
    v45[6] = v19;
    v44[7] = @"connections";
    v20 = [MEMORY[0x277CCABB0] numberWithInt:self->up_count];
    v45[7] = v20;
    v44[8] = @"requests";
    v21 = [MEMORY[0x277CCABB0] numberWithInt:self->request_count];
    v45[8] = v21;
    v44[9] = @"expirations";
    v22 = [MEMORY[0x277CCABB0] numberWithInt:self->expire_count];
    v45[9] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:10];
    (completeCopy)[2](completeCopy, v23, v18);

    v11 = v18;
    v24 = allValues;
LABEL_7:

    goto LABEL_18;
  }

  v25 = [optionsCopy objectForKey:@"set-expire"];

  if (v25)
  {
    v26 = [optionsCopy objectForKeyedSubscript:@"set-expire"];
    intValue = [v26 intValue];

    if (intValue <= 5)
    {
      v28 = 5;
    }

    else
    {
      v28 = intValue;
    }

    if (v28 >= 3600)
    {
      v28 = 3600;
    }

    self->_requestTimeout = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      requestTimeout = self->_requestTimeout;
      *buf = 134217984;
      v49 = requestTimeout;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestTimeout set to %.0f secs", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"requestTimeout set to %.0f secs", *&self->_requestTimeout];
    (completeCopy)[2](completeCopy, v14, v11);
    goto LABEL_17;
  }

  v30 = [optionsCopy objectForKeyedSubscript:@"test-expire"];
  bOOLValue3 = [v30 BOOLValue];

  v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (bOOLValue3)
  {
    if (v32)
    {
      v33 = self->_requestTimeout / 60.0;
      *buf = 134217984;
      v49 = v33;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "starting bogus request; wait for expiration in %.1f mins", buf, 0xCu);
    }

    [(PCCProxyingDevice *)self startRequest:synchronizeCopy message:&unk_286EB2350 onComplete:0];
    request_queue = self->_request_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PCCProxyingDevice_synchronize_withOptions_onComplete___block_invoke;
    block[3] = &unk_2799C0240;
    v43 = completeCopy;
    block[4] = self;
    v42 = v11;
    dispatch_async(request_queue, block);

    v24 = v43;
    goto LABEL_7;
  }

  if (v32)
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "local synchronization", buf, 2u);
  }

  (completeCopy)[2](completeCopy, @"local-Ok", v11);
LABEL_18:
}

void __56__PCCProxyingDevice_synchronize_withOptions_onComplete___block_invoke(void *a1)
{
  v2 = a1[6];
  v4 = [*(a1[4] + 32) allValues];
  v3 = [v4 valueForKey:@"description"];
  (*(v2 + 16))(v2, v3, a1[5]);
}

- (void)handleConnection:(BOOL)connection from:(id)from
{
  connectionCopy = connection;
  fromCopy = from;
  if (connectionCopy)
  {
    ++self->up_count;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "remote ProxiedDevice connected";
      v9 = &v11;
LABEL_6:
      _os_log_impl(&dword_25D12D000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "remote ProxiedDevice disconnected";
    v9 = &v10;
    goto LABEL_6;
  }
}

- (void)handleMessage:(id)message from:(id)from
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  fromCopy = from;
  ++self->msg_count;
  v8 = [messageCopy objectForKeyedSubscript:@"messageType"];
  if ([v8 isEqualToString:@"updateProxiedDeviceMetadata"])
  {
    v9 = [messageCopy objectForKeyedSubscript:@"deviceMetadata"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "updateProxiedDeviceMetadata:\n%@", buf, 0xCu);
    }

    if (!v9)
    {
      [PCCProxyingDevice handleMessage:from:];
    }

    [(PCCProxyingDevice *)self updateProxiedDeviceMetadata:v9 from:fromCopy];
    [(PCCProxyingDevice *)self finishRequestWithMessage:messageCopy result:v9];
  }

  else if ([v8 isEqualToString:@"jobStatus"])
  {
    v10 = [messageCopy objectForKeyedSubscript:@"error_domain"];
    if (v10 && (v11 = MEMORY[0x277CCA9B8], [messageCopy objectForKeyedSubscript:@"error_code"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "intValue"), objc_msgSend(messageCopy, "objectForKeyedSubscript:", @"error_info", *MEMORY[0x277CCA450]), v14 = objc_claimAutoreleasedReturnValue(), v20 = v14, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "errorWithDomain:code:userInfo:", v10, v13, v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v12, v16))
    {
      v17 = v16;
      v18 = v17;
    }

    else
    {
      v17 = [messageCopy objectForKeyedSubscript:@"content"];
      v18 = 0;
    }

    [(PCCProxyingDevice *)self finishRequestWithMessage:messageCopy result:v17];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = messageCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message %@", buf, 0xCu);
  }
}

- (void)summarizeLog:(id)log reason:(id)reason
{
  reasonCopy = reason;
  sync_summary = self->_sync_summary;
  logCopy = log;
  v8 = [(NSMutableDictionary *)sync_summary objectForKeyedSubscript:reasonCopy];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(NSMutableDictionary *)self->_sync_summary setObject:v8 forKeyedSubscript:reasonCopy];
  }

  if ([(__CFString *)logCopy length])
  {
    v9 = logCopy;
  }

  else
  {
    v9 = @"unknown";
  }

  [v8 _accumulateKey:v9 value:1];
}

- (BOOL)isFilenameReasonable:(id)reasonable
{
  v10 = *MEMORY[0x277D85DE8];
  reasonableCopy = reasonable;
  stringByStandardizingPath = [reasonableCopy stringByStandardizingPath];
  pathComponents = [stringByStandardizingPath pathComponents];

  v6 = [pathComponents count];
  if (v6 != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = reasonableCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED untrusted filename validation '%{public}@'", &v8, 0xCu);
  }

  return v6 == 1;
}

- (void)handleFile:(id)file from:(id)from metadata:(id)metadata
{
  v151[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  fromCopy = from;
  metadataCopy = metadata;
  ++self->file_count;
  v10 = objc_alloc(MEMORY[0x277D36B68]);
  path = [fileCopy path];
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  v13 = [v10 initWithPath:path forRouting:@"<sync>" usingConfig:mEMORY[0x277D36B80] options:&unk_286EB2378 error:0];

  [v13 closeFileStream];
  v120 = v13;
  bugType = [v13 bugType];
  v15 = 0x277CBE000;
  v117 = metadataCopy;
  selfCopy = self;
  v115 = fileCopy;
  if (![bugType isEqualToString:@"211"])
  {
    goto LABEL_7;
  }

  mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
  if (([mEMORY[0x277D36B80]2 optInApple] & 1) != 0 || (objc_msgSend(metadataCopy, "objectForKeyedSubscript:", @"device_class"), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [metadataCopy objectForKeyedSubscript:@"device_class"];
  if ([v19 intValue] == 7)
  {

    v15 = 0x277CBE000uLL;
    goto LABEL_6;
  }

  v62 = [metadataCopy objectForKeyedSubscript:@"dnu-override"];
  bOOLValue = [v62 BOOLValue];

  metadataCopy = v117;
  v15 = 0x277CBE000uLL;
  if ((bOOLValue & 1) == 0)
  {
    v64 = MEMORY[0x277CCA9B8];
    v132 = *MEMORY[0x277CCA450];
    v133 = @"failed opt-out";
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    v50 = [v64 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v65];

    [(PCCProxyingDevice *)self summarizeLog:@"211" reason:@"failed-opt-out"];
    v118 = 0;
    goto LABEL_61;
  }

LABEL_8:
  v20 = [metadataCopy objectForKeyedSubscript:@"proxied_dev"];
  v21 = [@"ProxiedDevice-" stringByAppendingString:v20];

  if ([(PCCProxyingDevice *)self isFilenameReasonable:v21])
  {
    v22 = [metadataCopy objectForKeyedSubscript:@"name"];
    if ([(PCCProxyingDevice *)self isFilenameReasonable:v22])
    {
      v112 = v22;
      v23 = [metadataCopy objectForKeyedSubscript:@"subdir"];
      v24 = MEMORY[0x277D36B80];
      mEMORY[0x277D36B80]3 = [MEMORY[0x277D36B80] sharedInstance];
      pathSubmission = [mEMORY[0x277D36B80]3 pathSubmission];
      v110 = v23;
      if (v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = &stru_286EAD908;
      }

      [v21 stringByAppendingPathComponent:v27];
      v28 = v21;
      v30 = v29 = v15;
      v150 = *MEMORY[0x277D36C60];
      v151[0] = MEMORY[0x277CBEC38];
      v31 = [*(v29 + 2752) dictionaryWithObjects:v151 forKeys:&v150 count:1];
      v32 = [v24 ensureUsablePath:pathSubmission component:v30 options:v31];

      if (v32)
      {
        v109 = v32;
        v33 = [v32 stringByAppendingPathComponent:v112];
        v34 = MEMORY[0x277CCACA8];
        mEMORY[0x277D36B80]4 = [MEMORY[0x277D36B80] sharedInstance];
        pathSubmission2 = [mEMORY[0x277D36B80]4 pathSubmission];
        v149[0] = pathSubmission2;
        v149[1] = v28;
        v149[2] = @"Retired";
        v149[3] = v112;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:4];
        [v34 pathWithComponents:v37];
        v39 = v38 = v28;

        [MEMORY[0x277CCAA00] defaultManager];
        v119 = v118 = v33;
        v148[0] = v33;
        v40 = [v33 stringByAppendingPathExtension:@"synced"];
        v148[1] = v40;
        v148[2] = v39;
        v108 = v39;
        v41 = [v39 stringByAppendingPathExtension:@"synced"];
        v148[3] = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:4];

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obj = v42;
        v43 = [obj countByEnumeratingWithState:&v126 objects:v147 count:16];
        metadataCopy = v117;
        v15 = v29;
        v21 = v38;
        if (v43)
        {
          v44 = v43;
          v45 = *v127;
LABEL_16:
          v46 = 0;
          while (1)
          {
            if (*v127 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v126 + 1) + 8 * v46);
            if ([v119 fileExistsAtPath:v47])
            {
              break;
            }

            if (v44 == ++v46)
            {
              v44 = [obj countByEnumeratingWithState:&v126 objects:v147 count:16];
              if (v44)
              {
                goto LABEL_16;
              }

              goto LABEL_35;
            }
          }

          pathExtension = [v118 pathExtension];
          v54 = [pathExtension isEqualToString:@"ips"];

          v55 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
          if (v54)
          {
            v56 = v109;
            if (v55)
            {
              *buf = 138543362;
              v141 = v47;
              _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Duplicate log detected at %{public}@", buf, 0xCu);
            }

            v57 = v47;

            v22 = v112;
            [(PCCProxyingDevice *)self summarizeLog:v112 reason:@"failed-duplicate"];
            v111 = 0;
            v58 = @"<unknown>";
            v118 = v57;
            v59 = v110;
            goto LABEL_57;
          }

          if (v55)
          {
            *buf = 138543362;
            v141 = v47;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "overwriting file at %{public}@", buf, 0xCu);
          }

          [v119 removeItemAtPath:v47 error:0];
        }

LABEL_35:

        path2 = [fileCopy path];
        v125 = 0;
        v67 = [v119 moveItemAtPath:path2 toPath:v118 error:&v125];
        v111 = v125;

        v68 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v67)
        {
          v22 = v112;
          if (v68)
          {
            *buf = 138543362;
            v141 = v118;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "incoming log %{public}@", buf, 0xCu);
          }

          [v120 rename:v118];
          v69 = v112;
          pathExtension2 = [v69 pathExtension];
          v71 = [pathExtension2 isEqualToString:@"synced"];

          if (v71)
          {
            stringByDeletingPathExtension = [v69 stringByDeletingPathExtension];

            v69 = stringByDeletingPathExtension;
          }

          pathExtension3 = [v69 pathExtension];
          v74 = [&unk_286EB2440 containsObject:pathExtension3];

          if (v74)
          {
            v106 = v69;
            v107 = v21;
            bugType2 = [v120 bugType];
            [(PCCProxyingDevice *)self receivedReport:v120 from:fromCopy metadata:v117];
            v75 = [v117 objectForKeyedSubscript:@"xattr_list"];
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v76 = [v75 countByEnumeratingWithState:&v121 objects:v146 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v122;
              v79 = MEMORY[0x277D86220];
              do
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v122 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v81 = *(*(&v121 + 1) + 8 * i);
                  v82 = [v75 objectForKeyedSubscript:v81];
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v141 = v81;
                    v142 = 2112;
                    v143 = v82;
                    _os_log_impl(&dword_25D12D000, v79, OS_LOG_TYPE_DEFAULT, "Adding xattr %@: %@", buf, 0x16u);
                  }

                  v83 = MEMORY[0x277D36B68];
                  filepath = [v120 filepath];
                  [v83 markFile:filepath withKey:objc_msgSend(v81 value:{"UTF8String"), objc_msgSend(v82, "UTF8String")}];
                }

                v77 = [v75 countByEnumeratingWithState:&v121 objects:v146 count:16];
              }

              while (v77);
            }

            fileCopy = v115;
            metadataCopy = v117;
            v22 = v112;
            self = selfCopy;
            v15 = 0x277CBE000;
            v69 = v106;
            v21 = v107;
            pathExtension4 = bugType2;
          }

          else
          {
            pathExtension4 = [v69 pathExtension];
          }

          [(PCCProxyingDevice *)self summarizeLog:pathExtension4 reason:@"received"];

          v58 = pathExtension4;
          v59 = v110;
        }

        else
        {
          v22 = v112;
          v59 = v110;
          if (v68)
          {
            *buf = 138543874;
            v141 = fileCopy;
            v142 = 2114;
            v143 = v118;
            v144 = 2114;
            v145 = v111;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED to activate %{public}@ -> %{public}@ : %{public}@", buf, 0x20u);
          }

          [(PCCProxyingDevice *)self summarizeLog:v112 reason:@"failed-move"];
          v58 = @"<unknown>";
        }

        v56 = v109;
LABEL_57:
      }

      else
      {
        v60 = MEMORY[0x277CCA9B8];
        v138 = *MEMORY[0x277CCA450];
        v139 = @"failed untrusted path validation";
        v61 = [*(v29 + 2752) dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        v111 = [v60 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v61];

        v56 = 0;
        v22 = v112;
        [(PCCProxyingDevice *)self summarizeLog:v112 reason:@"failed-path"];
        v118 = 0;
        metadataCopy = v117;
        v15 = v29;
        v21 = v28;
        v59 = v110;
      }

      v50 = v111;
    }

    else
    {
      v51 = MEMORY[0x277CCA9B8];
      v136 = *MEMORY[0x277CCA450];
      v137 = @"failed untrusted filename validation";
      v52 = [*(v15 + 2752) dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      v50 = [v51 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v52];

      [(PCCProxyingDevice *)self summarizeLog:@"<untrusted>" reason:@"failed-filename"];
      v118 = 0;
    }
  }

  else
  {
    v48 = MEMORY[0x277CCA9B8];
    v134 = *MEMORY[0x277CCA450];
    v135 = @"failed untrusted proxy validation";
    v49 = [*(v15 + 2752) dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v50 = [v48 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:6 userInfo:v49];

    [(PCCProxyingDevice *)self summarizeLog:@"<untrusted>" reason:@"failed-proxy-data"];
    v118 = 0;
  }

LABEL_61:
  v86 = v15;
  date = [MEMORY[0x277CBEAA8] date];
  lastTouch = self->_lastTouch;
  self->_lastTouch = date;

  if (v50 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PCCProxyingDevice handleFile:fileCopy from:fromCopy metadata:v50];
  }

  v89 = v50;
  v90 = [metadataCopy objectForKeyedSubscript:@"jobId"];
  v91 = [metadataCopy objectForKeyedSubscript:@"jobEvent"];
  v92 = [metadataCopy objectForKeyedSubscript:@"jobType"];
  v93 = [metadataCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v94 = [v93 objectForKeyedSubscript:@"jobStatus"];
  }

  else
  {
    v94 = 0;
  }

  if ([v94 BOOLValue])
  {
    v95 = @"<unsolicited>";
    v130[0] = @"jobId";
    v130[1] = @"jobType";
    v96 = @"xfer-file";
    if (v90)
    {
      v95 = v90;
    }

    if (v92)
    {
      v96 = v92;
    }

    v131[0] = v95;
    v131[1] = v96;
    v130[2] = @"jobEvent";
    v97 = @"<legacy>";
    if (v91)
    {
      v97 = v91;
    }

    v131[2] = v97;
    v98 = [*(v86 + 2752) dictionaryWithObjects:v131 forKeys:v130 count:3];
    v99 = v118;
    if (v89)
    {
      v100 = v89;
    }

    else
    {
      v100 = v118;
    }

    [(PCCProxyingDevice *)selfCopy finishRequestWithMessage:v98 result:v100];

    v101 = fromCopy;
    v102 = v117;
  }

  else
  {
    v101 = fromCopy;
    v102 = v117;
    v99 = v118;
    if (v90)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [PCCProxyingDevice handleFile:v93 from:? metadata:?];
      }

      if (v91)
      {
        v103 = v91;
      }

      else
      {
        v103 = @"unsolicited";
      }

      if (v92)
      {
        v104 = v92;
      }

      else
      {
        v104 = @"xfer-group";
      }

      [(PCCProxyingDevice *)selfCopy addRequest:v90 event:v103 type:v104 onComplete:0];
    }
  }
}

- (void)ack:(id)ack result:(BOOL)result error:(id)error
{
  ackCopy = ack;
  errorCopy = error;
  request_queue = self->_request_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__PCCProxyingDevice_ack_result_error___block_invoke;
  v13[3] = &unk_2799C01A0;
  v13[4] = self;
  v14 = ackCopy;
  resultCopy = result;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = ackCopy;
  dispatch_async(request_queue, v13);
}

void __38__PCCProxyingDevice_ack_result_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = [v3 type];
        v5 = [v3 jid];
        v6 = 138412546;
        v7 = v4;
        v8 = 2112;
        v9 = v5;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "request %@ (%@) acknowledged", &v6, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) finishRequest:v3 result:*(a1 + 48)];
    }

    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)updateProxiedDeviceMetadata:(id)metadata from:(id)from
{
  v63[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  fromCopy = from;
  v8 = [metadataCopy objectForKeyedSubscript:@"crashreporter_key"];
  selfCopy = self;
  if ([(PCCProxyingDevice *)self isFilenameReasonable:v8])
  {
    v9 = MEMORY[0x277D36B80];
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmission = [mEMORY[0x277D36B80] pathSubmission];
    if ([fromCopy isEqualToString:@"Bridge"])
    {
      v12 = @"Bridge";
    }

    else
    {
      v12 = v8;
    }

    v13 = [@"ProxiedDevice-" stringByAppendingString:v12];
    v62 = *MEMORY[0x277D36C60];
    v63[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v15 = [v9 ensureUsablePath:pathSubmission component:v13 options:v14];

    if (v15)
    {
      v44 = v15;
      v16 = [v15 stringByAppendingPathComponent:@"deviceMetadata.proxy"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "writing: %@", buf, 0xCu);
      }

      v17 = [metadataCopy mutableCopy];
      v18 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v20 = [v18 numberWithDouble:?];
      [v17 setObject:v20 forKeyedSubscript:@"proxyingDeviceTimeAtLastUpdate"];

      if (([v17 writeToFile:v16 atomically:1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FAILED to write metadata update: %@", buf, 0xCu);
      }

      if ((OSAIsRSDHost() & 1) == 0)
      {
        v39 = v17;
        v40 = v16;
        v41 = v8;
        v43 = fromCopy;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [metadataCopy objectForKeyedSubscript:@"currentTaskingIDByRouting"];
        allKeys = [v21 allKeys];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = allKeys;
        v23 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
        v24 = v44;
        if (v23)
        {
          v25 = v23;
          v26 = *v50;
          v42 = metadataCopy;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v50 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v49 + 1) + 8 * i);
              v29 = [metadataCopy objectForKeyedSubscript:@"currentTaskingIDByRouting"];
              v30 = [v29 objectForKeyedSubscript:v28];

              v31 = [v24 stringByAppendingPathComponent:@"tasking"];
              v32 = [v31 stringByAppendingPathExtension:v28];
              v33 = [v32 stringByAppendingPathExtension:@"proxy"];

              v48 = 0;
              if ([defaultManager fileExistsAtPath:v33 isDirectory:&v48] && (v48 & 1) == 0)
              {
                v34 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v33];
                v35 = [v34 objectForKeyedSubscript:@"taskingID"];
                v36 = v35;
                if (v35 && ([v35 isEqualToString:v30] & 1) == 0)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412802;
                    v56 = v28;
                    v57 = 2112;
                    v58 = v36;
                    v59 = 2112;
                    v60 = v30;
                    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updated staged tasking %@ '%@ <- %@'", buf, 0x20u);
                  }

                  v37 = [v34 objectForKeyedSubscript:@"payload"];
                  [(PCCProxyingDevice *)selfCopy deliver:v43 tasking:v28 taskId:v36 fromBlob:v37];

                  v53[0] = @"action";
                  v53[1] = @"taskId";
                  v54[0] = @"delivered";
                  v54[1] = v36;
                  v53[2] = @"blob";
                  v54[2] = v33;
                  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
                  [(NSMutableDictionary *)selfCopy->_tasking_summary setObject:v38 forKeyedSubscript:v28];

                  metadataCopy = v42;
                  v24 = v44;
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v56 = v28;
                  v57 = 2112;
                  v58 = v30;
                  _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no change staged tasking %@ '%@'", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v56 = v28;
                _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no staged tasking %@", buf, 0xCu);
              }
            }

            v25 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v25);
        }

        fromCopy = v43;
        v16 = v40;
        v8 = v41;
        v17 = v39;
      }

      v15 = v44;
    }
  }
}

- (void)deliver:(id)deliver tasking:(id)tasking taskId:(id)id fromBlob:(id)blob
{
  v24[3] = *MEMORY[0x277D85DE8];
  deliverCopy = deliver;
  taskingCopy = tasking;
  idCopy = id;
  blobCopy = blob;
  v23[0] = @"messageType";
  v23[1] = @"forRouting";
  v23[2] = @"withTaskingId";
  v24[0] = @"acceptTasking";
  v14 = @"-1";
  if (idCopy)
  {
    v14 = idCopy;
  }

  v24[1] = taskingCopy;
  v24[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v16 = [v15 mutableCopy];

  if (idCopy)
  {
    v17 = [(__CFString *)idCopy isEqualToString:@"-1"];
    if (blobCopy)
    {
      if ((v17 & 1) == 0)
      {
        [v16 setObject:blobCopy forKeyedSubscript:@"settings"];
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = @"acceptTasking";
    v21 = 2112;
    v22 = taskingCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "posted %@-%@", &v19, 0x16u);
  }

  v18 = [(PCCEndpoint *)self->_endpoint send:deliverCopy message:v16 error:0];
}

- (void)request:(id)request transferGroupWithOptions:(id)options onComplete:(id)complete
{
  v18[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completeCopy = complete;
  requestCopy = request;
  v11 = [optionsCopy objectForKeyedSubscript:@"allFiles"];
  bOOLValue = [v11 BOOLValue];

  v18[0] = @"initiateLogTransfer";
  v17[0] = @"messageType";
  v17[1] = @"allFiles";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v18[1] = v13;
  v17[2] = @"jobEvent";
  v14 = [optionsCopy objectForKeyedSubscript:@"event"];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"event"];
  }

  else
  {
    v15 = @"<unknown>";
  }

  v18[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [(PCCProxyingDevice *)self startRequest:requestCopy message:v16 onComplete:completeCopy];

  if (v14)
  {
  }
}

- (void)request:(id)request transferLog:(id)log withOptions:(id)options onComplete:(id)complete
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  logCopy = log;
  optionsCopy = options;
  completeCopy = complete;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = optionsCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "transferLog options %@", buf, 0xCu);
  }

  v14 = [optionsCopy objectForKeyedSubscript:{@"event", @"messageType", @"logFile", @"jobEvent", @"initiateLogTransfer", logCopy}];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"event"];
  }

  else
  {
    v15 = @"<unknown>";
  }

  v18[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:3];
  [(PCCProxyingDevice *)self startRequest:requestCopy message:v16 onComplete:completeCopy];

  if (v14)
  {
  }
}

- (void)request:(id)request logListWithOptions:(id)options onComplete:(id)complete
{
  v15[2] = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  requestCopy = request;
  v10 = [options objectForKeyedSubscript:@"path"];
  v11 = v10;
  v14[0] = @"messageType";
  v14[1] = @"path";
  v12 = &stru_286EAD908;
  if (v10)
  {
    v12 = v10;
  }

  v15[0] = @"initiateLogList";
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [(PCCProxyingDevice *)self startRequest:requestCopy message:v13 onComplete:completeCopy];
}

- (void)startRequest:(id)request message:(id)message onComplete:(id)complete
{
  requestCopy = request;
  messageCopy = message;
  completeCopy = complete;
  request_queue = self->_request_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__PCCProxyingDevice_startRequest_message_onComplete___block_invoke;
  v15[3] = &unk_2799C0268;
  v15[4] = self;
  v16 = messageCopy;
  v17 = requestCopy;
  v18 = completeCopy;
  v12 = completeCopy;
  v13 = requestCopy;
  v14 = messageCopy;
  dispatch_async(request_queue, v15);
}

void __53__PCCProxyingDevice_startRequest_message_onComplete___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 92);
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [*(a1 + 40) mutableCopy];
  [v5 setObject:v4 forKeyedSubscript:@"jobId"];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(a1 + 48);
  v17 = 0;
  v8 = [v6 send:v7 message:v5 error:&v17];
  v9 = v17;
  if (!v9)
  {
    v11 = [[PCCRequest alloc] initWithMessage:v5 options:0];
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = [v12 copy];
      [(PCCRequest *)v11 setCallback:v13];
    }

    [*(*(a1 + 32) + 32) setObject:v11 forKeyedSubscript:v4];
    if (v8)
    {
      [*(*(a1 + 32) + 40) setObject:v11 forKeyedSubscript:v8];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(PCCRequest *)v11 type];
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v4;
        v15 = MEMORY[0x277D86220];
        v16 = "request %@ (%@) enroute";
LABEL_11:
        _os_log_impl(&dword_25D12D000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PCCRequest *)v11 type];
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v4;
      v15 = MEMORY[0x277D86220];
      v16 = "request %@ (%@) sent";
      goto LABEL_11;
    }

    [*(a1 + 32) startTimer];

    goto LABEL_13;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

LABEL_13:

  objc_autoreleasePoolPop(v2);
}

- (void)addRequest:(id)request event:(id)event type:(id)type onComplete:(id)complete
{
  requestCopy = request;
  eventCopy = event;
  typeCopy = type;
  completeCopy = complete;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PCCProxyingDevice_addRequest_event_type_onComplete___block_invoke;
  block[3] = &unk_2799C0290;
  block[4] = self;
  v20 = requestCopy;
  v21 = eventCopy;
  v22 = typeCopy;
  v23 = completeCopy;
  v15 = completeCopy;
  v16 = typeCopy;
  v17 = eventCopy;
  v18 = requestCopy;
  dispatch_async(request_queue, block);
}

void __54__PCCProxyingDevice_addRequest_event_type_onComplete___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v3)
  {
    v4 = [PCCRequest alloc];
    v9 = *(a1 + 40);
    v8[0] = @"jobId";
    v8[1] = @"jobEvent";
    v8[2] = @"jobType";
    v10 = *(a1 + 56);
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:v8 count:3];
    v3 = [(PCCRequest *)v4 initWithMessage:v5 options:0];

    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = [v6 copy];
      [(PCCRequest *)v3 setCallback:v7];
    }

    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) startTimer];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)finishRequest:(id)request result:(id)result
{
  requestCopy = request;
  resultCopy = result;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PCCProxyingDevice_finishRequest_result___block_invoke;
  block[3] = &unk_2799C0178;
  v12 = requestCopy;
  v13 = resultCopy;
  selfCopy = self;
  v9 = resultCopy;
  v10 = requestCopy;
  dispatch_async(request_queue, block);
}

void __42__PCCProxyingDevice_finishRequest_result___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) type];
    v4 = [*(a1 + 32) jid];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = @"Ok";
    }

    *buf = 138412802;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "request %@ (%@) complete %@", buf, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) event];
  v8 = [*(a1 + 32) type];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = @"error";
  }

  else
  {
    v9 = @"success";
  }

  [v6 diagnosticResultsEvent:v7 type:v8 result:v9];

  v10 = *(*(a1 + 48) + 32);
  v11 = [*(a1 + 32) jid];
  [v10 removeObjectForKey:v11];

  v12 = [*(a1 + 32) callback];
  if (v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__PCCProxyingDevice_finishRequest_result___block_invoke_422;
    v19[3] = &unk_2799C02B8;
    v20 = *(a1 + 40);
    v21 = v12;
    dispatch_async(v13, v19);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "no handler installed?", buf, 2u);
  }

  v14 = *(a1 + 48);
  if (*(v14 + 48) && ![*(v14 + 32) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no outstanding requests; releasing transaction", buf, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 48) + 48));
    v15 = *(a1 + 48);
    v16 = *(v15 + 48);
    *(v15 + 48) = 0;

    v17 = *(a1 + 48);
    v18 = *(v17 + 56);
    *(v17 + 56) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void __42__PCCProxyingDevice_finishRequest_result___block_invoke_422(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_opt_class();
  objc_opt_isKindOfClass();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)finishRequestWithMessage:(id)message result:(id)result
{
  messageCopy = message;
  resultCopy = result;
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PCCProxyingDevice_finishRequestWithMessage_result___block_invoke;
  block[3] = &unk_2799C0178;
  v12 = messageCopy;
  v13 = resultCopy;
  selfCopy = self;
  v9 = resultCopy;
  v10 = messageCopy;
  dispatch_async(request_queue, block);
}

void __53__PCCProxyingDevice_finishRequestWithMessage_result___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"jobId"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"<unsolicited>"])
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:@"jobType"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = *(a1 + 40);
        }

        else
        {
          v6 = @"Ok";
        }

        v17 = 138412802;
        v18 = v4;
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "job %@ %@ completed %@", &v17, 0x20u);
      }

      v14 = *(a1 + 48);
      v15 = [*(a1 + 32) objectForKeyedSubscript:@"jobEvent"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = @"error";
      }

      else
      {
        v16 = @"success";
      }

      [v14 diagnosticResultsEvent:v15 type:v5 result:v16];

      goto LABEL_23;
    }

    v5 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:v4];
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown job id %@", &v17, 0xCu);
      }

      goto LABEL_23;
    }

LABEL_10:
    [*(a1 + 48) finishRequest:v5 result:*(a1 + 40)];
LABEL_23:

    goto LABEL_24;
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
  v8 = [v7 isEqualToString:@"updateProxiedDeviceMetadata"];

  if (v8)
  {
    v5 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:@"<unsolicited>"];
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
  v10 = [v9 isEqualToString:@"initiateLogList"];

  if ((v10 & 1) == 0)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"messageType"];
    v12 = [v11 isEqualToString:@"synchronize"];

    if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unknown finishing message %@", &v17, 0xCu);
    }
  }

LABEL_24:

  objc_autoreleasePoolPop(v2);
}

- (void)diagnosticResultsEvent:(id)event type:(id)type result:(id)result
{
  v36[4] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  typeCopy = type;
  resultCopy = result;
  if (([(__CFString *)typeCopy isEqualToString:@"xfer-group"]& 1) != 0 || ([(__CFString *)typeCopy isEqualToString:@"xfer-all"]& 1) != 0 || [(__CFString *)typeCopy isEqualToString:@"xfer-file"])
  {
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    appleInternal = [mEMORY[0x277D36B80] appleInternal];

    if (appleInternal)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v36[0] = date;
      v35[0] = @"time";
      v35[1] = @"version";
      mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
      buildVersion = [mEMORY[0x277D36B80]2 buildVersion];
      v15 = buildVersion;
      v16 = @"<unknown>";
      if (eventCopy)
      {
        v17 = eventCopy;
      }

      else
      {
        v17 = @"<unknown>";
      }

      v36[1] = buildVersion;
      v36[2] = v17;
      v35[2] = @"event";
      v35[3] = @"transfer";
      if (typeCopy)
      {
        v16 = typeCopy;
      }

      v33[0] = @"type";
      v33[1] = @"result";
      v34[0] = v16;
      v34[1] = resultCopy;
      v30 = resultCopy;
      v33[2] = @"summary";
      v34[2] = self->_sync_summary;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
      v36[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
      v20 = [v19 mutableCopy];

      if ([(NSMutableDictionary *)self->_tasking_summary count])
      {
        [v20 setObject:self->_tasking_summary forKeyedSubscript:@"taskings"];
      }

      mEMORY[0x277D36B80]3 = [MEMORY[0x277D36B80] sharedInstance];
      pathDiagnostics = [mEMORY[0x277D36B80]3 pathDiagnostics];
      v23 = MEMORY[0x277CCACA8];
      v24 = OSANSDateFormat();
      v25 = [v23 stringWithFormat:@"transfer-%@", v24];
      v26 = [pathDiagnostics stringByAppendingPathComponent:v25];
      v27 = [v26 stringByAppendingPathExtension:@"results"];

      if ([v20 writeToFile:v27 atomically:1])
      {
        resultCopy = v30;
      }

      else
      {
        resultCopy = v30;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to write results file, saving as txt", buf, 2u);
        }

        v28 = [v27 stringByAppendingPathExtension:@"txt"];

        v29 = [v20 description];
        [v29 writeToFile:v28 atomically:1 encoding:4 error:0];

        v27 = v28;
      }
    }

    [(NSMutableDictionary *)self->_sync_summary removeAllObjects];
    [(NSMutableDictionary *)self->_tasking_summary removeAllObjects];
  }
}

- (void)startTimer
{
  request_queue = self->_request_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PCCProxyingDevice_startTimer__block_invoke;
  block[3] = &unk_2799C0218;
  block[4] = self;
  dispatch_async(request_queue, block);
}

void __31__PCCProxyingDevice_startTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = *(a1 + 32);
  if (!*(v6 + 48))
  {
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 24));
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    v12 = dispatch_walltime(0, (*(v10 + 112) * 1000000000.0));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__PCCProxyingDevice_startTimer__block_invoke_2;
    handler[3] = &unk_2799C0218;
    handler[4] = v13;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(*(*(a1 + 32) + 48));
    if (*(*(a1 + 32) + 56))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v15 = MEMORY[0x277D86220];
        v16 = "re-starting request timer and extending transaction";
LABEL_7:
        _os_log_impl(&dword_25D12D000, v15, OS_LOG_TYPE_DEFAULT, v16, v20, 2u);
      }
    }

    else
    {
      v17 = os_transaction_create();
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = v17;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v15 = MEMORY[0x277D86220];
        v16 = "starting request timer and creating transaction";
        goto LABEL_7;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __31__PCCProxyingDevice_startTimer__block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) timeIntervalSinceNow];
  v3 = *(a1 + 32);
  if (fabs(v2) >= *(v3 + 112))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [*(v3 + 32) allValues];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      v12 = *MEMORY[0x277CCA450];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          ++*(*(a1 + 32) + 96);
          v15 = *(a1 + 32);
          v16 = MEMORY[0x277CCA9B8];
          v31 = v12;
          v32 = @"expired due to lack of progress";
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v18 = [v16 errorWithDomain:@"ProxyCompanionLogTransferErrorDomain" code:5 userInfo:v17];
          [v15 finishRequest:v14 result:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }

    [*(*(a1 + 32) + 40) removeAllObjects];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "request expiration event; releasing transaction";
    goto LABEL_17;
  }

  v4 = [*(v3 + 32) count];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v5)
    {
LABEL_18:
      v21 = *(a1 + 32);
      v22 = *(v21 + 56);
      *(v21 + 56) = 0;

      dispatch_source_cancel(*(*(a1 + 32) + 48));
      v23 = *(a1 + 32);
      v24 = *(v23 + 48);
      *(v23 + 48) = 0;

      return;
    }

    *buf = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "request expiration event (with no outstanding requests!); releasing transaction";
LABEL_17:
    _os_log_impl(&dword_25D12D000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_18;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "re-starting request timer thereby extending transaction", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v8 = dispatch_walltime(0, (*(v6 + 112) * 1000000000.0));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)handleFile:(uint64_t)a1 from:(uint64_t)a2 metadata:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138543874;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  v7 = 2114;
  v8 = a3;
  _os_log_error_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error handling %{public}@ from proxying device (%{public}@): %{public}@", &v3, 0x20u);
}

- (void)handleFile:(uint64_t)a1 from:metadata:.cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "file status update %@", &v1, 0xCu);
}

@end