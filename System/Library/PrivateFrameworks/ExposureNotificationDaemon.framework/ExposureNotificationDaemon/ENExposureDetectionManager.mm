@interface ENExposureDetectionManager
- (BOOL)_applyRegionalConfigurationToDetectionSession:(id)session delegate:(id)delegate error:(id *)error;
- (BOOL)_scheduleNativeExposureDetection;
- (ENExposureDetectionManager)initWithConfigurationStore:(id)store downloadManager:(id)manager exposureDatabase:(id)database queue:(id)queue;
- (ENExposureDetectionManagerDelegate)delegate;
- (id)_createDetectionSessionWithError:(id *)error;
- (id)_getDelegateWithError:(id *)error;
- (id)_publicKeyForRegion:(id)region dictionary:(id)dictionary;
- (id)createDetectionSessionForClient:(id)client configuration:(id)configuration error:(id *)error;
- (id)createFileSession;
- (id)createNativeDetectionSessionWithError:(id *)error;
- (id)createScheduler;
- (id)createXPCServiceClient;
- (int64_t)_processFileAtURL:(id)l publicKey:(id)key endpoint:(id)endpoint session:(id)session error:(id *)error;
- (void)_activate;
- (void)_downloadsDidBecomeAvailable:(id)available;
- (void)_exposureDetectionSession:(id)session finishedWithResult:(id)result;
- (void)_invalidate;
- (void)_performNativeExposureDetectionWithScheduler:(id)scheduler resultHandler:(id)handler;
- (void)_scheduleNativeExposureDetectionForced:(BOOL)forced;
- (void)_unscheduleNativeExposureDetection;
- (void)activate;
- (void)invalidate;
- (void)performNativeExposureDetectionWithResultHandler:(id)handler;
- (void)scheduleNativeExposureDetectionForced:(BOOL)forced;
@end

@implementation ENExposureDetectionManager

- (ENExposureDetectionManager)initWithConfigurationStore:(id)store downloadManager:(id)manager exposureDatabase:(id)database queue:(id)queue
{
  storeCopy = store;
  managerCopy = manager;
  databaseCopy = database;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = ENExposureDetectionManager;
  v15 = [(ENExposureDetectionManager *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configurationStore, store);
    objc_storeStrong(&v16->_downloadManager, manager);
    objc_storeStrong(&v16->_exposureDatabase, database);
    objc_storeStrong(&v16->_queue, queue);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("ENSessions", v17);
    sessionQueue = v16->_sessionQueue;
    v16->_sessionQueue = v18;

    v16->_scheduleDetectionAutomatically = 1;
  }

  return v16;
}

- (void)activate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ENExposureDetectionManager_activate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ENExposureDetectionManager_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_getDelegateWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    [ENExposureDetectionManager _getDelegateWithError:error];
  }

  return v5;
}

- (BOOL)_applyRegionalConfigurationToDetectionSession:(id)session delegate:(id)delegate error:(id *)error
{
  sessionCopy = session;
  v9 = [delegate activeRegionForExposureDetectionManager:self];
  if (v9)
  {
    v10 = [(ENConfigurationStore *)self->_configurationStore configurationForRegion:v9];
    [sessionCopy setRegionConfiguration:v10];

    v11 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:v9];
    [sessionCopy setRegionServerConfiguration:v11];

    v12 = [(ENConfigurationStore *)self->_configurationStore serverExposureConfigurationForRegion:v9];
    [sessionCopy setServerExposureConfiguration:v12];

    v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
    LODWORD(v11) = [v13 isSensitiveLoggingAllowed];

    if (v11 && gLogCategory_ENExposureDetectionManager <= 50 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionManager _applyRegionalConfigurationToDetectionSession:v9 delegate:? error:?];
    }
  }

  else
  {
    [ENExposureDetectionManager _applyRegionalConfigurationToDetectionSession:error delegate:? error:?];
  }

  return v9 != 0;
}

