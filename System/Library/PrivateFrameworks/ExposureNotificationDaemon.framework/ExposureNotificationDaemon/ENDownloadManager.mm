@interface ENDownloadManager
- (BOOL)_copyDownloadedFileAtPath:(id)path toPath:(id)toPath removeExisting:(BOOL)existing error:(id *)error;
- (BOOL)_enumerateDownloadsWithError:(id *)error handler:(id)handler;
- (BOOL)_readStateIfNecessaryWithError:(id *)error;
- (BOOL)_saveState;
- (BOOL)_shouldFetchFromEndpointWithState:(id)state time:(double)time;
- (BOOL)enumerateDownloadsWithError:(id *)error handler:(id)handler;
- (BOOL)resetStateFile;
- (ENDownloadManager)initWithDirectoryURL:(id)l queue:(id)queue;
- (ENDownloadManager)initWithQueue:(id)queue;
- (_BYTE)resetStateFile;
- (double)_aggregateDownloadIntervalFromEndpoints:(id)endpoints;
- (id)_baseDirectoryPathForEndpointWithState:(id)state;
- (id)_countOfAvailableDownloadsWithError:(id *)error;
- (id)_downloadsDirectoryPathForEndpointState:(id)state;
- (id)_indexFilePathForEndpointState:(id)state;
- (id)_nextFilePathToDownloadWithEndpointState:(id)state;
- (id)countOfAvailableDownloadsWithError:(id *)error;
- (id)createScheduler;
- (id)description;
- (unint64_t)enabledEndpointCount;
- (void)_activate;
- (void)_backgroundActivityFiredWithCompletion:(id)completion;
- (void)_downloadIndexWithTask:(id)task;
- (void)_downloadNextFileFromServerWithTask:(id)task;
- (void)_handleFileDownloadFinishedForTask:(id)task serverFilePath:(id)path downloadedFilePath:(id)filePath;
- (void)_handleIndexFileDownloadFinishedForTask:(id)task filePath:(id)path;
- (void)_invalidate;
- (void)_performDownloadsWithScheduler:(id)scheduler atDate:(id)date forced:(BOOL)forced completion:(id)completion;
- (void)_purgeAllDownloads;
- (void)_purgeExpiredDownloadsWithDate:(id)date;
- (void)_purgeKeepingDownloadsForIdentifiers:(id)identifiers expiryDate:(id)date;
- (void)_reportErrorMetric:(unsigned int)metric;
- (void)_reportErrorMetricForHTTPStatus:(int64_t)status forIndexFile:(BOOL)file;
- (void)_saveState;
- (void)_setDownloadEndpoints:(id)endpoints;
- (void)_update;
- (void)_updateFetchSchedule;
- (void)activate;
- (void)invalidate;
- (void)performDownloadsAtDate:(id)date forced:(BOOL)forced completion:(id)completion;
- (void)performDownloadsForced:(BOOL)forced completion:(id)completion;
- (void)purgeAllDownloads;
- (void)purgeExpiredDownloadsWithDate:(id)date;
- (void)resetStateFile;
- (void)setDownloadEndpoints:(id)endpoints;
- (void)update;
@end

@implementation ENDownloadManager

- (ENDownloadManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = ENDataVaultPath();
  v6 = [v5 stringByAppendingPathComponent:@"Downloads"];

  v7 = [MEMORY[0x277CBEBC8] fileURLWithPath:v6];
  v8 = [(ENDownloadManager *)self initWithDirectoryURL:v7 queue:queueCopy];

  return v8;
}

- (ENDownloadManager)initWithDirectoryURL:(id)l queue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = ENDownloadManager;
  v8 = [(ENDownloadManager *)&v16 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [lCopy copy];
  directoryURL = v8->_directoryURL;
  v8->_directoryURL = v9;

  objc_storeStrong(&v8->_queue, queue);
  v11 = [(NSURL *)v8->_directoryURL URLByAppendingPathComponent:@"state.dat"];
  path = [v11 path];

  if (path)
  {
    v13 = [[ENSecureArchiveFileWrapper alloc] initWithPath:path];
    stateFileWrapper = v8->_stateFileWrapper;
    v8->_stateFileWrapper = v13;

LABEL_4:
    path = v8;
  }

  return path;
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ENDownloadManager_activate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_activate
{
  if (!self->_URLSession)
  {
    defaultSessionConfiguration = [MEMORY[0x277CBABC0] defaultSessionConfiguration];
    v4 = ENBundleIdentifierForURLSessions();
    [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:v4];

    v5 = [MEMORY[0x277CBABB0] sessionWithConfiguration:defaultSessionConfiguration];
    URLSession = self->_URLSession;
    self->_URLSession = v5;
  }

  [(ENDownloadManager *)self _update];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ENDownloadManager_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  self->_invalidated = 1;
  [(NSBackgroundActivityScheduler *)self->_fetchScheduler invalidate];
  fetchScheduler = self->_fetchScheduler;
  self->_fetchScheduler = 0;

  [(ENSecureArchiveFileWrapper *)self->_stateFileWrapper close];
  [(NSURLSession *)self->_URLSession invalidateAndCancel];
  URLSession = self->_URLSession;
  self->_URLSession = 0;
}

- (void)_reportErrorMetric:(unsigned int)metric
{
  errorMetricReporter = self->_errorMetricReporter;
  if (errorMetricReporter)
  {
    errorMetricReporter[2](errorMetricReporter, *&metric);
  }
}

- (void)_reportErrorMetricForHTTPStatus:(int64_t)status forIndexFile:(BOOL)file
{
  if (file)
  {
    v4 = 8000;
  }

  else
  {
    v4 = 9000;
  }

  if (status <= 0x3E7)
  {
    statusCopy = status;
  }

  else
  {
    statusCopy = 0;
  }

  [(ENDownloadManager *)self _reportErrorMetric:(v4 + statusCopy)];
}

- (id)countOfAvailableDownloadsWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENDownloadManager_countOfAvailableDownloadsWithError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__ENDownloadManager_countOfAvailableDownloadsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _countOfAvailableDownloadsWithError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_countOfAvailableDownloadsWithError:(id *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ENDownloadManager__countOfAvailableDownloadsWithError___block_invoke;
  v5[3] = &unk_278FD2428;
  v5[4] = &v6;
  if ([(ENDownloadManager *)self _enumerateDownloadsWithError:error handler:v5])
  {
    v3 = [MEMORY[0x277CCABA8] numberWithInteger:v7[3]];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)enumerateDownloadsWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ENDownloadManager_enumerateDownloadsWithError_handler___block_invoke;
  v10[3] = &unk_278FD2450;
  v12 = &v14;
  errorCopy = error;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  dispatch_barrier_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void *__57__ENDownloadManager_enumerateDownloadsWithError_handler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _enumerateDownloadsWithError:*(a1 + 56) handler:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_enumerateDownloadsWithError:(id *)error handler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x277CCAA08]);
  selfCopy = self;
  [(ENDownloadManagerState *)self->_state endpointStates];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v8 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (!v8)
  {
    v10 = 0;
    v38 = 1;
    goto LABEL_52;
  }

  v9 = v8;
  errorCopy = error;
  v10 = 0;
  v11 = *v64;
  v42 = *v64;
  v43 = *MEMORY[0x277CBE790];
  v51 = handlerCopy;
