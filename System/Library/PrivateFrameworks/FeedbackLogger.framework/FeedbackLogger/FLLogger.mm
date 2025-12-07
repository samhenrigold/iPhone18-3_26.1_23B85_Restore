@interface FLLogger
+ (BOOL)isManagedProcess;
+ (id)fixedCategoryForBundleID:(id)d;
+ (id)sharedLoggerWithPersistenceConfiguration:(unint64_t)configuration;
- (FLLogger)initWithContext:(id)context;
- (FLLogger)initWithPersistenceConfiguration:(unint64_t)configuration;
- (FLWriteTransaction)writeTransaction;
- (id)__dispatched_databaseConnectionWithStorePath:(id)path;
- (id)__dispatched_persistentStoreWithId:(id)id category:(id)category;
- (id)__dispatched_persistentStoreWithId:(id)id category:(id)category storePath:(id)path;
- (id)_nextStoreCacheTimerFireDate;
- (id)categoryForSiriPayload:(id)payload autoBugCaptureBlock:(id)block;
- (id)parsecPersistentStoreForBundleID:(id)d;
- (id)readSiriCategoryFrom:(id)from recursive:(BOOL)recursive autoBugCaptureBlock:(id)block;
- (id)registerSiriInstrumentationObserver:(id)observer observer:(id)a4;
- (id)siriReadingStoreForBundleID:(id)d;
- (id)siriReadingStoreForBundleID:(id)d directoryPath:(id)path;
- (id)siriWritingStoreForBundleID:(id)d category:(id)category;
- (id)uploadHeaders;
- (void)_cancelStoreCacheTimer;
- (void)_cancelWriteTransactionTTLTimer;
- (void)_claimWriteTransaction;
- (void)_cleanPersistantStores;
- (void)_closeAllStores;
- (void)_relinquishWriteTransaction;
- (void)_scheduleStoreCacheTimer;
- (void)_scheduleWriteTransactionTTLTimer;
- (void)_setupStoreCacheTimer;
- (void)_setupWriteTransactionTTLTimer;
- (void)_writeTransactionTTLTimerDidFire;
- (void)cancelWriteTransactionTTLTimer;
- (void)closeAllStores;
- (void)closeOpenBatchesAndStores;
- (void)closeStoreForApplicationFromNotification:(id)notification;
- (void)closeStoreForBundleID:(id)d;
- (void)dealloc;
- (void)removeSiriInstrumentationObserver:(id)observer;
- (void)report:(id)report application:(id)application onComplete:(id)complete;
- (void)reportCADroppedBeforePersistPayloadFromBundleID:(id)d category:(id)category size:(unint64_t)size;
- (void)reportCAIncomingPayloadFromBundleID:(id)d category:(id)category size:(unint64_t)size;
- (void)reportDataPlatformBatchedEvent:(id)event forBundleID:(id)d ofSchema:(id)schema completion:(id)completion;
- (void)reportDataPlatformSingleEvent:(id)event forBundleID:(id)d ofSchema:(id)schema completion:(id)completion;
- (void)reportDataUploadEvent:(id)event application:(id)application completion:(id)completion;
- (void)reportParsecFeedback:(id)feedback completion:(id)completion;
- (void)reportSiriInstrumentationEvent:(id)event forBundleID:(id)d completion:(id)completion;
- (void)runOnStoreForBundleID:(id)d block:(id)block;
- (void)runOnStoreForBundleID:(id)d directoryPath:(id)path block:(id)block;
- (void)scheduleImmediateUpload;
- (void)setValue:(id)value forUploadHeaderNamed:(id)named;
- (void)write:(id)write category:(id)category toStoreWithID:(id)d completion:(id)completion;
- (void)write:(id)write store:(id)store preferredBatchSize:(unint64_t)size completion:(id)completion;
@end

@implementation FLLogger

- (void)report:(id)report application:(id)application onComplete:(id)complete
{
  reportCopy = report;
  applicationCopy = application;
  completeCopy = complete;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __42__FLLogger_report_application_onComplete___block_invoke;
  v19 = &unk_278FF8BC0;
  objc_copyWeak(&v22, &location);
  v11 = applicationCopy;
  v20 = v11;
  v12 = reportCopy;
  v21 = v12;
  v13 = _Block_copy(&v16);
  v14 = [(FLLogger *)self categoryForSiriPayload:v12 autoBugCaptureBlock:v13, v16, v17, v18, v19];
  v15 = [(FLLogger *)self siriStoreIdForBundleId:v11];
  [(FLLogger *)self write:v12 category:v14 toStoreWithID:v15 completion:completeCopy];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __42__FLLogger_report_application_onComplete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [FLAutoBugHelper alloc];
  v8 = [WeakRetained context];
  v9 = [v8 autoBugCapture];
  v10 = [(FLAutoBugHelper *)v7 initWithAutoBugCapture:v9 bundleID:*(a1 + 32) eventValue:*(a1 + 40)];

  if (v11)
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5 additionalEventName:v11];
  }

  else
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5];
  }
}

- (void)runOnStoreForBundleID:(id)d block:(id)block
{
  dCopy = d;
  blockCopy = block;
  context = [(FLLogger *)self context];
  v9 = [context pathForStore:dCopy];

  context2 = [(FLLogger *)self context];
  queue = [context2 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__FLLogger_runOnStoreForBundleID_block___block_invoke;
  v15[3] = &unk_278FF8B68;
  v15[4] = self;
  v16 = dCopy;
  v17 = v9;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = v9;
  v14 = dCopy;
  dispatch_sync(queue, v15);
}

void __40__FLLogger_runOnStoreForBundleID_block___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 siriStoreIdForBundleId:a1[5]];
  v5 = [v2 __dispatched_persistentStoreWithId:v3 category:0 storePath:a1[6]];

  v4 = v5;
  if (v5)
  {
    (*(a1[7] + 16))();
    v4 = v5;
  }
}