- (id)createDetectionSessionForClient:(id)client configuration:(id)configuration error:(id *)error
{
  clientCopy = client;
  configurationCopy = configuration;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ENExposureDetectionManager_createDetectionSessionForClient_configuration_error___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v15;
  block[6] = error;
  dispatch_sync(queue, block);
  v11 = v16[5];
  if (v11)
  {
    [v11 setClient:clientCopy];
    [v16[5] setClientExposureConfiguration:configurationCopy];
    v12 = v16[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __82__ENExposureDetectionManager_createDetectionSessionForClient_configuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createDetectionSessionWithError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)createFileSession
{
  v2 = MEMORY[0x277CC5C80];
  v3 = self->_xpcServiceClient;
  v4 = [[v2 alloc] initWithServiceClient:v3];

  [v4 setFlags:1];

  return v4;
}

- (void)performNativeExposureDetectionWithResultHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__ENExposureDetectionManager_performNativeExposureDetectionWithResultHandler___block_invoke;
  v7[3] = &unk_278FD1490;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __78__ENExposureDetectionManager_performNativeExposureDetectionWithResultHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __78__ENExposureDetectionManager_performNativeExposureDetectionWithResultHandler___block_invoke_2;
  v2[3] = &unk_278FD3250;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _performNativeExposureDetectionWithScheduler:0 resultHandler:v2];
}