LABEL_3:
  v12 = 0;
  v44 = v9;
  while (1)
  {
    if (*v64 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v63 + 1) + 8 * v12);
    endpoint = [v13 endpoint];
    if (![endpoint enabled])
    {
      goto LABEL_41;
    }

    v48 = v12;
    v14 = MEMORY[0x277CBEBC8];
    v15 = [(ENDownloadManager *)selfCopy _downloadsDirectoryPathForEndpointState:v13];
    v16 = [v14 fileURLWithPath:v15 isDirectory:1];

    if (v16)
    {
      break;
    }

LABEL_40:
    v12 = v48;
LABEL_41:

    if (++v12 == v9)
    {
      v37 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      v9 = v37;
      if (!v37)
      {
        v38 = 1;
        goto LABEL_50;
      }

      goto LABEL_3;
    }
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v69 = v43;
  v17 = [MEMORY[0x277CBEA68] arrayWithObjects:&v69 count:1];
  v47 = v16;
  v18 = [v7 enumeratorAtURL:v16 includingPropertiesForKeys:v17 options:1 errorHandler:0];

  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v50 = v18;
  v19 = [v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    while (2)
    {
      v22 = 0;
      v23 = v10;
      do
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(v50);
        }

        v24 = *(*(&v59 + 1) + 8 * v22);
        v25 = objc_autoreleasePoolPush();
        v58 = v23;
        v26 = v51[2](v51, v24, endpoint, &v58);
        v10 = v58;

        if (v26 == 1)
        {
          [v49 addObject:v24];
        }

        else if (!v26)
        {
          if (v10 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
          {
            [ENDownloadManager _enumerateDownloadsWithError:v10 handler:?];
          }

          objc_autoreleasePoolPop(v25);
          v27 = 1;
          goto LABEL_25;
        }

        objc_autoreleasePoolPop(v25);
        ++v22;
        v23 = v10;
      }

      while (v20 != v22);
      v20 = [v50 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_25:

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = v49;
  v29 = [v28 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v55;
    do
    {
      v32 = 0;
      do
      {
        v33 = v10;
        if (*v55 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v54 + 1) + 8 * v32);
        v53 = v10;
        v35 = [v7 removeItemAtURL:v34 error:&v53];
        v10 = v53;

        if ((v35 & 1) == 0 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _enumerateDownloadsWithError:v10 handler:?];
        }

        ++v32;
      }

      while (v30 != v32);
      v36 = [v28 countByEnumeratingWithState:&v54 objects:v67 count:16];
      v30 = v36;
    }

    while (v36);
  }

  if (!v27)
  {

    v11 = v42;
    v9 = v44;
    goto LABEL_40;
  }

  if (errorCopy && v10)
  {
    v39 = v10;
    *errorCopy = v10;
  }

  v38 = v10 == 0;

LABEL_50:
  handlerCopy = v51;
LABEL_52:

  return v38;
}

- (void)update
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ENDownloadManager_update__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_update
{
  shortIdentifier = [self shortIdentifier];
  endpoint = [self endpoint];
  serverBaseURL = [endpoint serverBaseURL];
  endpoint2 = [self endpoint];
  if ([endpoint2 enabled])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  endpoint3 = [self endpoint];
  [endpoint3 downloadInterval];
  v8 = CUPrintDurationDouble();
  lastFetchAttemptDate = [self lastFetchAttemptDate];
  [lastFetchAttemptDate timeIntervalSinceNow];
  v10 = CUPrintDurationDouble();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _update]", 30, "Registered download endpoint %@ URL=%@ enabled=%s interval=%@ lastFetchAttempt=%@", shortIdentifier, serverBaseURL, v6, v8, v10);
}

- (void)setDownloadEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ENDownloadManager_setDownloadEndpoints___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = endpointsCopy;
  v6 = endpointsCopy;
  dispatch_sync(queue, v7);
}

- (void)_setDownloadEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  v8 = endpointsCopy;
  if (gLogCategory_ENDownloadManager <= 10)
  {
    if (gLogCategory_ENDownloadManager != -1 || (v5 = _LogCategory_Initialize(), endpointsCopy = v8, v5))
    {
      [ENDownloadManager _setDownloadEndpoints:endpointsCopy];
      endpointsCopy = v8;
    }
  }

  v6 = [endpointsCopy copy];
  pendingEndpoints = self->_pendingEndpoints;
  self->_pendingEndpoints = v6;

  [(ENDownloadManager *)self _update];
}