- (void)runOnStoreForBundleID:(id)d directoryPath:(id)path block:(id)block
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v10 = MEMORY[0x277CCACA8];
  v24[0] = path;
  v24[1] = @"data.sqlite";
  v11 = MEMORY[0x277CBEA60];
  pathCopy = path;
  v13 = [v11 arrayWithObjects:v24 count:2];
  v14 = [v10 pathWithComponents:v13];

  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FLLogger_runOnStoreForBundleID_directoryPath_block___block_invoke;
  block[3] = &unk_278FF8B68;
  block[4] = self;
  v21 = dCopy;
  v22 = v14;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = v14;
  v19 = dCopy;
  dispatch_sync(queue, block);
}

void __54__FLLogger_runOnStoreForBundleID_directoryPath_block___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 siriStoreIdForBundleId:a1[5]];
  v5 = [v2 __dispatched_persistentStoreWithId:v3 category:0 storePath:a1[6]];

  v4 = v5;
  if (v5)
  {
    (*(a1[7] + 16))();
    v4 = v5;
  }
}

- (void)reportDataPlatformSingleEvent:(id)event forBundleID:(id)d ofSchema:(id)schema completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  schemaCopy = schema;
  completionCopy = completion;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:dCopy isDPG:1])
  {
    -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", dCopy, &unk_285E1AE38, [eventCopy length]);
    v14 = [FLDPGBatchFactory allowDPGBundleID:dCopy];
    v15 = [eventCopy length];
    if (!v14)
    {
      [(FLLogger *)self reportCADroppedBeforePersistPayloadFromBundleID:dCopy category:&unk_285E1AE38 size:v15];
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = -9;
      goto LABEL_9;
    }

    if (v15 >= 0x1F0000)
    {
      -[FLLogger reportCADroppedBeforePersistPayloadFromBundleID:category:size:](self, "reportCADroppedBeforePersistPayloadFromBundleID:category:size:", dCopy, &unk_285E1AE38, [eventCopy length]);
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = -5;
LABEL_9:
      v19 = [v16 initWithDomain:@"FLErrorDomain" code:v17 userInfo:0];
      completionCopy[2](completionCopy, v19);

      goto LABEL_13;
    }

    v20 = [FLDPGBatchFactory makeBatchWithPayload:eventCopy bundleID:dCopy schema:schemaCopy];
    bundleID = [v20 bundleID];
    v30 = v20;
    payload = [v20 payload];
    v23 = os_transaction_create();
    v24 = [(FLLogger *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = bundleID;
      v38 = 2048;
      v39 = [payload length];
      _os_log_impl(&dword_24AB3F000, v24, OS_LOG_TYPE_DEFAULT, "Received persist data request for store (%@) for %lu bytes", buf, 0x16u);
    }

    context = [(FLLogger *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__FLLogger_reportDataPlatformSingleEvent_forBundleID_ofSchema_completion___block_invoke;
    block[3] = &unk_278FF8B40;
    block[4] = self;
    v32 = bundleID;
    v33 = payload;
    v34 = v23;
    v35 = completionCopy;
    v27 = v23;
    v28 = payload;
    v29 = bundleID;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping DP single event", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

LABEL_13:
}

void __74__FLLogger_reportDataPlatformSingleEvent_forBundleID_ofSchema_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  v3 = [v2 persistUploadPayload:*(a1 + 48)];

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) length];
    v7 = @"failed";
    v9 = 138412802;
    v10 = v5;
    if (!v3)
    {
      v7 = @"completed successfully";
    }

    v11 = 2048;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Persist data request for store (%@) for %lu bytes %@", &v9, 0x20u);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)reportDataPlatformBatchedEvent:(id)event forBundleID:(id)d ofSchema:(id)schema completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  schemaCopy = schema;
  completionCopy = completion;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:dCopy isDPG:1])
  {
    if ([eventCopy length] < 0x80000)
    {
      -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", dCopy, &unk_285E1AE38, [eventCopy length]);
      if ([FLDPGBatchFactory allowDPGBundleID:dCopy])
      {
        v15 = [FLDPGBatchFactory makeBatchWithPayload:eventCopy bundleID:dCopy schema:schemaCopy];
        payload = [v15 payload];
        bundleID = [v15 bundleID];
        v17 = [(FLLogger *)self siriStoreIdForBundleId:bundleID];

        writeTransaction = [(FLLogger *)self writeTransaction];
        v19 = [(FLLogger *)self log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v27 = v17;
          v28 = 2112;
          v29 = &unk_285E1AE38;
          v30 = 2048;
          v31 = [payload length];
          _os_log_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_DEFAULT, "Received persist request for store (%@, %@) for %lu bytes", buf, 0x20u);
        }

        context = [(FLLogger *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__FLLogger_reportDataPlatformBatchedEvent_forBundleID_ofSchema_completion___block_invoke;
        block[3] = &unk_278FF8B40;
        block[4] = self;
        block[5] = v17;
        block[6] = payload;
        block[7] = writeTransaction;
        v25 = completionCopy;
        dispatch_async(queue, block);
      }

      else
      {
        -[FLLogger reportCADroppedBeforePersistPayloadFromBundleID:category:size:](self, "reportCADroppedBeforePersistPayloadFromBundleID:category:size:", dCopy, &unk_285E1AE38, [eventCopy length]);
        v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"FLErrorDomain" code:-9 userInfo:0];
        (*(completionCopy + 2))(completionCopy, v22);
      }
    }

    else
    {
      [(FLLogger *)self reportDataPlatformSingleEvent:eventCopy forBundleID:dCopy ofSchema:schemaCopy completion:completionCopy];
    }
  }

  else
  {
    v14 = [(FLLogger *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v14, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping DP batch event", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __75__FLLogger_reportDataPlatformBatchedEvent_forBundleID_ofSchema_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  if (([v3 currentBatchEventCount] - 1000) < 0xFFFFFFFFFFFFFC17 || (v2 = objc_msgSend(v3, "currentBatchPayloadSize"), (objc_msgSend(*(a1 + 48), "length") + v2) >= 0x1F0000))
  {
    [v3 initializeNewBatch];
  }

  [*(a1 + 32) write:*(a1 + 48) store:v3 preferredBatchSize:0x200000 completion:*(a1 + 64)];
}

- (void)reportDataUploadEvent:(id)event application:(id)application completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  applicationCopy = application;
  completionCopy = completion;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:applicationCopy isDPG:0])
  {
    v11 = os_transaction_create();
    data = [eventCopy data];
    v13 = [(FLLogger *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = applicationCopy;
      v26 = 2048;
      v27 = [data length];
      _os_log_impl(&dword_24AB3F000, v13, OS_LOG_TYPE_DEFAULT, "Received persist data request for store (%@) for %lu bytes", buf, 0x16u);
    }

    -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", applicationCopy, &unk_285E1AE38, [data length]);
    context = [(FLLogger *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__FLLogger_reportDataUploadEvent_application_completion___block_invoke;
    block[3] = &unk_278FF8B40;
    block[4] = self;
    v20 = applicationCopy;
    v21 = data;
    v22 = v11;
    v23 = completionCopy;
    v16 = v11;
    v17 = data;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping data event", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __57__FLLogger_reportDataUploadEvent_application_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:&unk_285E1AE38];
  v3 = [v2 persistUploadPayload:*(a1 + 48)];

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) length];
    v7 = @"failed";
    v9 = 138412802;
    v10 = v5;
    if (!v3)
    {
      v7 = @"completed successfully";
    }

    v11 = 2048;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24AB3F000, v4, OS_LOG_TYPE_DEFAULT, "Persist data request for store (%@) for %lu bytes %@", &v9, 0x20u);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)removeSiriInstrumentationObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Removing siri instrumentation observer", v6, 2u);
  }

  dispatch_source_cancel(observerCopy);
}