- (void)_performNativeExposureDetectionWithScheduler:(id)scheduler resultHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  if (gLogCategory_ENExposureDetectionManager <= 50 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:schedulerCopy resultHandler:?];
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__10;
  v71 = __Block_byref_object_dispose__10;
  v72 = 0;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __89__ENExposureDetectionManager__performNativeExposureDetectionWithScheduler_resultHandler___block_invoke;
  v63[3] = &unk_278FD3278;
  v64 = 0;
  v8 = handlerCopy;
  v65 = v8;
  v66 = &v67;
  v9 = MEMORY[0x24C214430](v63);
  if (self->_enableNativeExposureDetection)
  {
    v10 = v68;
    v62 = v68[5];
    v11 = [(ENExposureDetectionManager *)self createNativeDetectionSessionWithError:&v62];
    objc_storeStrong(v10 + 5, v62);
    if (v11)
    {
      exposureDatabase = [v11 exposureDatabase];
      v61 = 0;
      v13 = objc_opt_class();
      v14 = v68;
      v60 = v68[5];
      v15 = [exposureDatabase getValue:&v61 forKey:@"LastExposureClassification" ofClass:v13 error:&v60];
      v35 = v61;
      objc_storeStrong(v14 + 5, v60);

      if (v15)
      {
        [v11 setPreviousExposureClassification:v35];
        v16 = v68;
        v59 = v68[5];
        v17 = [v11 prepareAndReturnError:&v59];
        objc_storeStrong(v16 + 5, v59);
        if (v17)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB30]);
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          shouldDefer = [schedulerCopy shouldDefer];
          v51 = 0;
          v52 = &v51;
          v53 = 0x2020000000;
          v54 = 0;
          v47 = 0;
          v48 = &v47;
          v49 = 0x2020000000;
          v50 = 0;
          downloadManager = self->_downloadManager;
          v19 = v68;
          obj = v68[5];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __89__ENExposureDetectionManager__performNativeExposureDetectionWithScheduler_resultHandler___block_invoke_2;
          v38[3] = &unk_278FD32A0;
          v39 = schedulerCopy;
          selfCopy = self;
          v43 = &v55;
          v41 = v34;
          v36 = v11;
          v42 = v36;
          v44 = &v47;
          v45 = &v51;
          LODWORD(downloadManager) = [(ENDownloadManager *)downloadManager enumerateDownloadsWithError:&obj handler:v38];
          objc_storeStrong(v19 + 5, obj);
          if (downloadManager)
          {
            v20 = v68;
            v37 = v68[5];
            [v36 finishAndReturnError:&v37];
            v22 = p_inst_props = (&OBJC_PROTOCOL___CoreTelephonyClientDelegate + 56);
            objc_storeStrong(v20 + 5, v37);
          }

          else
          {
            v22 = 0;
            p_inst_props = &OBJC_PROTOCOL___CoreTelephonyClientDelegate.inst_props;
          }

          v25 = *(p_inst_props + 90);
          if (v25 <= 50 && (v25 != -1 || _LogCategory_Initialize()))
          {
            v26 = "";
            v27 = "un";
            if (v22)
            {
              v27 = "";
            }

            if (*(v56 + 24))
            {
              v26 = " (deferred)";
            }

            LogPrintF_safe(&gLogCategory_ENExposureDetectionManager, "[ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:resultHandler:]", 50, "Native exposure detection finished %ssuccessfully%s: %lu files consumed, %lu files ignored", v27, v26, v52[3], v48[3]);
          }

          if (v22)
          {
            summary = [v22 summary];
            v29 = +[ENLoggingPrefs sharedENLoggingPrefs];
            isSensitiveLoggingAllowed = [v29 isSensitiveLoggingAllowed];

            if (isSensitiveLoggingAllowed)
            {
              v31 = *(p_inst_props + 90);
              if (v31 <= 30 && (v31 != -1 || _LogCategory_Initialize()))
              {
                daySummaries = [summary daySummaries];
                LogPrintF_safe(&gLogCategory_ENExposureDetectionManager, "-[ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:resultHandler:]", 30, "Native exposure detection finished: DaySummaries %d", [daySummaries count]);
              }
            }

            CFPrefs_SetValue();
            [(ENExposureDetectionManager *)self _exposureDetectionSession:v36 finishedWithResult:v22];
            [(ENExposureDetectionManager *)self _unscheduleNativeExposureDetection];
          }

          else
          {
            if (gLogCategory__ENExposureDetectionManager > 90 || gLogCategory__ENExposureDetectionManager == -1 && !_LogCategory_Initialize())
            {
LABEL_35:
              if (*(v56 + 24))
              {
                v33 = 2;
              }

              else
              {
                v33 = 1;
              }

              (*(v8 + 2))(v8, v22, v33, v68[5]);
              [v36 invalidate];

              _Block_object_dispose(&v47, 8);
              _Block_object_dispose(&v51, 8);
              _Block_object_dispose(&v55, 8);

              goto LABEL_39;
            }

            summary = CUPrintNSError();
            LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:resultHandler:]", 90, "Failed to perform native exposure detection: %@", summary);
          }

          goto LABEL_35;
        }

        if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:resultHandler:]", 90, "Failed to prepare detection session");
        }
      }

      v9[2](v9);
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    v23 = ENErrorF(14, "Native exposure detection is disabled");
    v24 = v68[5];
    v68[5] = v23;
  }

  v9[2](v9);
  v11 = 0;
LABEL_40:

  _Block_object_dispose(&v67, 8);
}

uint64_t __89__ENExposureDetectionManager__performNativeExposureDetectionWithScheduler_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __89__ENExposureDetectionManager__performNativeExposureDetectionWithScheduler_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (![*(a1 + 32) shouldDefer])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v8 region];
    if (v11)
    {
      v12 = [*(a1 + 40) _publicKeyForRegion:v11 dictionary:*(a1 + 48)];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 56);
        v19 = 0;
        v9 = [v13 _processFileAtURL:v7 publicKey:v12 endpoint:v8 session:v14 error:&v19];
        v15 = v19;

        objc_autoreleasePoolPop(v10);
        if (v9 == 1)
        {
          v16 = *(a1 + 80);
          goto LABEL_15;
        }

        if (v9 == 2)
        {
          v16 = *(a1 + 72);
LABEL_15:
          ++*(*(v16 + 8) + 24);
LABEL_16:

          goto LABEL_17;
        }