- (unint64_t)enabledEndpointCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  endpointStates = [(ENDownloadManagerState *)self->_state endpointStates];
  v3 = [endpointStates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(endpointStates);
        }

        endpoint = [*(*(&v10 + 1) + 8 * i) endpoint];
        v5 += [endpoint enabled];
      }

      v4 = [endpointStates countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performDownloadsForced:(BOOL)forced completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ENDownloadManager_performDownloadsForced_completion___block_invoke;
  block[3] = &unk_278FD24A0;
  forcedCopy = forced;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_sync(queue, block);
}

void __55__ENDownloadManager_performDownloadsForced_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA0] date];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ENDownloadManager_performDownloadsForced_completion___block_invoke_2;
  v5[3] = &unk_278FD2478;
  v6 = *(a1 + 40);
  [v2 _performDownloadsWithScheduler:0 atDate:v3 forced:v4 completion:v5];
}

- (void)performDownloadsAtDate:(id)date forced:(BOOL)forced completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = dateCopy;
  forcedCopy = forced;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_sync(queue, v13);
}

void __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ENDownloadManager_performDownloadsAtDate_forced_completion___block_invoke_2;
  v4[3] = &unk_278FD2478;
  v5 = *(a1 + 48);
  [v1 _performDownloadsWithScheduler:0 atDate:v2 forced:v3 completion:v4];
}

- (void)_performDownloadsWithScheduler:(id)scheduler atDate:(id)date forced:(BOOL)forced completion:(id)completion
{
  forcedCopy = forced;
  v46 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  dateCopy = date;
  completionCopy = completion;
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _performDownloadsWithScheduler:schedulerCopy atDate:forcedCopy forced:self completion:?];
  }

  v11 = dispatch_group_create();
  v30 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  endpointStates = [(ENDownloadManagerState *)self->_state endpointStates];
  v13 = [endpointStates countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(endpointStates);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        [dateCopy timeIntervalSinceReferenceDate];
        if ([(ENDownloadManager *)self _shouldFetchFromEndpointWithState:v17 time:?]|| (v18 = "Skipping", forcedCopy))
        {
          v19 = [ENDownloadTask taskWithEndpointState:v17 date:dateCopy group:v11 scheduler:schedulerCopy];
          [v17 setLastFetchAttemptDate:dateCopy];
          dispatch_group_enter(v11);
          [v30 addObject:v19];

          v18 = "Initiating";
        }

        if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _performDownloadsWithScheduler:v17 atDate:v18 forced:? completion:?];
        }

        ++v16;
      }

      while (v14 != v16);
      v20 = [endpointStates countByEnumeratingWithState:&v40 objects:v45 count:16];
      v14 = v20;
    }

    while (v20);
  }

  if ([v30 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = v30;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(ENDownloadManager *)self _downloadIndexWithTask:*(*(&v36 + 1) + 8 * i), completionCopy];
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v23);
    }

    [(ENDownloadManager *)self _saveState];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ENDownloadManager__performDownloadsWithScheduler_atDate_forced_completion___block_invoke;
  block[3] = &unk_278FD1080;
  v33 = v30;
  selfCopy = self;
  v35 = completionCopy;
  v27 = completionCopy;
  v28 = v30;
  dispatch_group_notify(v11, queue, block);
}

uint64_t __77__ENDownloadManager__performDownloadsWithScheduler_atDate_forced_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {

    v11 = *(a1 + 48);
LABEL_13:
    v12 = 1;
    return (*(v11 + 16))(v11, v12);
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v15;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v14 + 1) + 8 * i);
      v5 += [v9 downloadCount];
      v6 |= [v9 didDefer];
    }

    v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v4);

  if (v5 >= 1)
  {
    v10 = [MEMORY[0x277CCAB90] defaultCenter];
    [v10 postNotificationName:@"ENDownloadManagerDownloadsAvailable" object:*(a1 + 40)];
  }

  v11 = *(a1 + 48);
  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = 2;
  return (*(v11 + 16))(v11, v12);
}

- (BOOL)_shouldFetchFromEndpointWithState:(id)state time:(double)time
{
  stateCopy = state;
  endpoint = [stateCopy endpoint];
  if ([endpoint enabled])
  {
    lastFetchAttemptDate = [stateCopy lastFetchAttemptDate];
    v8 = lastFetchAttemptDate;
    if (lastFetchAttemptDate)
    {
      [lastFetchAttemptDate timeIntervalSinceReferenceDate];
      v10 = v9;
      [endpoint downloadInterval];
      v12 = v10 + v11 * 0.75 < time;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_downloadIndexWithTask:(id)task
{
  taskCopy = task;
  endpointState = [taskCopy endpointState];
  endpoint = [endpointState endpoint];

  serverIndexURL = [endpoint serverIndexURL];
  v8 = [objc_alloc(MEMORY[0x277CBAB58]) initWithURL:serverIndexURL];
  [v8 addValue:@"text/plain" forHTTPHeaderField:@"Accept"];
  Current = CFAbsoluteTimeGetCurrent();
  URLSession = self->_URLSession;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__ENDownloadManager__downloadIndexWithTask___block_invoke;
  v17 = &unk_278FD2518;
  selfCopy = self;
  v19 = endpoint;
  v20 = taskCopy;
  v21 = Current;
  v11 = taskCopy;
  v12 = endpoint;
  v13 = [(NSURLSession *)URLSession downloadTaskWithRequest:v8 completionHandler:&v14];
  [v13 resume];
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2;
  block[3] = &unk_278FD24F0;
  v17 = v8;
  v18 = *(a1 + 40);
  v19 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v23 = *(a1 + 56);
  v22 = v7;
  v13 = v7;
  v14 = v9;
  v15 = v8;
  dispatch_sync(v10, block);
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v11 = v2;
    v3 = [v11 statusCode];
    v4 = [v11 MIMEType];
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_1(a1, v3, v4);
    }

    if (v3 == 200)
    {
      v5 = [v4 lowercaseString];
      v6 = [v5 isEqualToString:@"text/plain"];

      if (v6)
      {
        v8 = *(a1 + 56);
        v7 = *(a1 + 64);
        v9 = [*(a1 + 72) path];
        [v7 _handleIndexFileDownloadFinishedForTask:v8 filePath:v9];
LABEL_17:

        return;
      }

      v9 = ENErrorF(15, "Unexpected index file Content-Type %@", v4);
      [*(a1 + 64) _reportErrorMetric:2001];
    }

    else
    {
      v9 = ENErrorF(11, "HTTP status %d for index fetch", v3);
      [*(a1 + 64) _reportErrorMetricForHTTPStatus:v3 forIndexFile:1];
    }

    [*(a1 + 56) finishDeferred:0 error:v9];
    goto LABEL_17;
  }

  if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_2(a1);
  }

  [*(a1 + 56) finishDeferred:0 error:*(a1 + 48)];
  v10 = *(a1 + 64);

  [v10 _reportErrorMetric:2000];
}