- (id)registerSiriInstrumentationObserver:(id)observer observer:(id)a4
{
  v6 = a4;
  observerCopy = observer;
  v8 = [(FLLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_DEFAULT, "Registering new siri instrumentation observer", v12, 2u);
  }

  v9 = [(FLLogger *)self siriReadingStoreForBundleID:observerCopy];

  [(FLLogger *)self _cancelStoreCacheTimer];
  v10 = [v9 registerInsertionObserver:v6];

  return v10;
}

- (void)reportSiriInstrumentationEvent:(id)event forBundleID:(id)d completion:(id)completion
{
  eventCopy = event;
  dCopy = d;
  completionCopy = completion;
  if ([FLDPGBatchFactory allowSubmissionForBundleID:dCopy isDPG:0])
  {
    v11 = objc_autoreleasePoolPush();
    data = [eventCopy data];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__FLLogger_reportSiriInstrumentationEvent_forBundleID_completion___block_invoke;
    aBlock[3] = &unk_278FF8BC0;
    objc_copyWeak(&v22, location);
    v13 = dCopy;
    v20 = v13;
    v14 = data;
    v21 = v14;
    v15 = _Block_copy(aBlock);
    v16 = [(FLLogger *)self categoryForSiriPayload:v14 autoBugCaptureBlock:v15];
    v17 = [(FLLogger *)self siriStoreIdForBundleId:v13];
    [(FLLogger *)self write:v14 category:v16 toStoreWithID:v17 completion:completionCopy];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v18 = [(FLLogger *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_24AB3F000, v18, OS_LOG_TYPE_DEFAULT, "[Reporting Disabled] Dropping SELF event", location, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

void __66__FLLogger_reportSiriInstrumentationEvent_forBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [FLAutoBugHelper alloc];
  v8 = [WeakRetained context];
  v9 = [v8 autoBugCapture];
  v10 = [(FLAutoBugHelper *)v7 initWithAutoBugCapture:v9 bundleID:*(a1 + 32) eventValue:*(a1 + 40)];

  if (v11)
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5 additionalEventName:v11];
  }

  else
  {
    [(FLAutoBugHelper *)v10 triggerABCWithSubtype:v5];
  }
}

- (id)siriReadingStoreForBundleID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FLLogger_siriReadingStoreForBundleID___block_invoke;
  block[3] = &unk_278FF8B18;
  v11 = dCopy;
  v12 = &v13;
  block[4] = self;
  v7 = dCopy;
  dispatch_sync(queue, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __40__FLLogger_siriReadingStoreForBundleID___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)siriReadingStoreForBundleID:(id)d directoryPath:(id)path
{
  v27[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v8 = MEMORY[0x277CCACA8];
  v27[0] = pathCopy;
  v27[1] = @"data.sqlite";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v10 = [v8 pathWithComponents:v9];

  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FLLogger_siriReadingStoreForBundleID_directoryPath___block_invoke;
  block[3] = &unk_278FF8AF0;
  block[4] = self;
  v18 = dCopy;
  v19 = v10;
  v20 = &v21;
  v13 = v10;
  v14 = dCopy;
  dispatch_sync(queue, block);

  v15 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v15;
}

void __54__FLLogger_siriReadingStoreForBundleID_directoryPath___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0 storePath:a1[6]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)siriWritingStoreForBundleID:(id)d category:(id)category
{
  dCopy = d;
  categoryCopy = category;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  context = [(FLLogger *)self context];
  queue = [context queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__FLLogger_siriWritingStoreForBundleID_category___block_invoke;
  v14[3] = &unk_278FF8AF0;
  v14[4] = self;
  v15 = dCopy;
  v16 = categoryCopy;
  v17 = &v18;
  v10 = categoryCopy;
  v11 = dCopy;
  dispatch_sync(queue, v14);

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __49__FLLogger_siriWritingStoreForBundleID_category___block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [v2 siriStoreIdForBundleId:a1[5]];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:a1[6]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)categoryForSiriPayload:(id)payload autoBugCaptureBlock:(id)block
{
  blockCopy = block;
  payloadCopy = payload;
  if (![payloadCopy length])
  {
    blockCopy[2](blockCopy, @"AnyEventTypePayloadSizeZero", 0);
  }

  v8 = [objc_opt_new() initWithData:payloadCopy];

  if (v8)
  {
    v9 = [(FLLogger *)self readSiriCategoryFrom:v8 recursive:1 autoBugCaptureBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, @"AnyEventTypeReaderNil", 0);
    v9 = 0;
  }

  return v9;
}

- (id)readSiriCategoryFrom:(id)from recursive:(BOOL)recursive autoBugCaptureBlock:(id)block
{
  recursiveCopy = recursive;
  fromCopy = from;
  v8 = 0;
  v47 = 0;
  blockCopy = block;
  v9 = 0;
  v10 = @"AnyEventTypeFoundButValueSizeZero_nonrecursive";
  if (recursiveCopy)
  {
    v10 = @"AnyEventTypeFoundButValueSizeZero_recursive";
  }

  v46 = v10;
  v11 = 1;
  v12 = 1;
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
LABEL_45:
      if ((v9 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      buf[0] = 0;
      v17 = [fromCopy position] + 1;
      if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 1, v18 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:buf range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v16 |= (buf[0] & 0x7F) << v14;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v20 = v15++ >= 9;
      if (v20)
      {
        v21 = 0;
        goto LABEL_18;
      }
    }

    v21 = [fromCopy hasError] ? 0 : v16;
LABEL_18:
    if ([fromCopy hasError])
    {
      break;
    }

    if ((v21 & 7) == 4)
    {
      goto LABEL_45;
    }

    if ((v21 >> 3) == 2)
    {
      if (recursiveCopy)
      {
        v28 = PBReaderReadData();

        if (!v8)
        {
          (*(blockCopy + 2))(blockCopy, @"PayloadFoundButValueSizeZero_recursive", 0);
        }

        v12 = 0;
        v47 = v28;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        v44 = *(blockCopy + 2);
        goto LABEL_91;
      }
    }

    else if ((v21 >> 3) == 1)
    {
      v22 = 0;
      v23 = 0;
      v8 = 0;
      while (1)
      {
        buf[0] = 0;
        v24 = [fromCopy position] + 1;
        if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:buf range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v8 |= (buf[0] & 0x7F) << v22;
        if ((buf[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        if (v23++ > 8)
        {
          goto LABEL_39;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || !v8)
      {
LABEL_39:
        (*(blockCopy + 2))(blockCopy, v46, 0);
        v8 = 0;
      }

      if (!recursiveCopy)
      {
        goto LABEL_81;
      }

      v11 = 0;
      v9 = 1;
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      v44 = *(blockCopy + 2);
LABEL_91:
      v44();
      v42 = 0;
      goto LABEL_82;
    }

    if ((v11 & 1) == 0 && (v12 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (recursiveCopy)
  {
    v40 = @"AnyEventTypeReaderHasError_recursive";
  }

  else
  {
    v40 = @"AnyEventTypeReaderHasError_nonrecursive";
  }

  (*(blockCopy + 2))(blockCopy, v40, 0);
  if (v9)
  {
    goto LABEL_50;
  }

LABEL_46:
  if (recursiveCopy)
  {
    v29 = @"AnyEventTypeNeverFound_recursive";
  }

  else
  {
    v29 = @"AnyEventTypeNeverFound_nonrecursive";
  }

  (*(blockCopy + 2))(blockCopy, v29, 0);
LABEL_50:
  if (!recursiveCopy || v8 != 6)
  {
LABEL_81:
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    goto LABEL_82;
  }

  v30 = [objc_opt_new() initWithData:v47];
  while (1)
  {
    position2 = [v30 position];
    if (position2 >= [v30 length] || (objc_msgSend(v30, "hasError") & 1) != 0)
    {
      goto LABEL_80;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      buf[0] = 0;
      v35 = [v30 position] + 1;
      if (v35 >= [v30 position] && (v36 = objc_msgSend(v30, "position") + 1, v36 <= objc_msgSend(v30, "length")))
      {
        data3 = [v30 data];
        [data3 getBytes:buf range:{objc_msgSend(v30, "position"), 1}];

        [v30 setPosition:{objc_msgSend(v30, "position") + 1}];
      }

      else
      {
        [v30 _setError];
      }

      v34 |= (buf[0] & 0x7F) << v32;
      if ((buf[0] & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      v20 = v33++ >= 9;
      if (v20)
      {
        v38 = 0;
        goto LABEL_67;
      }
    }

    if ([v30 hasError])
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

LABEL_67:
    if ([v30 hasError])
    {
      v41 = [(FLLogger *)self log];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24AB3F000, v41, OS_LOG_TYPE_ERROR, "Error with PBReader with payload having outer event AnyOrderedEventType", buf, 2u);
      }

LABEL_80:
      (*(blockCopy + 2))(blockCopy, @"InnerAnyEventTypeNeverFound", 0);

      goto LABEL_81;
    }

    if ((v38 & 7) == 4)
    {
      goto LABEL_80;
    }

    if ((v38 >> 3) == 2)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      v39 = *(blockCopy + 2);
      goto LABEL_88;
    }
  }

  *buf = 0;
  v50 = 0;
  if (PBReaderPlaceMark())
  {
    v42 = [(FLLogger *)self readSiriCategoryFrom:v30 recursive:0 autoBugCaptureBlock:blockCopy];
    goto LABEL_89;
  }

  v39 = *(blockCopy + 2);
LABEL_88:
  v39();
  v42 = 0;
LABEL_89:

LABEL_82:

  return v42;
}

- (void)reportParsecFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  data = [feedback data];
  v7 = [(FLLogger *)self parsecCategoryForPayload:data];
  parsecStoreId = [(FLLogger *)self parsecStoreId];
  [(FLLogger *)self write:data category:v7 toStoreWithID:parsecStoreId completion:completionCopy];
}

- (id)parsecPersistentStoreForBundleID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  context = [(FLLogger *)self context];
  queue = [context queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__FLLogger_parsecPersistentStoreForBundleID___block_invoke;
  v9[3] = &unk_278FF8AC8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __45__FLLogger_parsecPersistentStoreForBundleID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 parsecStoreId];
  v3 = [v2 __dispatched_persistentStoreWithId:v6 category:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)write:(id)write category:(id)category toStoreWithID:(id)d completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  categoryCopy = category;
  dCopy = d;
  completionCopy = completion;
  writeTransaction = [(FLLogger *)self writeTransaction];
  v15 = [(FLLogger *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = dCopy;
    v30 = 2112;
    v31 = categoryCopy;
    v32 = 2048;
    v33 = [writeCopy length];
    _os_log_impl(&dword_24AB3F000, v15, OS_LOG_TYPE_DEFAULT, "Received persist request for store (%@, %@) for %lu bytes", buf, 0x20u);
  }

  -[FLLogger reportCAIncomingPayloadFromBundleID:category:size:](self, "reportCAIncomingPayloadFromBundleID:category:size:", dCopy, categoryCopy, [writeCopy length]);
  context = [(FLLogger *)self context];
  queue = [context queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__FLLogger_write_category_toStoreWithID_completion___block_invoke;
  v22[3] = &unk_278FF8AA0;
  v22[4] = self;
  v23 = dCopy;
  v24 = categoryCopy;
  v25 = writeCopy;
  v26 = writeTransaction;
  v27 = completionCopy;
  v18 = completionCopy;
  v19 = writeCopy;
  v20 = categoryCopy;
  v21 = dCopy;
  dispatch_async(queue, v22);
}

void __52__FLLogger_write_category_toStoreWithID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __dispatched_persistentStoreWithId:*(a1 + 40) category:*(a1 + 48)];
  [*(a1 + 32) write:*(a1 + 56) store:v2 preferredBatchSize:0 completion:*(a1 + 72)];
}

- (void)write:(id)write store:(id)store preferredBatchSize:(unint64_t)size completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  storeCopy = store;
  completionCopy = completion;
  context = [(FLLogger *)self context];
  if ([context persistenceConfiguration] == 1)
  {
    context2 = [(FLLogger *)self context];
    deviceUnlockedSinceBoot = [context2 deviceUnlockedSinceBoot];

    if ((deviceUnlockedSinceBoot & 1) == 0)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = -10;
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (storeCopy)
  {
    v18 = [storeCopy persist:writeCopy preferredBatchSize:size];
    goto LABEL_9;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = -8;
LABEL_8:
  v18 = [v16 errorWithDomain:@"FLErrorDomain" code:v17 userInfo:0];
LABEL_9:
  v19 = v18;
  v20 = [(FLLogger *)self log];
  v21 = v20;
  if (v19)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    storeIdentifier = [storeCopy storeIdentifier];
    v23 = 138412802;
    v24 = storeIdentifier;
    v25 = 2048;
    v26 = [writeCopy length];
    v27 = 2112;
    v28 = v19;
    _os_log_error_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_ERROR, "Persist request for store (%@) for %lu bytes failed with error %@.", &v23, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    storeIdentifier = [storeCopy storeIdentifier];
    v23 = 138412546;
    v24 = storeIdentifier;
    v25 = 2048;
    v26 = [writeCopy length];
    _os_log_impl(&dword_24AB3F000, v21, OS_LOG_TYPE_DEFAULT, "Persist request for store (%@) for %lu bytes completed successfully.", &v23, 0x16u);
  }

LABEL_15:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v19);
  }
}

- (void)scheduleImmediateUpload
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_INFO, "Immediate upload requested. Requesting stores be closed.", buf, 2u);
  }

  [(FLLogger *)self closeAllStores];
  v4 = dispatch_time(0, 2000000000);
  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FLLogger_scheduleImmediateUpload__block_invoke;
  block[3] = &unk_278FF8A78;
  v9 = v3;
  v7 = v3;
  dispatch_after(v4, queue, block);
}

uint64_t __35__FLLogger_scheduleImmediateUpload__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_24AB3F000, v1, OS_LOG_TYPE_INFO, "Telling FBF to upload immediately.", v3, 2u);
  }

  return notify_post([@"com.apple.parsec-fbf.FLUploadImmediately" UTF8String]);
}

