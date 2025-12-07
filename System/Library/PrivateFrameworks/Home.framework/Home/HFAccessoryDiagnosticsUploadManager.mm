@interface HFAccessoryDiagnosticsUploadManager
+ (id)sharedManager;
- (BOOL)_didPreviouslySubmitLog:(id)log;
- (BOOL)_isValidFilenameIdentifier:(id)identifier;
- (BOOL)_needsToPurgeOldLogs;
- (HFAccessoryDiagnosticsUploadManager)init;
- (id)_nextFilenameIdentifierToProcess;
- (id)filePathForIdentifier:(id)identifier;
- (id)fileURLForIdentifier:(id)identifier;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)_addToPendingUploads:(id)uploads;
- (void)_cleanUpLocalFilesForIdentifier:(id)identifier;
- (void)_failAttemptToUploadCurrentIdentifier;
- (void)_finalizeHandlingOfIdentifier:(id)identifier;
- (void)_submitNextPendingLog;
- (void)_updatePreviousLogIdentifiers:(id)identifiers forKey:(id)key;
- (void)purgeStaleSubmittedLogs;
- (void)resumeServiceForURLSessionIdentifier:(id)identifier;
- (void)updateLastPurgeDate;
- (void)uploadDiagnosticLogUsingItem:(id)item;
- (void)willResignActive:(id)active;
@end

@implementation HFAccessoryDiagnosticsUploadManager

+ (id)sharedManager
{
  if (qword_280E02CD8 != -1)
  {
    dispatch_once(&qword_280E02CD8, &__block_literal_global_37);
  }

  v3 = _MergedGlobals_228;

  return v3;
}

void __52__HFAccessoryDiagnosticsUploadManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HFAccessoryDiagnosticsUploadManager);
  v1 = _MergedGlobals_228;
  _MergedGlobals_228 = v0;
}

- (HFAccessoryDiagnosticsUploadManager)init
{
  v16.receiver = self;
  v16.super_class = HFAccessoryDiagnosticsUploadManager;
  v2 = [(HFAccessoryDiagnosticsUploadManager *)&v16 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    pendingIdentifiers = v2->_pendingIdentifiers;
    v2->_pendingIdentifiers = orderedSet;

    v5 = [MEMORY[0x277CBEB58] set];
    uploadedIdentifiers = v2->_uploadedIdentifiers;
    v2->_uploadedIdentifiers = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    failedUploadIdentifiers = v2->_failedUploadIdentifiers;
    v2->_failedUploadIdentifiers = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    diagnosticItems = v2->_diagnosticItems;
    v2->_diagnosticItems = dictionary;

    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Accessory Diagnostics Upload service started", v15, 2u);
    }

    v12 = +[HFAccessoryDiagnosticsUploadManager backgroundURLSessionIdentifier];
    [(HFAccessoryDiagnosticsUploadManager *)v2 resumeServiceForURLSessionIdentifier:v12];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];
  }

  return v2;
}

- (void)resumeServiceForURLSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundSession = [(HFAccessoryDiagnosticsUploadManager *)self backgroundSession];
  configuration = [backgroundSession configuration];
  identifier = [configuration identifier];
  v7 = [identifier isEqualToString:identifierCopy];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:identifierCopy];
    v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:self delegateQueue:0];
    [(HFAccessoryDiagnosticsUploadManager *)self setBackgroundSession:v9];
  }
}

- (void)uploadDiagnosticLogUsingItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([itemCopy isEligibleForUpload] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    filename = [itemCopy filename];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryDiagnosticsUploadManager.m" lineNumber:102 description:{@"Attempting to upload a diagnostic item that is not eligible for uploading. Log: (%@)", filename}];
  }

  filename2 = [itemCopy filename];
  v7 = [(HFAccessoryDiagnosticsUploadManager *)self _didPreviouslySubmitLog:filename2];

  if (!v7)
  {
    filename3 = [itemCopy filename];
    metadata = [itemCopy metadata];
    diagnosticItems = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
    [diagnosticItems setObject:metadata forKeyedSubscript:filename3];

    [(HFAccessoryDiagnosticsUploadManager *)self _addToPendingUploads:filename3];
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      metadata2 = [itemCopy metadata];
      uploadDestination = [metadata2 uploadDestination];
      *buf = 138412546;
      v19 = filename3;
      v20 = 2112;
      v21 = uploadDestination;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Accessory Diagnostics upload requested for log %@  to URL %@", buf, 0x16u);
    }
  }

  pendingIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v15 = [pendingIdentifiers count];

  if (v15 <= 1)
  {
    [(HFAccessoryDiagnosticsUploadManager *)self _submitNextPendingLog];
  }
}