- (id)_baseDirectoryPathForEndpointWithState:(id)state
{
  directoryURL = self->_directoryURL;
  identifier = [state identifier];
  uUIDString = [identifier UUIDString];
  v8 = [(NSURL *)directoryURL URLByAppendingPathComponent:uUIDString];
  path = [v8 path];

  if (!path)
  {
    [(ENDownloadManager *)a2 _baseDirectoryPathForEndpointWithState:?];
  }

  return path;
}

- (id)_downloadsDirectoryPathForEndpointState:(id)state
{
  v3 = [(ENDownloadManager *)self _baseDirectoryPathForEndpointWithState:state];
  v4 = [v3 stringByAppendingPathComponent:@"Downloads"];

  return v4;
}

- (id)_indexFilePathForEndpointState:(id)state
{
  v3 = [(ENDownloadManager *)self _baseDirectoryPathForEndpointWithState:state];
  v4 = [v3 stringByAppendingPathComponent:@"index.txt"];

  return v4;
}

- (BOOL)_copyDownloadedFileAtPath:(id)path toPath:(id)toPath removeExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  pathCopy = path;
  toPathCopy = toPath;
  v11 = pathCopy;
  if (v11)
  {
    stringByDeletingLastPathComponent = [toPathCopy stringByDeletingLastPathComponent];
    v13 = objc_alloc_init(MEMORY[0x277CCAA08]);
    if ([v13 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
    {
      if (existingCopy && [v13 fileExistsAtPath:toPathCopy] && (objc_msgSend(v13, "removeItemAtPath:error:", toPathCopy, error) & 1) == 0)
      {
        if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _copyDownloadedFileAtPath:toPathCopy toPath:? removeExisting:? error:?];
        }
      }

      else
      {
        if ([v13 copyItemAtPath:v11 toPath:toPathCopy error:error])
        {
          v14 = 1;
LABEL_23:

          goto LABEL_24;
        }

        if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _copyDownloadedFileAtPath:toPathCopy toPath:? removeExisting:? error:?];
        }
      }
    }

    else if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _copyDownloadedFileAtPath:stringByDeletingLastPathComponent toPath:? removeExisting:? error:?];
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (error)
  {
    ENErrorF(2, "nil sourcePath");
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_24:

  return v14;
}

- (void)_handleIndexFileDownloadFinishedForTask:(id)task filePath:(id)path
{
  taskCopy = task;
  pathCopy = path;
  if (self->_invalidated)
  {
    endpointState = ENErrorF(11, "Invalidated");
    [taskCopy finishDeferred:0 error:endpointState];
  }

  else
  {
    endpointState = [taskCopy endpointState];
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleIndexFileDownloadFinishedForTask:taskCopy filePath:pathCopy];
    }

    v9 = [(ENDownloadManager *)self _indexFilePathForEndpointState:endpointState];
    v12 = 0;
    v10 = [(ENDownloadManager *)self _copyDownloadedFileAtPath:pathCopy toPath:v9 removeExisting:1 error:&v12];
    v11 = v12;
    if (v10)
    {
      [(ENDownloadManager *)self _downloadNextFileFromServerWithTask:taskCopy];
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _handleIndexFileDownloadFinishedForTask:taskCopy filePath:?];
      }

      [taskCopy finishDeferred:0 error:v11];
    }
  }
}

- (void)_downloadNextFileFromServerWithTask:(id)task
{
  taskCopy = task;
  v5 = taskCopy;
  if (self->_invalidated)
  {
    endpointState = ENErrorF(11, "Invalidated");
    [v5 finishDeferred:0 error:endpointState];
LABEL_19:

    goto LABEL_20;
  }

  if (![taskCopy shouldDefer])
  {
    endpointState = [v5 endpointState];
    endpoint = [endpointState endpoint];
    v8 = [(ENDownloadManager *)self _nextFilePathToDownloadWithEndpointState:endpointState];
    if (v8)
    {
      v9 = [endpoint serverURLForFileWithRelativePath:v8];
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CBAB58]) initWithURL:v9];
        [v10 setValue:@"application/zip" forHTTPHeaderField:@"Accept"];
        v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [(ENDownloadManager *)v9 _downloadNextFileFromServerWithTask:v5];
        }

        Current = CFAbsoluteTimeGetCurrent();
        URLSession = self->_URLSession;
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke;
        v19 = &unk_278FD2568;
        selfCopy = self;
        v21 = v5;
        v22 = v9;
        v25 = Current;
        v23 = v8;
        v24 = endpointState;
        v15 = [(NSURLSession *)URLSession downloadTaskWithRequest:v10 completionHandler:&v16];
        [v15 resume];
      }

      else
      {
        v10 = ENErrorF(15, "File download URL creation failed");
        [v5 finishDeferred:0 error:v10];
      }
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _downloadNextFileFromServerWithTask:endpointState];
      }

      [v5 finishDeferred:0 error:0];
    }

    goto LABEL_19;
  }

  [v5 finishDeferred:1 error:0];