LABEL_12:
        if (a4)
        {
          v17 = v15;
          *a4 = v15;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = ENErrorF(11, "No public key");
    objc_autoreleasePoolPop(v10);
    v9 = 0;
    goto LABEL_12;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (a4)
  {
    ENErrorF(11, "Exposure detection deferred");
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (void)_exposureDetectionSession:(id)session finishedWithResult:(id)result
{
  exposureDatabase = self->_exposureDatabase;
  resultCopy = result;
  exposureClassification = [resultCopy exposureClassification];
  v8 = ENDefaultExpirationDate();
  v12 = 0;
  v9 = [(ENExposureDatabase *)exposureDatabase setValue:exposureClassification forKey:@"LastExposureClassification" expiryDate:v8 error:&v12];
  v10 = v12;

  if (!v9 && gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDetectionManager _exposureDetectionSession:v10 finishedWithResult:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained exposureDetectionManager:self finishedSessionWithResult:resultCopy];
}

- (int64_t)_processFileAtURL:(id)l publicKey:(id)key endpoint:(id)endpoint session:(id)session error:(id *)error
{
  lCopy = l;
  keyCopy = key;
  endpointCopy = endpoint;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  path = [lCopy path];
  v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENExposureDetectionManager <= 10 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDetectionManager _processFileAtURL:path publicKey:? endpoint:? session:? error:?];
    if (!path)
    {
      goto LABEL_26;
    }
  }

  else if (!path)
  {
    goto LABEL_26;
  }

  pathExtension = [path pathExtension];
  v20 = [pathExtension isEqualToString:@"zip"];

  if (v20)
  {
    createFileSession = [(ENExposureDetectionManager *)self createFileSession];
    v38 = 0;
    v22 = [createFileSession activateWithArchivePath:path error:&v38];
    v35 = v38;
    if ((v22 & 1) == 0)
    {
      if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
      {
        [ENExposureDetectionManager _processFileAtURL:v35 publicKey:path endpoint:? session:? error:?];
      }

      [WeakRetained exposureDetectionManager:self errorDetected:3002];
      v25 = 2;
      goto LABEL_35;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __81__ENExposureDetectionManager__processFileAtURL_publicKey_endpoint_session_error___block_invoke;
    v37[3] = &unk_278FD0F90;
    v37[4] = createFileSession;
    v34 = MEMORY[0x24C214430](v37);
    v36 = 0;
    v23 = [sessionCopy addMatchesFromFileSession:createFileSession publicKey:keyCopy endpoint:endpointCopy error:&v36];
    v24 = v36;
    if (v23)
    {
      v25 = 1;
LABEL_34:

      v34[2](v34);
LABEL_35:

      goto LABEL_36;
    }

    v33 = v24;
    domain = [v24 domain];
    if ([domain isEqualToString:@"ENExposureDetectionDaemonSessionErrorDomain"])
    {
      code = [v33 code];

      if (code == 2)
      {
        signatures = [createFileSession signatures];
        firstObject = [signatures firstObject];

        if (firstObject)
        {
          if (gLogCategory__ENExposureDetectionManager > 90 || gLogCategory__ENExposureDetectionManager == -1 && !_LogCategory_Initialize())
          {
            v31 = 3003;
            goto LABEL_33;
          }

          v30 = CUPrintNSError();
          LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _processFileAtURL:publicKey:endpoint:session:error:]", 90, "Signature validation failed for %@: %@", path, v30);
          v31 = 3003;
        }

        else
        {
          if (gLogCategory__ENExposureDetectionManager > 90 || gLogCategory__ENExposureDetectionManager == -1 && !_LogCategory_Initialize())
          {
            v31 = 3001;
            goto LABEL_33;
          }

          v30 = CUPrintNSError();
          LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _processFileAtURL:publicKey:endpoint:session:error:]", 90, "Unable to open signature file at %@: %@", path, v30);
          v31 = 3001;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    if (gLogCategory__ENExposureDetectionManager > 90 || gLogCategory__ENExposureDetectionManager == -1 && !_LogCategory_Initialize())
    {
      v31 = 3004;
      goto LABEL_33;
    }

    v30 = CUPrintNSError();
    LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _processFileAtURL:publicKey:endpoint:session:error:]", 90, "Error matching TEKs from %@: %@", path, v30);
    v31 = 3004;
LABEL_24:

LABEL_33:
    [WeakRetained exposureDetectionManager:self errorDetected:v31];
    v25 = 2;
    v24 = v33;
    goto LABEL_34;
  }

LABEL_26:
  if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDetectionManager _processFileAtURL:publicKey:endpoint:session:error:];
  }

  [WeakRetained exposureDetectionManager:self errorDetected:3000];
  v25 = 2;