- (id)fileURLForIdentifier:(id)identifier
{
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:identifier];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filePathForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  diagnosticItems = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
  v6 = [diagnosticItems objectForKey:identifierCopy];

  snapshotPath = [v6 snapshotPath];

  return snapshotPath;
}

- (id)_nextFilenameIdentifierToProcess
{
  pendingIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  firstObject = [pendingIdentifiers firstObject];

  return firstObject;
}

- (void)_submitNextPendingLog
{
  v34 = *MEMORY[0x277D85DE8];
  _nextFilenameIdentifierToProcess = [(HFAccessoryDiagnosticsUploadManager *)self _nextFilenameIdentifierToProcess];
  if (_nextFilenameIdentifierToProcess)
  {
    diagnosticItems = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
    v5 = [diagnosticItems objectForKey:_nextFilenameIdentifierToProcess];

    snapshotPath = [v5 snapshotPath];
    hf_serviceURLWithParameters = [v5 hf_serviceURLWithParameters];
    if (hf_serviceURLWithParameters && snapshotPath)
    {
      v8 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = snapshotPath;
        v30 = 2112;
        v31 = hf_serviceURLWithParameters;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Preparing to upload %@ to %@", buf, 0x16u);
      }

      lastPathComponent = [snapshotPath lastPathComponent];
      v10 = NSTemporaryDirectory();
      v26 = lastPathComponent;
      v11 = [v10 stringByAppendingPathComponent:lastPathComponent];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v25 = defaultManager;
      if ([defaultManager fileExistsAtPath:v11])
      {
        v24 = 0;
      }

      else
      {
        v27 = 0;
        v13 = [defaultManager copyItemAtPath:snapshotPath toPath:v11 error:&v27];
        v14 = v27;
        v24 = v14;
        if ((v13 & 1) == 0)
        {
          v15 = v14;
          v16 = HFLogForCategory(1uLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v29 = snapshotPath;
            v30 = 2112;
            v31 = v11;
            v32 = 2112;
            v33 = v15;
            _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Copying %@ to %@ failed:%@", buf, 0x20u);
          }
        }
      }

      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
      v18 = MEMORY[0x277CCACA8];
      lastPathComponent2 = [v17 lastPathComponent];
      v20 = [v18 stringWithFormat:@"attachment filename=%@", lastPathComponent2];;

      v21 = [MEMORY[0x277CCAB70] requestWithURL:hf_serviceURLWithParameters];
      [v21 setHTTPMethod:@"POST"];
      [v21 setValue:@"application/zip" forHTTPHeaderField:@"Content-Type"];
      [v21 setValue:v20 forHTTPHeaderField:@"Content-Disposition"];
      backgroundSession = [(HFAccessoryDiagnosticsUploadManager *)self backgroundSession];
      v23 = [backgroundSession uploadTaskWithRequest:v21 fromFile:v17];

      [v23 setTaskDescription:_nextFilenameIdentifierToProcess];
      [v23 resume];
    }
  }

  else
  {
    v5 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "No pending logs to upload.", buf, 2u);
    }
  }
}

- (void)_addToPendingUploads:(id)uploads
{
  v12 = *MEMORY[0x277D85DE8];
  uploadsCopy = uploads;
  v5 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pendingIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
    v8 = 138412546;
    v9 = uploadsCopy;
    v10 = 2048;
    v11 = [pendingIdentifiers count];
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Adding log:%@ to Accessory Diagnostics upload service pending queue %lu.", &v8, 0x16u);
  }

  pendingIdentifiers2 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  [pendingIdentifiers2 addObject:uploadsCopy];
}