LABEL_20:
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2;
  block[3] = &unk_278FD2540;
  v15 = v8;
  v16 = *(a1 + 40);
  v17 = v9;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v23 = *(a1 + 72);
  v20 = *(a1 + 56);
  v21 = v7;
  v22 = *(a1 + 64);
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_sync(v10, block);
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15 = v2;
    v3 = [v15 statusCode];
    v4 = [v15 MIMEType];
    v5 = [v15 expectedContentLength];
    if (gLogCategory_ENDownloadManager <= 50)
    {
      v6 = v5;
      if (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize())
      {
        __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_1(a1, v3, v4, v6);
      }
    }

    if (v3 == 403)
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_2(a1);
      }

      [*(a1 + 88) setLastDownloadedFilePath:*(a1 + 72)];
      [*(a1 + 56) _saveState];
      [*(a1 + 56) _downloadNextFileFromServerWithTask:*(a1 + 40)];
      goto LABEL_19;
    }

    if (v3 == 200)
    {
      v7 = [v4 lowercaseString];
      v8 = [v7 isEqualToString:@"application/zip"];

      if (v8)
      {
        v9 = *(a1 + 56);
        v10 = *(a1 + 40);
        v11 = *(a1 + 72);
        v12 = [*(a1 + 80) path];
        [v9 _handleFileDownloadFinishedForTask:v10 serverFilePath:v11 downloadedFilePath:v12];

LABEL_19:

        return;
      }

      v14 = ENErrorF(15, "Unexpected download file Content-Type %@", v4);
      [*(a1 + 56) _reportErrorMetric:2003];
    }

    else
    {
      v14 = ENErrorF(11, "HTTP status %d for file download", v3);
      [*(a1 + 56) _reportErrorMetricForHTTPStatus:v3 forIndexFile:0];
    }

    [*(a1 + 40) finishDeferred:0 error:v14];

    goto LABEL_19;
  }

  [*(a1 + 40) finishDeferred:0 error:*(a1 + 48)];
  v13 = *(a1 + 56);

  [v13 _reportErrorMetric:2002];
}

- (void)_handleFileDownloadFinishedForTask:(id)task serverFilePath:(id)path downloadedFilePath:(id)filePath
{
  taskCopy = task;
  pathCopy = path;
  filePathCopy = filePath;
  endpointState = [taskCopy endpointState];
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _handleFileDownloadFinishedForTask:taskCopy serverFilePath:? downloadedFilePath:?];
  }

  pathComponents = [pathCopy pathComponents];
  v13 = [pathComponents componentsJoinedByString:@"_"];

  v14 = [(ENDownloadManager *)self _downloadsDirectoryPathForEndpointState:endpointState];
  v15 = [v14 stringByAppendingPathComponent:v13];

  v21 = 0;
  LOBYTE(v13) = [(ENDownloadManager *)self _copyDownloadedFileAtPath:filePathCopy toPath:v15 removeExisting:0 error:&v21];

  v16 = v21;
  if (v13)
  {
    date = [taskCopy date];
    [endpointState setLastSuccessfulFetchDate:date];

    [endpointState setLastDownloadedFilePath:pathCopy];
    v20 = v16;
    v18 = [(ENDownloadManager *)self _saveStateWithError:&v20];
    v19 = v20;

    if (!v18 && gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleFileDownloadFinishedForTask:taskCopy serverFilePath:? downloadedFilePath:?];
    }

    [taskCopy incrementDownloadCount];
    [(ENDownloadManager *)self _downloadNextFileFromServerWithTask:taskCopy];
  }

  else
  {
    if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _handleFileDownloadFinishedForTask:taskCopy serverFilePath:? downloadedFilePath:?];
    }

    [taskCopy finishDeferred:0 error:v16];
    v19 = v16;
  }
}

- (id)_nextFilePathToDownloadWithEndpointState:(id)state
{
  stateCopy = state;
  v5 = [(ENDownloadManager *)self _indexFilePathForEndpointState:stateCopy];
  v6 = open([v5 fileSystemRepresentation], 0);
  if (v6 < 0)
  {
    if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _nextFilePathToDownloadWithEndpointState:stateCopy];
    }

    v15 = 0;
  }

  else
  {
    v7 = v6;
    lastDownloadedFilePath = [stateCopy lastDownloadedFilePath];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__5;
    v34 = __Block_byref_object_dispose__5;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__5;
    v28 = __Block_byref_object_dispose__5;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA908] whitespaceAndNewlineCharacterSet];
    v10 = lastDownloadedFilePath;
    v11 = stateCopy;
    v19 = v11;
    v12 = ENReadLinesFromFile();
    v13 = 0;
    close(v7);
    if (v12)
    {
      if (*(v21 + 24) == 1)
      {
        v14 = v25;
      }

      else
      {
        v14 = v31;
      }

      v15 = v14[5];
    }

    else
    {
      if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        shortIdentifier = [v11 shortIdentifier];
        v17 = CUPrintNSError();
        LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _nextFilePathToDownloadWithEndpointState:]", 90, "Failed to read index file for %@: %@", shortIdentifier, v17);
      }

      v15 = 0;
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  return v15;
}

void __62__ENDownloadManager__nextFilePathToDownloadWithEndpointState___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  obj = [a2 stringByTrimmingCharactersInSet:*(a1 + 32)];
  if ([obj length])
  {
    v5 = *(a1 + 40);
    if (v5 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && [v5 isEqualToString:obj])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_16;
    }

    v6 = [*(a1 + 48) endpoint];
    v7 = [v6 serverURLForFileWithRelativePath:obj];

    if (v7)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