LABEL_36:

  return v25;
}

- (void)scheduleNativeExposureDetectionForced:(BOOL)forced
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__ENExposureDetectionManager_scheduleNativeExposureDetectionForced___block_invoke;
  v4[3] = &unk_278FD32C8;
  v4[4] = self;
  forcedCopy = forced;
  dispatch_async(queue, v4);
}

- (void)_scheduleNativeExposureDetectionForced:(BOOL)forced
{
  forcedCopy = forced;
  downloadManager = self->_downloadManager;
  v15 = 0;
  v6 = [(ENDownloadManager *)downloadManager countOfAvailableDownloadsWithError:&v15];
  v7 = v15;
  v8 = v7;
  if (!v6)
  {
    v9 = v7;
    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x277CC5BD0]])
    {
      code = [v9 code];

      v12 = code == 16 ? 30 : 90;
    }

    else
    {

      v12 = 90;
    }

    if (v12 >= gLogCategory_ENExposureDetectionManager && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_ENExposureDetectionManager, "[ENExposureDetectionManager _scheduleNativeExposureDetectionForced:]", v12, "Cannot determine available download count: %@", v9);
    }
  }

  if ([v6 unsignedIntValue])
  {
    v13 = 0;
  }

  else
  {
    v13 = !forcedCopy;
  }

  if (v13)
  {
    [(ENExposureDetectionManager *)self _unscheduleNativeExposureDetection];
  }

  else if ([(ENExposureDetectionManager *)self _scheduleNativeExposureDetection]&& gLogCategory_ENExposureDetectionManager <= 30 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    v14 = "";
    if (forcedCopy)
    {
      v14 = " (forced)";
    }

    LogPrintF_safe(&gLogCategory_ENExposureDetectionManager, "[ENExposureDetectionManager _scheduleNativeExposureDetectionForced:]", 30, "Scheduled native exposure detection%s with %@ downloads available", v14, v6);
  }
}

- (void)_downloadsDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v7 = availableCopy;
  if (gLogCategory_ENExposureDetectionManager <= 30)
  {
    if (gLogCategory_ENExposureDetectionManager != -1 || (availableCopy = _LogCategory_Initialize(), availableCopy))
    {
      [(ENExposureDetectionManager *)availableCopy _downloadsDidBecomeAvailable:v5, v6];
    }
  }

  if (self->_scheduleDetectionAutomatically)
  {
    [(ENExposureDetectionManager *)self scheduleNativeExposureDetectionForced:0];
  }
}

- (BOOL)_scheduleNativeExposureDetection
{
  detectionScheduler = self->_detectionScheduler;
  if (detectionScheduler)
  {
    if (gLogCategory_ENExposureDetectionManager <= 10 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionManager _scheduleNativeExposureDetection];
    }
  }

  else
  {
    createScheduler = [(ENExposureDetectionManager *)self createScheduler];
    v5 = self->_detectionScheduler;
    self->_detectionScheduler = createScheduler;

    [(NSBackgroundActivityScheduler *)self->_detectionScheduler setQualityOfService:17];
    [(NSBackgroundActivityScheduler *)self->_detectionScheduler setInterval:900.0];
    [(NSBackgroundActivityScheduler *)self->_detectionScheduler setTolerance:810.0];
    [(NSBackgroundActivityScheduler *)self->_detectionScheduler setRepeats:0];
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86380], 1);
    [(NSBackgroundActivityScheduler *)self->_detectionScheduler _setAdditionalXPCActivityProperties:v6];
    v7 = self->_detectionScheduler;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke;
    v9[3] = &unk_278FD32F0;
    v9[4] = self;
    [(NSBackgroundActivityScheduler *)v7 scheduleWithBlock:v9];
    if (gLogCategory_ENExposureDetectionManager <= 10 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionManager _scheduleNativeExposureDetection];
    }
  }

  return detectionScheduler == 0;
}