- (BOOL)_didPreviouslySubmitLog:(id)log
{
  v17 = *MEMORY[0x277D85DE8];
  logCopy = log;
  pendingIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v6 = [pendingIdentifiers containsObject:logCopy];

  if (v6)
  {
    v7 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = logCopy;
      v8 = "Previously submitted. Pending identifiers contains log: %@";
LABEL_10:
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);
    }
  }

  else
  {
    failedUploadIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self failedUploadIdentifiers];
    v10 = [failedUploadIdentifiers containsObject:logCopy];

    if (v10)
    {
      v7 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = logCopy;
        v8 = "Previously submitted. Failed identifiers contains log: %@";
        goto LABEL_10;
      }
    }

    else
    {
      uploadedIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self uploadedIdentifiers];
      v12 = [uploadedIdentifiers containsObject:logCopy];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v7 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = logCopy;
        v8 = "Previously submitted. Uploaded identifiers contains log: %@";
        goto LABEL_10;
      }
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (void)_failAttemptToUploadCurrentIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HFAccessoryDiagnosticsUploadManager__failAttemptToUploadCurrentIdentifier__block_invoke;
  block[3] = &unk_277DF3D38;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__HFAccessoryDiagnosticsUploadManager__failAttemptToUploadCurrentIdentifier__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingIdentifiers];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingIdentifiers];
    [v4 removeObject:v3];

    v5 = [*(a1 + 32) failedUploadIdentifiers];
    [v5 addObject:v3];

    v6 = *(a1 + 32);
    v7 = [v6 failedUploadIdentifiers];
    [v6 _updatePreviousLogIdentifiers:v7 forKey:@"HFAccessoryDiagnosticsFailed"];

    v8 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Attempting next upload after failure to upload:%@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) _submitNextPendingLog];
}

- (void)_finalizeHandlingOfIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HFAccessoryDiagnosticsUploadManager__finalizeHandlingOfIdentifier___block_invoke;
  v6[3] = &unk_277DF3370;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __69__HFAccessoryDiagnosticsUploadManager__finalizeHandlingOfIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingIdentifiers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) failedUploadIdentifiers];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) uploadedIdentifiers];
  [v4 addObject:*(a1 + 40)];

  v5 = *(a1 + 32);
  v6 = [v5 uploadedIdentifiers];
  [v5 _updatePreviousLogIdentifiers:v6 forKey:@"HFAccessoryDiagnosticsUploaded"];

  v7 = *(a1 + 32);

  return [v7 _submitNextPendingLog];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  v8 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = challengeCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Received auth challenge:%@", &v9, 0xCu);
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if (sent == send)
  {
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      taskDescription = [taskCopy taskDescription];
      v14 = 138412546;
      v15 = taskDescription;
      v16 = 2048;
      sentCopy = sent;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished uploading task %@ of size:%lld", &v14, 0x16u);
    }

    taskDescription2 = [taskCopy taskDescription];
    [(HFAccessoryDiagnosticsUploadManager *)self _finalizeHandlingOfIdentifier:taskDescription2];
  }
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  pendingIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v6 = [pendingIdentifiers count];

  v7 = HFLogForCategory(1uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Finished uploading task in background. Submitting next identifier.", &v12, 2u);
    }

    _nextFilenameIdentifierToProcess = [(HFAccessoryDiagnosticsUploadManager *)self _nextFilenameIdentifierToProcess];
    [(HFAccessoryDiagnosticsUploadManager *)self _finalizeHandlingOfIdentifier:_nextFilenameIdentifierToProcess];
  }

  else
  {
    if (v8)
    {
      configuration = [sessionCopy configuration];
      identifier = [configuration identifier];
      v12 = 138412546;
      v13 = sessionCopy;
      v14 = 2112;
      v15 = identifier;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Did finish all events for background url session:%@ identifier:%@", &v12, 0x16u);
    }

    _nextFilenameIdentifierToProcess = [(HFAccessoryDiagnosticsUploadManager *)self backgroundUrlSessionCompletionHandler];
    _nextFilenameIdentifierToProcess[2]();
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  response = [taskCopy response];
  if (objc_opt_isKindOfClass())
  {
    v10 = response;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (errorCopy)
  {
    v12 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      taskDescription = [taskCopy taskDescription];
      v17 = 138412546;
      v18 = taskDescription;
      v19 = 2112;
      statusCode = errorCopy;
      v14 = "Unable to complete task:%@ with error:%@";
LABEL_16:
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([v11 statusCode] < 200 || objc_msgSend(v11, "statusCode") >= 206)
  {
    v12 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      taskDescription = [taskCopy taskDescription];
      v17 = 138412546;
      v18 = taskDescription;
      v19 = 2048;
      statusCode = [v11 statusCode];
      v14 = "Unable to complete task:%@ with statusCode:%ld";
      goto LABEL_16;
    }

LABEL_10:

    [(HFAccessoryDiagnosticsUploadManager *)self _failAttemptToUploadCurrentIdentifier];
    goto LABEL_11;
  }

  v15 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    taskDescription2 = [taskCopy taskDescription];
    v17 = 138412546;
    v18 = taskDescription2;
    v19 = 2048;
    statusCode = [v11 statusCode];
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Did complete task:%@ with response:%ld", &v17, 0x16u);
  }

LABEL_11:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v7 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Session %@ Did Become Invalid with error:%@", &v8, 0x16u);
  }
}