LABEL_9:
        *a3 = 1;
        goto LABEL_16;
      }

      v8 = *(*(a1 + 72) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, obj);
        if (!*(a1 + 40))
        {
          goto LABEL_9;
        }
      }
    }

    else if (gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __62__ENDownloadManager__nextFilePathToDownloadWithEndpointState___block_invoke_cold_1(obj);
    }
  }

LABEL_16:
}

- (void)purgeAllDownloads
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENDownloadManager_purgeAllDownloads__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_purgeAllDownloads
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager _purgeAllDownloads]", 90, "Failed to delete state file: %@");
}

- (void)purgeExpiredDownloadsWithDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ENDownloadManager_purgeExpiredDownloadsWithDate___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(queue, v7);
}

- (void)_purgeExpiredDownloadsWithDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = dateCopy;
  if (self->_state)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB50]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    endpointStates = [(ENDownloadManagerState *)self->_state endpointStates];
    v10 = [endpointStates countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v7;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(endpointStates);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          endpoint = [v15 endpoint];
          enabled = [endpoint enabled];

          if (enabled)
          {
            identifier = [v15 identifier];
            [v8 addObject:identifier];
          }

          else
          {
            [v15 setLastDownloadedFilePath:0];
            v12 = 1;
          }
        }

        v11 = [endpointStates countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);

      v7 = v19;
      [(ENDownloadManager *)self _purgeKeepingDownloadsForIdentifiers:v8 expiryDate:v19];
      if (v12)
      {
        [(ENDownloadManager *)self _saveState];
      }
    }

    else
    {

      [(ENDownloadManager *)self _purgeKeepingDownloadsForIdentifiers:v8 expiryDate:v7];
    }
  }

  else if (gLogCategory__ENDownloadManager <= 90)
  {
    if (gLogCategory__ENDownloadManager != -1 || (dateCopy = _LogCategory_Initialize(), dateCopy))
    {
      [(ENDownloadManager *)dateCopy _purgeExpiredDownloadsWithDate:v5, v6];
    }
  }
}

- (void)_purgeKeepingDownloadsForIdentifiers:(id)identifiers expiryDate:(id)date
{
  v54 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dateCopy = date;
  v28 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v6 = objc_alloc_init(MEMORY[0x277CCAA08]);
  selfCopy = self;
  [v6 enumeratorAtURL:self->_directoryURL includingPropertiesForKeys:0 options:1 errorHandler:0];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v7 = v49 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v8)
  {
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        LOBYTE(v39) = 0;
        path = [v11 path];
        if ([v6 fileExistsAtPath:path isDirectory:&v39] && v39 == 1)
        {
          path2 = [v11 path];
          lastPathComponent = [path2 lastPathComponent];

          v16 = [objc_alloc(MEMORY[0x277CCAD70]) initWithUUIDString:lastPathComponent];
          if (v16 && ([identifiersCopy containsObject:v16] & 1) == 0)
          {
            [v28 addObject:v11];
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v7 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v28;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v18)
  {
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v44 + 1) + 8 * j);
        if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _purgeKeepingDownloadsForIdentifiers:v21 expiryDate:?];
        }

        v43 = 0;
        v22 = [v6 removeItemAtURL:v21 error:&v43];
        v23 = v43;
        if ((v22 & 1) == 0 && gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager _purgeKeepingDownloadsForIdentifiers:v23 expiryDate:?];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v18);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke;
  v30[3] = &unk_278FD25B8;
  v32 = &v39;
  v24 = dateCopy;
  v31 = v24;
  v33 = &v35;
  [(ENDownloadManager *)selfCopy _enumerateDownloadsWithError:&v34 handler:v30];
  v25 = v34;
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _purgeKeepingDownloadsForIdentifiers:expiryDate:]", 50, "Purged %lu downloads expired before %@ (%lu total)", v36[3], v24, v40[3]);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
}

uint64_t __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  ++*(*(a1[5] + 8) + 24);
  v12 = 0;
  v4 = *MEMORY[0x277CBE790];
  v11 = 0;
  v5 = [v3 getResourceValue:&v12 forKey:v4 error:&v11];
  v6 = v12;
  v7 = v11;
  if ((v5 & 1) == 0)
  {
    if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_1(v7, v4);
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_2(v3);
    }

    goto LABEL_12;
  }

  v8 = [v6 earlierDate:a1[4]];

  if (v8 != v6)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_13;
  }

  ++*(*(a1[6] + 8) + 24);
  v9 = 1;
LABEL_13:

  return v9;
}

- (BOOL)resetStateFile
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA08]);
  directoryURL = self->_directoryURL;
  if (directoryURL)
  {
    v5 = [(NSURL *)directoryURL URLByAppendingPathComponent:@"state.dat"];
    path = [v5 path];

    if (path)
    {
      v16 = 0;
      v10 = [v3 removeItemAtPath:path error:&v16];
      v11 = v16;
      v12 = v11;
      if (v10)
      {
        state = self->_state;
        self->_state = 0;

        [(ENSecureArchiveFileWrapper *)self->_stateFileWrapper close];
        if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
        {
          [ENDownloadManager resetStateFile];
        }

        v14 = 1;
      }

      else
      {
        [(ENDownloadManager *)v11 resetStateFile];
        v12 = v17;
        v14 = v18;
      }
    }

    else
    {
      if (gLogCategory__ENDownloadManager <= 90)
      {
        if (gLogCategory__ENDownloadManager != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          [(ENDownloadManager *)v7 resetStateFile];
        }
      }

      v12 = 0;
      v14 = 0;
    }
  }

  else
  {
    [(ENDownloadManager *)&v17 resetStateFile];
    v14 = v17;
  }

  return v14;
}