void __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_ENExposureDetectionManager <= 50 && (gLogCategory_ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_2;
  v7[3] = &unk_278FD1490;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, v7);
}

void __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_3;
  v4[3] = &unk_278FD3250;
  v5 = *(a1 + 40);
  [v2 _performNativeExposureDetectionWithScheduler:v3 resultHandler:v4];
  [*(a1 + 32) _unscheduleNativeExposureDetection];
}

void __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if (!v7 && gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
  {
    __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_3_cold_1(v6);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_unscheduleNativeExposureDetection
{
  if (self->_detectionScheduler)
  {
    selfCopy = self;
    if (gLogCategory_ENExposureDetectionManager <= 30)
    {
      if (gLogCategory_ENExposureDetectionManager != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(ENExposureDetectionManager *)self _unscheduleNativeExposureDetection];
      }
    }

    [(NSBackgroundActivityScheduler *)selfCopy->_detectionScheduler invalidate];
    detectionScheduler = selfCopy->_detectionScheduler;
    selfCopy->_detectionScheduler = 0;
  }
}

- (id)createScheduler
{
  v2 = [objc_alloc(MEMORY[0x277CCA8C0]) initWithIdentifier:@"com.apple.ExposureNotification.detection"];

  return v2;
}

- (id)createXPCServiceClient
{
  v2 = objc_alloc_init(MEMORY[0x277CC5D48]);

  return v2;
}

- (ENExposureDetectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_activate
{
  if (!self->_activated)
  {
    defaultCenter = [MEMORY[0x277CCAB90] defaultCenter];
    [defaultCenter addObserver:self selector:sel__downloadsDidBecomeAvailable_ name:@"ENDownloadManagerDownloadsAvailable" object:self->_downloadManager];

    createScheduler = [(ENExposureDetectionManager *)self createScheduler];
    detectionScheduler = self->_detectionScheduler;
    self->_detectionScheduler = createScheduler;

    [(ENExposureDetectionManager *)self _unscheduleNativeExposureDetection];
    createXPCServiceClient = [(ENExposureDetectionManager *)self createXPCServiceClient];
    xpcServiceClient = self->_xpcServiceClient;
    self->_xpcServiceClient = createXPCServiceClient;

    self->_activated = 1;
  }
}

- (void)_invalidate
{
  if (self->_activated)
  {
    [(ENExposureDetectionManager *)self _unscheduleNativeExposureDetection];
    defaultCenter = [MEMORY[0x277CCAB90] defaultCenter];
    [defaultCenter removeObserver:self];

    objc_storeWeak(&self->_delegate, 0);
    [(ENXPCServiceClient *)self->_xpcServiceClient invalidate];
    xpcServiceClient = self->_xpcServiceClient;
    self->_xpcServiceClient = 0;

    self->_activated = 0;
  }
}

- (id)_createDetectionSessionWithError:(id *)error
{
  v5 = [(ENExposureDetectionManager *)self _getDelegateWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 exposureDetectionManager:self advertisementDatabaseQuerySessionWithAttenuationThreshold:255 error:error];
    if (v7)
    {
      if ([(ENExposureDatabase *)self->_exposureDatabase openWithError:error])
      {
        v8 = [[ENExposureDetectionDaemonSession alloc] initWithQueue:self->_sessionQueue];
        [(ENExposureDetectionDaemonSession *)v8 setAdvertisementDatabaseQuerySession:v7];
        [(ENExposureDetectionDaemonSession *)v8 setExposureDatabase:self->_exposureDatabase];
        if ([(ENExposureDetectionManager *)self _applyRegionalConfigurationToDetectionSession:v8 delegate:v6 error:error])
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_7;
      }
    }

    else if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _createDetectionSessionWithError:]", 90, "failed to create advertisement query");
    }

    v9 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)createNativeDetectionSessionWithError:(id *)error
{
  v4 = [(ENExposureDetectionManager *)self _createDetectionSessionWithError:?];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  regionConfiguration = [v4 regionConfiguration];

  if (!regionConfiguration)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v14 = "No region configuration";
LABEL_16:
    v15 = 16;
LABEL_19:
    ENErrorF(v15, v14);
    *error = v12 = 0;
    goto LABEL_7;
  }

  serverExposureConfiguration = [v5 serverExposureConfiguration];

  if (!serverExposureConfiguration)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v14 = "No server exposure configuration";
    goto LABEL_16;
  }

  regionServerConfiguration = [v5 regionServerConfiguration];

  if (!regionServerConfiguration)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v14 = "No region server config";
    goto LABEL_16;
  }

  regionConfiguration2 = [v5 regionConfiguration];
  userConsent = [regionConfiguration2 userConsent];
  consent = [userConsent consent];

  if (consent == 2)
  {
    v12 = v5;
    goto LABEL_7;
  }

  if (error)
  {
    v14 = "Not authorized in region";
    v15 = 4;
    goto LABEL_19;
  }