- (id)uploadHeaders
{
  context = [(FLLogger *)self context];
  userDefaults = [context userDefaults];
  v4 = [userDefaults objectForKey:@"FLUploadHeaders"];

  return v4;
}

- (void)setValue:(id)value forUploadHeaderNamed:(id)named
{
  valueCopy = value;
  namedCopy = named;
  context = [(FLLogger *)self context];
  userDefaults = [context userDefaults];

  v9 = [userDefaults objectForKey:@"FLUploadHeaders"];
  v10 = v9;
  if (v9)
  {
    dictionary = [v9 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = dictionary;
  if (valueCopy)
  {
    [dictionary setObject:valueCopy forKey:namedCopy];
  }

  else
  {
    [dictionary removeObjectForKey:namedCopy];
  }

  [userDefaults setObject:v12 forKey:@"FLUploadHeaders"];
}

- (void)_closeAllStores
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Closing all stores", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  persistentStores = [(FLLogger *)self persistentStores];
  [persistentStores removeAllObjects];

  dbConnections = [(FLLogger *)self dbConnections];
  [dbConnections removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)closeOpenBatchesAndStores
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_INFO, "Received notification to close all stores and any open batches, closing", buf, 2u);
  }

  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__FLLogger_closeOpenBatchesAndStores__block_invoke;
  block[3] = &unk_278FF8A78;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__FLLogger_closeOpenBatchesAndStores__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStores];
  v3 = [v2 allValues];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) forceCloseOpenBatches];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) _closeAllStores];
}