- (void)_updateFetchSchedule
{
  identifier = [*self identifier];
  CUPrintDurationDouble();
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_2() count];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _updateFetchSchedule]", 50, "Setting %@ interval to %@ for %d endpoints", identifier, v2, v3);
}

void __41__ENDownloadManager__updateFetchSchedule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__ENDownloadManager__updateFetchSchedule__block_invoke_2;
    v7[3] = &unk_278FD1490;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

- (void)_backgroundActivityFiredWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [ENDownloadManager _backgroundActivityFiredWithCompletion:];
  }

  v4 = self->_fetchScheduler;
  if (v4)
  {
    [(ENDownloadManager *)self _update];
    date = [MEMORY[0x277CBEAA0] date];
    [(ENDownloadManager *)self _performDownloadsWithScheduler:v4 atDate:date forced:0 completion:completionCopy];
  }

  else
  {
    if (gLogCategory_ENDownloadManager <= 50 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
    {
      [ENDownloadManager _backgroundActivityFiredWithCompletion:];
    }

    completionCopy[2](completionCopy, 1);
  }
}

- (double)_aggregateDownloadIntervalFromEndpoints:(id)endpoints
{
  v18 = *MEMORY[0x277D85DE8];
  endpointsCopy = endpoints;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [endpointsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  v5 = 86400.0;
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    v8 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(endpointsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 enabled])
        {
          [v10 downloadInterval];
          if (v11 < v8)
          {
            v8 = v11;
          }
        }
      }

      v6 = [endpointsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (v8 <= 28800.0)
    {
      v5 = 28800.0;
      if (v8 <= 14400.0)
      {
        v5 = dbl_24A28BF80[v8 > 7200.0];
      }
    }
  }

  return v5;
}

- (BOOL)_readStateIfNecessaryWithError:(id *)error
{
  if (self->_state)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    path = [(NSURL *)self->_directoryURL path];
    if (!path)
    {
      [(ENDownloadManager *)a2 _readStateIfNecessaryWithError:?];
    }

    v8 = objc_alloc_init(MEMORY[0x277CCAA08]);
    if ([v8 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error])
    {
      if (![(NSURL *)self->_directoryURL setResourceValue:MEMORY[0x277CBEC20] forKey:*MEMORY[0x277CBE870] error:error]&& gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
      {
        [ENDownloadManager _readStateIfNecessaryWithError:path];
      }

      stateFileWrapper = self->_stateFileWrapper;
      v15 = 0;
      v3 = [(ENSecureArchiveFileWrapper *)stateFileWrapper readObject:&v15 ofClass:objc_opt_class() error:error];
      v10 = v15;
      v11 = v10;
      if (v3)
      {
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_alloc_init(ENDownloadManagerState);
        }

        state = self->_state;
        self->_state = v12;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_saveState
{
  v5 = 0;
  v2 = [(ENDownloadManager *)self _saveStateWithError:&v5];
  v3 = v5;
  if (!v2 && gLogCategory_ENDownloadManager <= 90 && (gLogCategory_ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    [(ENDownloadManager *)v3 _saveState];
  }

  return v2;
}

- (id)createScheduler
{
  v2 = [objc_alloc(MEMORY[0x277CCA8C0]) initWithIdentifier:@"com.apple.ExposureNotification.periodicDownload"];

  return v2;
}

- (id)description
{
  v36 = *MEMORY[0x277D85DE8];
  state = [(ENDownloadManager *)self state];
  endpointStates = [state endpointStates];

  v4 = [endpointStates count];
  v34 = 0;
  v5 = "s";
  if (v4 == 1)
  {
    v5 = "";
  }

  NSAppendPrintF_safe(&v34, "%lu endpoint%s", v4, v5);
  v6 = v34;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = endpointStates;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        endpoint = [v11 endpoint];
        v29 = v6;
        region = [endpoint region];
        NSAppendPrintF_safe(&v29, "\n    %@;", region);
        v14 = v29;

        if (([endpoint enabled] & 1) == 0)
        {
          v28 = v14;
          NSAppendPrintF_safe(&v28, " DISABLED");
          v15 = v28;

          v14 = v15;
        }

        lastFetchAttemptDate = [v11 lastFetchAttemptDate];
        lastSuccessfulFetchDate = [v11 lastSuccessfulFetchDate];
        if (lastFetchAttemptDate | lastSuccessfulFetchDate)
        {
          v27 = v14;
          [lastFetchAttemptDate timeIntervalSinceNow];
          v19 = -v18;
          [lastSuccessfulFetchDate timeIntervalSinceNow];
          NSAppendPrintF(&v27, " last fetch: %{dur}, last success: %{dur}", v19, -v20);
          v21 = v27;

          v14 = v21;
        }

        v26 = v14;
        serverBaseURL = [endpoint serverBaseURL];
        absoluteString = [serverBaseURL absoluteString];
        NSAppendPrintF_safe(&v26, " (%@)", absoluteString);
        v6 = v26;
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)_enumerateDownloadsWithError:(uint64_t)a1 handler:.cold.1(uint64_t a1)
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager _enumerateDownloadsWithError:handler:]", 90, "Download enumeration failed: %@");
}

- (void)_enumerateDownloadsWithError:(uint64_t)a1 handler:.cold.2(uint64_t a1)
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager _enumerateDownloadsWithError:handler:]", 90, "Failed to delete downloded file after consumption: %@");
}

- (void)_performDownloadsWithScheduler:(uint64_t)a3 atDate:forced:completion:.cold.1(uint64_t a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = "scheduled";
  }

  else
  {
    v3 = "immediate";
  }

  if (a2)
  {
    v4 = " (forced)";
  }

  else
  {
    v4 = "";
  }

  v5 = [*(a3 + 72) endpoints];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "-[ENDownloadManager _performDownloadsWithScheduler:atDate:forced:completion:]", 50, "Performing %s download%s with %lu endpoints", v3, v4, [v5 count]);
}