LABEL_20:
  v12 = 0;
LABEL_7:

  return v12;
}

- (id)_publicKeyForRegion:(id)region dictionary:(id)dictionary
{
  regionCopy = region;
  dictionaryCopy = dictionary;
  v8 = dictionaryCopy;
  if (regionCopy)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:regionCopy];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [(ENConfigurationStore *)self->_configurationStore serverConfigurationForRegion:regionCopy];
      v12 = v11;
      if (v11)
      {
        publicKey = [v11 publicKey];
        v14 = *MEMORY[0x277CDBFF8];
        v19 = 0;
        v10 = [ENSecKey keyFromBase64String:publicKey keyClass:v14 error:&v19];
        v15 = v19;

        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:regionCopy];
          v16 = v10;
        }

        else if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
        {
          v18 = CUPrintNSError();
          LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _publicKeyForRegion:dictionary:]", 90, "Public key creation failed: %@", v18);
        }
      }

      else
      {
        if (gLogCategory__ENExposureDetectionManager <= 90 && (gLogCategory__ENExposureDetectionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _publicKeyForRegion:dictionary:]", 90, "Missing server configuration for region");
        }

        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_getDelegateWithError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(11, "Nil delegate");
    *v1 = result;
  }

  return result;
}

- (void)_applyRegionalConfigurationToDetectionSession:(void *)result delegate:error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(4, "No active region");
    *v1 = result;
  }

  return result;
}

- (uint64_t)_performNativeExposureDetectionWithScheduler:(uint64_t)a1 resultHandler:.cold.1(uint64_t a1)
{
  v1 = "background";
  if (!a1)
  {
    v1 = "immediate";
  }

  return LogPrintF_safe(&gLogCategory_ENExposureDetectionManager, "[ENExposureDetectionManager _performNativeExposureDetectionWithScheduler:resultHandler:]", 50, "Running %s exposure check", v1);
}

- (void)_exposureDetectionSession:(uint64_t)a1 finishedWithResult:.cold.1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _exposureDetectionSession:finishedWithResult:]", 90, "Failed to persist last exposure classification: %@", v1);
}

- (void)_processFileAtURL:(uint64_t)a1 publicKey:(uint64_t)a2 endpoint:session:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v3 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _processFileAtURL:publicKey:endpoint:session:error:]", 90, "Unable to open key file %@: %@", a2, v3);
}

void __62__ENExposureDetectionManager__scheduleNativeExposureDetection__block_invoke_3_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory__ENExposureDetectionManager, "[ENExposureDetectionManager _scheduleNativeExposureDetection]_block_invoke_3", 90, "Scheduled native exposure detection failed: %@", v1);
}

@end