- (void)closeAllStores
{
  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__FLLogger_closeAllStores__block_invoke;
  block[3] = &unk_278FF8A78;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_cancelStoreCacheTimer
{
  persistentStoreCacheTTLTimer = [(FLLogger *)self persistentStoreCacheTTLTimer];

  if (persistentStoreCacheTTLTimer)
  {
    persistentStoreCacheTTLTimer2 = [(FLLogger *)self persistentStoreCacheTTLTimer];
    dispatch_source_cancel(persistentStoreCacheTTLTimer2);

    [(FLLogger *)self setPersistentStoreCacheTTLTimer:0];
  }
}

- (void)_scheduleStoreCacheTimer
{
  v20 = *MEMORY[0x277D85DE8];
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  [(FLLogger *)self _setupStoreCacheTimer];
  _nextStoreCacheTimerFireDate = [(FLLogger *)self _nextStoreCacheTimerFireDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [_nextStoreCacheTimerFireDate isEqualToDate:distantFuture];

  if ((v7 & 1) == 0)
  {
    [_nextStoreCacheTimerFireDate timeIntervalSinceNow];
    v9 = v8;
    objc_initWeak(&location, self);
    if (v9 <= 0.0)
    {
      context2 = [(FLLogger *)self context];
      queue2 = [context2 queue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __36__FLLogger__scheduleStoreCacheTimer__block_invoke;
      v15[3] = &unk_278FF8A50;
      objc_copyWeak(&v16, &location);
      dispatch_async(queue2, v15);

      objc_destroyWeak(&v16);
    }

    else
    {
      v10 = [(FLLogger *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v9;
        _os_log_impl(&dword_24AB3F000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling store cache TTL timer for %f seconds from now.", buf, 0xCu);
      }

      persistentStoreCacheTTLTimer = [(FLLogger *)self persistentStoreCacheTTLTimer];
      v12 = dispatch_walltime(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(persistentStoreCacheTTLTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }

    objc_destroyWeak(&location);
  }
}

void __36__FLLogger__scheduleStoreCacheTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanPersistantStores];
    WeakRetained = v2;
  }
}

- (void)_setupStoreCacheTimer
{
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  persistentStoreCacheTTLTimer = [(FLLogger *)self persistentStoreCacheTTLTimer];

  if (!persistentStoreCacheTTLTimer)
  {
    v6 = [(FLLogger *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_24AB3F000, v6, OS_LOG_TYPE_DEFAULT, "Creating new store cache TTL timer", buf, 2u);
    }

    context2 = [(FLLogger *)self context];
    queue2 = [context2 queue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
    [(FLLogger *)self setPersistentStoreCacheTTLTimer:v9];

    objc_initWeak(buf, self);
    persistentStoreCacheTTLTimer2 = [(FLLogger *)self persistentStoreCacheTTLTimer];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__FLLogger__setupStoreCacheTimer__block_invoke;
    v15 = &unk_278FF8A00;
    selfCopy = self;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(persistentStoreCacheTTLTimer2, &v12);

    v11 = [(FLLogger *)self persistentStoreCacheTTLTimer:v12];
    dispatch_activate(v11);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __33__FLLogger__setupStoreCacheTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24AB3F000, v2, OS_LOG_TYPE_DEFAULT, "Store cache TTL timer fired.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Purging persistent store cache after inactivity", v6, 2u);
    }

    [v4 _cancelStoreCacheTimer];
    [v4 _cleanPersistantStores];
  }
}

- (id)_nextStoreCacheTimerFireDate
{
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  persistentStores = [(FLLogger *)self persistentStores];
  keyEnumerator = [persistentStores keyEnumerator];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    while (1)
    {
      persistentStores2 = [(FLLogger *)self persistentStores];
      v11 = [persistentStores2 objectForKeyedSubscript:v9];

      currentBatchCreationDate = [v11 currentBatchCreationDate];
      v13 = currentBatchCreationDate;
      if (currentBatchCreationDate)
      {
        date = currentBatchCreationDate;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
      }

      v15 = date;

      [v11 batchMaximumDuration];
      v16 = [v15 dateByAddingTimeInterval:?];
      v17 = [v16 earlierDate:distantFuture];

      [v17 timeIntervalSinceNow];
      if (v18 <= 0.0)
      {
        break;
      }

      nextObject2 = [keyEnumerator nextObject];

      v9 = nextObject2;
      distantFuture = v17;
      if (!nextObject2)
      {
        goto LABEL_10;
      }
    }

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    v17 = distantFuture;
LABEL_10:
    v17 = v17;
    distantPast = v17;
  }

  return distantPast;
}

- (void)_cleanPersistantStores
{
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Closing all open database connections.", v21, 2u);
  }

  persistentStores = [(FLLogger *)self persistentStores];
  keyEnumerator = [persistentStores keyEnumerator];

  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    do
    {
      persistentStores2 = [(FLLogger *)self persistentStores];
      v11 = [persistentStores2 objectForKeyedSubscript:v9];

      currentBatchCreationDate = [v11 currentBatchCreationDate];
      [v11 batchMaximumDuration];
      v13 = [currentBatchCreationDate dateByAddingTimeInterval:?];
      [v13 timeIntervalSinceNow];
      v15 = v14;

      if (v15 <= 0.0)
      {
        persistentStores3 = [(FLLogger *)self persistentStores];
        v17 = [persistentStores3 objectForKeyedSubscript:v9];
        [v17 closeOpenBatch];
      }

      nextObject2 = [keyEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  persistentStores4 = [(FLLogger *)self persistentStores];
  [persistentStores4 removeAllObjects];

  dbConnections = [(FLLogger *)self dbConnections];
  [dbConnections removeAllObjects];

  [(FLLogger *)self _cancelStoreCacheTimer];
}

- (void)closeStoreForApplicationFromNotification:(id)notification
{
  userInfo = [notification userInfo];
  v6 = [userInfo objectForKey:@"bundleIdentifier"];

  v5 = v6;
  if (v6)
  {
    [(FLLogger *)self closeStoreForBundleID:v6];
    v5 = v6;
  }
}

- (void)closeStoreForBundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(FLLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Received notification to close stores for %@", buf, 0xCu);
  }

  v6 = os_transaction_create();
  context = [(FLLogger *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__FLLogger_closeStoreForBundleID___block_invoke;
  block[3] = &unk_278FF8A28;
  v12 = dCopy;
  selfCopy = self;
  v14 = v6;
  v9 = v6;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __34__FLLogger_closeStoreForBundleID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-", *(a1 + 32)];
  v3 = [*(a1 + 40) persistentStores];
  v4 = [v3 allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasPrefix:v2])
        {
          v11 = [*(a1 + 40) persistentStores];
          v12 = [v11 objectForKeyedSubscript:v10];
          [v12 closeOpenBatch];

          v13 = [*(a1 + 40) persistentStores];
          [v13 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)__dispatched_persistentStoreWithId:(id)id category:(id)category storePath:(id)path
{
  idCopy = id;
  categoryCopy = category;
  pathCopy = path;
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if (categoryCopy)
  {
    categoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", idCopy, categoryCopy];
  }

  else
  {
    categoryCopy = idCopy;
  }

  v14 = categoryCopy;
  persistentStores = [(FLLogger *)self persistentStores];
  v16 = [persistentStores objectForKeyedSubscript:v14];

  [(FLLogger *)self _scheduleStoreCacheTimer];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = [(FLLogger *)self __dispatched_databaseConnectionWithStorePath:pathCopy];
    if (v18)
    {
      v19 = [FLSQLitePersistence alloc];
      context2 = [(FLLogger *)self context];
      v21 = [(FLSQLitePersistence *)v19 initWithStoreId:idCopy dbConnection:v18 loggingContext:context2];

      persistentStores2 = [(FLLogger *)self persistentStores];
      [persistentStores2 setObject:v21 forKeyedSubscript:v14];

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)__dispatched_persistentStoreWithId:(id)id category:(id)category
{
  categoryCopy = category;
  idCopy = id;
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  context2 = [(FLLogger *)self context];
  v11 = [context2 pathForStore:idCopy];

  v12 = [(FLLogger *)self __dispatched_persistentStoreWithId:idCopy category:categoryCopy storePath:v11];

  return v12;
}

- (id)__dispatched_databaseConnectionWithStorePath:(id)path
{
  pathCopy = path;
  context = [(FLLogger *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if (pathCopy)
  {
    v7 = pathCopy;
    dbConnections = [(FLLogger *)self dbConnections];
    v9 = [dbConnections objectForKeyedSubscript:v7];

    if (!v9)
    {
      v9 = [[FLSQLiteDatabaseConnection alloc] initWithStorePath:v7];
      dbConnections2 = [(FLLogger *)self dbConnections];
      [dbConnections2 setObject:v9 forKeyedSubscript:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)cancelWriteTransactionTTLTimer
{
  os_unfair_lock_lock(&self->_lock);
  [(FLLogger *)self _cancelWriteTransactionTTLTimer];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_cancelWriteTransactionTTLTimer
{
  writeTransactionTTLTimer = [(FLLogger *)self writeTransactionTTLTimer];
  if (writeTransactionTTLTimer)
  {
    v4 = writeTransactionTTLTimer;
    dispatch_source_cancel(writeTransactionTTLTimer);
    [(FLLogger *)self setWriteTransactionTTLTimer:0];
    writeTransactionTTLTimer = v4;
  }
}

- (void)_writeTransactionTTLTimerDidFire
{
  v3 = [(FLLogger *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating write transaction after TTL expiration.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(FLLogger *)self _relinquishWriteTransaction];
  [(FLLogger *)self _cancelWriteTransactionTTLTimer];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_scheduleWriteTransactionTTLTimer
{
  v10 = *MEMORY[0x277D85DE8];
  writeTransactionTTLTimer = self->_writeTransactionTTLTimer;
  v4 = [(FLLogger *)self log];
  v5 = v4;
  if (writeTransactionTTLTimer)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      writeTransactionTTL = [(FLLogger *)self writeTransactionTTL];
      _os_log_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling the write transaction TTL timer for %lu seconds from now.", &v8, 0xCu);
    }

    v6 = self->_writeTransactionTTLTimer;
    v7 = dispatch_walltime(0, 1000000000 * [(FLLogger *)self writeTransactionTTL]);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_24AB3F000, v5, OS_LOG_TYPE_ERROR, "TTL timer scheduling was requested, but no timer was found.", &v8, 2u);
    }
  }
}

- (void)_setupWriteTransactionTTLTimer
{
  context = [(FLLogger *)self context];
  queue = [context queue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  writeTransactionTTLTimer = self->_writeTransactionTTLTimer;
  self->_writeTransactionTTLTimer = v5;

  objc_initWeak(&location, self);
  writeTransactionTTLTimer = [(FLLogger *)self writeTransactionTTLTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __42__FLLogger__setupWriteTransactionTTLTimer__block_invoke;
  handler[3] = &unk_278FF8A00;
  handler[4] = self;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(writeTransactionTTLTimer, handler);

  dispatch_activate(self->_writeTransactionTTLTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__FLLogger__setupWriteTransactionTTLTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24AB3F000, v2, OS_LOG_TYPE_DEFAULT, "Write transaction TTL timer fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _writeTransactionTTLTimerDidFire];
  }
}

- (FLWriteTransaction)writeTransaction
{
  os_unfair_lock_lock(&self->_lock);
  if (![(FLLogger *)self _isHoldingWriteTransaction])
  {
    v3 = [(FLLogger *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24AB3F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing new write transaction.", v6, 2u);
    }

    [(FLLogger *)self _claimWriteTransaction];
    [(FLLogger *)self _setupWriteTransactionTTLTimer];
  }

  [(FLLogger *)self _scheduleWriteTransactionTTLTimer];
  v4 = self->_writeTransaction;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_relinquishWriteTransaction
{
  if ([objc_opt_class() isManagedProcess])
  {
    [(FLLogger *)self _cancelStoreCacheTimer];
    [(FLLogger *)self _cleanPersistantStores];
  }

  writeTransaction = self->_writeTransaction;
  self->_writeTransaction = 0;
}

- (void)_claimWriteTransaction
{
  self->_writeTransaction = objc_alloc_init(FLWriteTransaction);

  MEMORY[0x2821F96F8]();
}

- (void)reportCADroppedBeforePersistPayloadFromBundleID:(id)d category:(id)category size:(unint64_t)size
{
  v16[4] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  dCopy = d;
  context = [(FLLogger *)self context];
  v11 = &stru_285E18D78;
  if (dCopy)
  {
    v11 = dCopy;
  }

  v15[0] = @"bundle_id";
  v15[1] = @"category";
  if (categoryCopy)
  {
    v12 = categoryCopy;
  }

  else
  {
    v12 = &unk_285E1AE38;
  }

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = &unk_285E1AE68;
  v15[2] = @"outcome";
  v15[3] = @"size";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(size + 1023) >> 10];
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  [context reportTelemetry:@"com.apple.parsec-fbf.batchUploadOutcome" payload:v14];
}

- (void)reportCAIncomingPayloadFromBundleID:(id)d category:(id)category size:(unint64_t)size
{
  v16[4] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  dCopy = d;
  context = [(FLLogger *)self context];
  v11 = &stru_285E18D78;
  if (dCopy)
  {
    v11 = dCopy;
  }

  v15[0] = @"bundle_id";
  v15[1] = @"category";
  if (categoryCopy)
  {
    v12 = categoryCopy;
  }

  else
  {
    v12 = &unk_285E1AE38;
  }

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = &unk_285E1AE50;
  v15[2] = @"outcome";
  v15[3] = @"size";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(size + 1023) >> 10];
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  [context reportTelemetry:@"com.apple.parsec-fbf.batchUploadOutcome" payload:v14];
}

- (FLLogger)initWithPersistenceConfiguration:(unint64_t)configuration
{
  v5 = [FLLoggingContext alloc];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [(FLLoggingContext *)v5 initWithFileManager:defaultManager persistenceConfiguration:configuration];

  v8 = [(FLLogger *)self initWithContext:v7];
  return v8;
}

- (void)dealloc
{
  [(FLLogger *)self _closeAllStores];
  [(NSDistributedNotificationCenter *)self->_notificationCenter removeObserver:self];
  [(FLLogger *)self _cancelStoreCacheTimer];
  [(FLLogger *)self cancelWriteTransactionTTLTimer];
  v3.receiver = self;
  v3.super_class = FLLogger;
  [(FLLogger *)&v3 dealloc];
}

- (FLLogger)initWithContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = FLLogger;
  v6 = [(FLLogger *)&v17 init];
  v7 = v6;
  if (FLSignpostLoggingInit_onceToken != -1)
  {
    dispatch_once(&FLSignpostLoggingInit_onceToken, &__block_literal_global_640);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    persistentStores = v7->_persistentStores;
    v7->_persistentStores = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dbConnections = v7->_dbConnections;
    v7->_dbConnections = v10;

    v12 = flLogForObject(v7);
    log = v7->_log;
    v7->_log = v12;

    objc_storeStrong(&v7->_context, context);
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_writeTransactionTTL = 5;
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = defaultCenter;

    [(NSDistributedNotificationCenter *)v7->_notificationCenter addObserver:v7 selector:sel_closeOpenBatchesAndStores name:@"FLCloseAllStores" object:0];
    [(NSDistributedNotificationCenter *)v7->_notificationCenter addObserver:v7 selector:sel_closeStoreForApplicationFromNotification_ name:@"FLCloseStore" object:0];
  }

LABEL_4:

  return v7;
}

+ (id)fixedCategoryForBundleID:(id)d
{
  if ([FLDPGBatchFactory isDPGBundleID:d])
  {
    return &unk_285E1AE38;
  }

  else
  {
    return 0;
  }
}

+ (id)sharedLoggerWithPersistenceConfiguration:(unint64_t)configuration
{
  if (sharedLoggerWithPersistenceConfiguration__onceToken != -1)
  {
    dispatch_once(&sharedLoggerWithPersistenceConfiguration__onceToken, &__block_literal_global_29);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:configuration];
  os_unfair_lock_lock(&sharedLoggerWithPersistenceConfiguration__lock);
  v6 = [sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [[self alloc] initWithPersistenceConfiguration:configuration];
    [sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration setObject:v6 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&sharedLoggerWithPersistenceConfiguration__lock);

  return v6;
}

uint64_t __53__FLLogger_sharedLoggerWithPersistenceConfiguration___block_invoke()
{
  sharedLoggerWithPersistenceConfiguration__lock = 0;
  sharedLoggerWithPersistenceConfiguration__sharedLoggersByConfiguration = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isManagedProcess
{
  if (isManagedProcess_onceToken != -1)
  {
    dispatch_once(&isManagedProcess_onceToken, &__block_literal_global);
  }

  return isManagedProcess__isManagedProcess;
}

void __28__FLLogger_isManagedProcess__block_invoke()
{
  v0 = [MEMORY[0x277D46F48] currentProcess];
  isManagedProcess__isManagedProcess = [v0 isManaged];
}

@end