- (BOOL)_isValidFilenameIdentifier:(id)identifier
{
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:identifier];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  return v5;
}

- (void)willResignActive:(id)active
{
  v4 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Resigning app.", v5, 2u);
  }

  [(HFAccessoryDiagnosticsUploadManager *)self purgeStaleSubmittedLogs];
}

- (void)purgeStaleSubmittedLogs
{
  if ([(HFAccessoryDiagnosticsUploadManager *)self _needsToPurgeOldLogs])
  {
    uploadedIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self uploadedIdentifiers];
    [(HFAccessoryDiagnosticsUploadManager *)self _updatePreviousLogIdentifiers:uploadedIdentifiers forKey:@"HFAccessoryDiagnosticsUploaded"];

    failedUploadIdentifiers = [(HFAccessoryDiagnosticsUploadManager *)self failedUploadIdentifiers];
    [(HFAccessoryDiagnosticsUploadManager *)self _updatePreviousLogIdentifiers:failedUploadIdentifiers forKey:@"HFAccessoryDiagnosticsFailed"];

    [(HFAccessoryDiagnosticsUploadManager *)self updateLastPurgeDate];
  }
}

- (BOOL)_needsToPurgeOldLogs
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"HFAccessoryDiagnosticsLastCheckedDate"];
  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5 > 86400.0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateLastPurgeDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  [standardUserDefaults setObject:date forKey:@"HFAccessoryDiagnosticsLastCheckedDate"];
}

- (void)_updatePreviousLogIdentifiers:(id)identifiers forKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  keyCopy = key;
  date = [MEMORY[0x277CBEAA8] date];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults valueForKey:keyCopy];
  if (v10)
  {
    [identifiersCopy addObjectsFromArray:v10];
  }

  v11 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = keyCopy;
    v22 = 2048;
    v23 = [identifiersCopy count];
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Begin update for previous identifiers with key: %@ with count: %lu", buf, 0x16u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HFAccessoryDiagnosticsUploadManager__updatePreviousLogIdentifiers_forKey___block_invoke;
  v17[3] = &unk_277DF56F8;
  v17[4] = self;
  v18 = date;
  v13 = array;
  v19 = v13;
  v14 = date;
  [identifiersCopy enumerateObjectsUsingBlock:v17];
  v15 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    *buf = 138412546;
    v21 = keyCopy;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Finish update for previous identifiers with key: %@ with count: %lu", buf, 0x16u);
  }

  [identifiersCopy removeAllObjects];
  [identifiersCopy addObjectsFromArray:v13];
  [standardUserDefaults setObject:v13 forKey:keyCopy];
}

void __76__HFAccessoryDiagnosticsUploadManager__updatePreviousLogIdentifiers_forKey___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] fileURLForIdentifier:v3];
  v14 = 0;
  v5 = *MEMORY[0x277CBE7C0];
  v13 = 0;
  v6 = [v4 getResourceValue:&v14 forKey:v5 error:&v13];
  v7 = v14;
  v8 = v13;
  if (v6 && ([a1[5] timeIntervalSinceDate:v7], v9 < 864000.0))
  {
    v10 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "NOT purging %@ with date = %@", buf, 0x16u);
    }

    [a1[6] addObject:v3];
  }

  else
  {
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Purging expired identifier %@ with date = %@", buf, 0x16u);
    }

    [a1[4] _cleanUpLocalFilesForIdentifier:v3];
    v12 = [a1[4] diagnosticItems];
    [v12 removeObjectForKey:v3];
  }
}

- (void)_cleanUpLocalFilesForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:identifier];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v3])
  {
    v7 = 0;
    [defaultManager removeItemAtPath:v3 error:&v7];
    v5 = v7;
    if (v5)
    {
      v6 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v9 = v3;
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Failure to clean up file:%@ with error:%@", buf, 0x16u);
      }
    }
  }
}

@end