- (void)_performDownloadsWithScheduler:(void *)a1 atDate:(uint64_t)a2 forced:completion:.cold.2(void *a1, uint64_t a2)
{
  v4 = [a1 shortIdentifier];
  v5 = [a1 endpoint];
  [v5 downloadInterval];
  v6 = CUPrintDurationDouble();
  v7 = [a1 lastFetchAttemptDate];
  [v7 timeIntervalSinceNow];
  v8 = CUPrintDurationDouble();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _performDownloadsWithScheduler:atDate:forced:completion:]", 50, "%s download for endpoint %@ interval=%@ lastFetchAttempt=%@", a2, v4, v6, v8);
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(a1 + 56) endpointState];
  v5 = [v7 shortIdentifier];
  CFAbsoluteTimeGetCurrent();
  v6 = CUPrintDurationDouble();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadIndexWithTask:]_block_invoke_2", 50, "Got response for index file download for endpoint %@ after %@: HTTP %lu %@", v5, v6, a2, a3);
}

void __44__ENDownloadManager__downloadIndexWithTask___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadIndexWithTask:]_block_invoke_2", 90, "Failed to download index file for endpoint %@: %@", v1, v2);
}

- (void)_baseDirectoryPathForEndpointWithState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENDownloadManager.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];
}

- (void)_handleIndexFileDownloadFinishedForTask:(void *)a1 filePath:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 shortIdentifier];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _handleIndexFileDownloadFinishedForTask:filePath:]", 50, "Downloaded index file for %@: %@", v3, a2);
}

- (void)_handleIndexFileDownloadFinishedForTask:(void *)a1 filePath:.cold.2(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _handleIndexFileDownloadFinishedForTask:filePath:]", 90, "Failed to copy index file for %@: %@", v1, v2);
}

- (void)_downloadNextFileFromServerWithTask:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = [a1 absoluteURL];
  v3 = [a2 shortIdentifier];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadNextFileFromServerWithTask:]", 50, "Fetching %@ from %@", v4, v3);
}

- (void)_downloadNextFileFromServerWithTask:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadNextFileFromServerWithTask:]", 50, "No more files to download for %@", v1);
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [*(a1 + 64) absoluteURL];
  v8 = [*(a1 + 40) shortIdentifier];
  CFAbsoluteTimeGetCurrent();
  v9 = CUPrintDurationDouble();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadNextFileFromServerWithTask:]_block_invoke_2", 50, "Got response for file download %@ for endpoint %@ after %@: HTTP %lu %@ (%lld bytes)", v10, v8, v9, a2, a3, a4);
}

void __57__ENDownloadManager__downloadNextFileFromServerWithTask___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 40) shortIdentifier];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _downloadNextFileFromServerWithTask:]_block_invoke_2", 90, "Continuing file download after HTTP %lu for %@", 403, v1);
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.1(void *a1)
{
  v1 = [a1 shortIdentifier];
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _handleFileDownloadFinishedForTask:serverFilePath:downloadedFilePath:]", 50, "Finished file download for %@", v1);
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.2(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _handleFileDownloadFinishedForTask:serverFilePath:downloadedFilePath:]", 90, "Failed to copy downloaded file for %@: %@", v1, v2);
}

- (void)_handleFileDownloadFinishedForTask:(void *)a1 serverFilePath:downloadedFilePath:.cold.3(void *a1)
{
  [a1 shortIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_2();
  v2 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _handleFileDownloadFinishedForTask:serverFilePath:downloadedFilePath:]", 90, "Failed to save state after file download for %@: %@", v1, v2);
}

- (void)_nextFilePathToDownloadWithEndpointState:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 shortIdentifier];
  v1 = __error();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _nextFilePathToDownloadWithEndpointState:]", 90, "Failed to open index file for %@: %#m", v2, *v1);
}

- (void)_purgeKeepingDownloadsForIdentifiers:(void *)a1 expiryDate:.cold.1(void *a1)
{
  [a1 path];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _purgeKeepingDownloadsForIdentifiers:expiryDate:]", 50, "Purging download directory %@");
}

- (void)_purgeKeepingDownloadsForIdentifiers:(uint64_t)a1 expiryDate:.cold.2(uint64_t a1)
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager _purgeKeepingDownloadsForIdentifiers:expiryDate:]", 90, "Failed to purge download endpoint directory: %@");
}

void __69__ENDownloadManager__purgeKeepingDownloadsForIdentifiers_expiryDate___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager _purgeKeepingDownloadsForIdentifiers:expiryDate:]_block_invoke", 90, "Failed to get resource value for %@: %@", a2, v3);
}

- (void)resetStateFile
{
  if (gLogCategory__ENDownloadManager <= 90 && (gLogCategory__ENDownloadManager != -1 || _LogCategory_Initialize()))
  {
    v6 = CUPrintNSError();
    LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager resetStateFile]", 90, "### Failed to remove state archive: %@", v6);
  }

  *a3 = 0;
  *a2 = self;
}

- (_BYTE)resetStateFile
{
  v1 = result;
  if (gLogCategory__ENDownloadManager <= 90)
  {
    if (gLogCategory__ENDownloadManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&gLogCategory__ENDownloadManager, "[ENDownloadManager resetStateFile]", 90, "### Failed to create new state archive. Invalid Directory URL.");
    }
  }

  *v1 = 0;
  return result;
}

- (void)_readStateIfNecessaryWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENDownloadManager.m" lineNumber:991 description:{@"Invalid parameter not satisfying: %@", @"directoryPath != nil"}];
}

- (void)_saveState
{
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadManager _saveState]", 90, "Failed to save state: %@");
}

@end