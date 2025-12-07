@interface HKDataCollector
+ (id)serverInterface;
- (BOOL)_datumsInDateOrder:(id)order secondDatum:(id)datum;
- (BOOL)_validateDatums:(id)datums error:(id *)error;
- (HKDataCollector)initWithHealthStore:(id)store bundleIdentifier:(id)identifier quantityType:(id)type;
- (HKDataCollectorCollectionConfiguration)collectionConfiguration;
- (HKDataCollectorDelegate)delegate;
- (id)_prunedBatch:(id)batch maximumLength:(int64_t)length;
- (id)_queue_callToDelegateAndEnqueueForClientFlushRequest:(id)request;
- (id)unitTest_pendingBatches;
- (id)unitTest_unconfirmedBatches;
- (id)unitTest_unpersistedBatches;
- (void)_queue_batchDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion;
- (void)_queue_checkForFinish;
- (void)_queue_considerCompletingFlushRequests;
- (void)_queue_considerSendingBatches;
- (void)_queue_pruneOldDatums;
- (void)_queue_requestRegistration;
- (void)_queue_resetUnpersistedBatches;
- (void)_queue_sendBatch:(id)batch;
- (void)_queue_sendState:(id)state;
- (void)_queue_taskServer_insertBatch:(id)batch completion:(id)completion;
- (void)_queue_updateReconsiderationTimer;
- (void)_removeBatch:(id)batch;
- (void)_requestRegistration;
- (void)clientRemote_beginCollectionWithConfiguration:(id)configuration lastPersistedDatum:(id)datum registrationUUID:(id)d;
- (void)clientRemote_collectThroughDate:(id)date completion:(id)completion;
- (void)clientRemote_collectionConfigurationDidChange:(id)change;
- (void)clientRemote_finishedPersistenceForBatch:(id)batch error:(id)error;
- (void)clientRemote_receivedBatch:(id)batch error:(id)error;
- (void)clientRemote_synchronizeWithCompletion:(id)completion;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)finishWithCompletion:(id)completion;
- (void)insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion;
- (void)resumeWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setState:(id)state;
- (void)unitTest_preSetStateHandler:(id)handler;
- (void)unitTest_setClientFlushRequestTimeoutOverride:(double)override;
- (void)unitTest_setConnectionInterruptedHandler:(id)handler;
- (void)unitTest_setMaxDatumAgeOverride:(double)override;
- (void)unitTest_setRegistrationCompleteHandler:(id)handler;
@end

@implementation HKDataCollector

- (HKDataCollector)initWithHealthStore:(id)store bundleIdentifier:(id)identifier quantityType:(id)type
{
  v52 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identifierCopy = identifier;
  typeCopy = type;
  v49.receiver = self;
  v49.super_class = HKDataCollector;
  v11 = [(HKDataCollector *)&v49 init];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A valid %@ object is required.", objc_opt_class()}];
    }

    v12 = HKCreateSerialDispatchQueue(v11, @"resource");
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [[HKRetryableOperation alloc] initWithQueue:v11->_queue retryCount:5];
    retryableOperation = v11->_retryableOperation;
    v11->_retryableOperation = v14;

    v11->_requiresRegistration = 1;
    v16 = objc_alloc_init(HKDataCollectorState);
    state = v11->_state;
    v11->_state = v16;

    v18 = [typeCopy copy];
    quantityType = v11->_quantityType;
    v11->_quantityType = v18;

    v20 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v20;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v11->_identifier;
    v11->_identifier = uUID;

    v24 = [[HKDataCollectorTaskServerConfiguration alloc] initWithQuantityType:v11->_quantityType bundleIdentifier:v11->_bundleIdentifier canResumeFromLastDatum:0];
    v25 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:storeCopy taskIdentifier:@"HKDataCollectorTaskServerIdentifier" exportedObject:v11 taskUUID:v11->_identifier];
    proxyProvider = v11->_proxyProvider;
    v11->_proxyProvider = v25;

    [(HKProxyProvider *)v11->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v11->_proxyProvider setTaskConfiguration:v24];
    objc_initWeak(&location, v11);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __69__HKDataCollector_initWithHealthStore_bundleIdentifier_quantityType___block_invoke;
    v46[3] = &unk_1E7379140;
    objc_copyWeak(&v47, &location);
    [(HKProxyProvider *)v11->_proxyProvider setAutomaticProxyReconnectionHandler:v46];
    [(HKProxyProvider *)v11->_proxyProvider setShouldRetryOnInterruption:1];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBatches = v11->_pendingBatches;
    v11->_pendingBatches = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    unpersistedBatchesByUUID = v11->_unpersistedBatchesByUUID;
    v11->_unpersistedBatchesByUUID = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    unconfirmedBatchesByUUID = v11->_unconfirmedBatchesByUUID;
    v11->_unconfirmedBatchesByUUID = v31;

    v33 = [[HKDataCollectorCollectionConfiguration alloc] initWithCollectionInterval:1 collectionLatency:600.0 collectionType:600.0];
    collectionConfiguration = v11->_collectionConfiguration;
    v11->_collectionConfiguration = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    flushRequests = v11->_flushRequests;
    v11->_flushRequests = v35;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v11->_unitTest_maxDatumAgeOverride = _Q0;
    v11->_lastLogTime = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging(v42, v43);
    v44 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v11;
      _os_log_impl(&dword_19197B000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Initialized.", buf, 0xCu);
    }

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __69__HKDataCollector_initWithHealthStore_bundleIdentifier_quantityType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestRegistration];
}

- (HKDataCollectorCollectionConfiguration)collectionConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__37;
  v10 = __Block_byref_object_dispose__37;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__HKDataCollector_collectionConfiguration__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)resumeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke;
  block[3] = &unk_1E73810E0;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_sync(queue, block);
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = [*(v2 + 24) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke_2;
    block[3] = &unk_1E73789A0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v17 = v4;
    v18 = *(a1 + 48);
    dispatch_async(v3, block);

    v5 = v17;
LABEL_5:

    return;
  }

  if (*(v2 + 169) == 1)
  {
    v6 = [*(v2 + 24) clientQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__HKDataCollector_resumeWithCompletion___block_invoke_3;
    v13[3] = &unk_1E73789A0;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v7;
    v15 = *(a1 + 48);
    dispatch_async(v6, v13);

    v5 = v14;
    goto LABEL_5;
  }

  *(v2 + 169) = 1;
  v8 = [[HKDataCollectorTaskServerConfiguration alloc] initWithQuantityType:*(*(a1 + 32) + 200) bundleIdentifier:*(*(a1 + 32) + 32) canResumeFromLastDatum:1];
  [*(*(a1 + 32) + 24) setTaskConfiguration:v8];

  v9 = [*(a1 + 40) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 176);
  *(v10 + 176) = v9;

  v12 = *(a1 + 32);
  if (!v12[8])
  {

    [v12 _queue_requestRegistration];
  }
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a1[5];
  v4 = objc_opt_class();
  v5 = a1[6];
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [v2 hk_errorForInvalidArgument:@"@" class:v4 selector:v5 format:{@"This %@ has already been invalidated.", v8}];
  (*(v3 + 16))(v3, 0, v7);
}

void __40__HKDataCollector_resumeWithCompletion___block_invoke_3(void *a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a1[5];
  v4 = objc_opt_class();
  v5 = a1[6];
  v6 = objc_opt_class();
  v9 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a1[6]);
  v8 = [v2 hk_errorForInvalidArgument:@"@" class:v4 selector:v5 format:{@"%@ has already been resumed. %@ must be called only once, and before any calls to insertDatums:device:metadata:completion:", v9, v7}];
  (*(v3 + 16))(v3, 0, v8);
}

- (void)insertDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  datumsCopy = datums;
  deviceCopy = device;
  metadataCopy = metadata;
  completionCopy = completion;
  if (completionCopy)
  {
    v17 = completionCopy;
  }

  else
  {
    v17 = &__block_literal_global_91;
  }

  v18 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v17];

  if (options)
  {
    _HKInitializeLogging(v19, v20);
    v21 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      quantityType = self->_quantityType;
      v23 = v21;
      identifier = [(HKObjectType *)quantityType identifier];
      *buf = 138543618;
      selfCopy2 = self;
      v45 = 2114;
      v46 = identifier;
      _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Transient data collection on type %{public}@", buf, 0x16u);
    }
  }

  if ([datumsCopy count])
  {
    v42 = 0;
    v26 = [(HKDataCollector *)self _validateDatums:datumsCopy error:&v42];
    v27 = v42;
    if (!v26)
    {
      (v18)[2](v18, 0, v27);
LABEL_20:

      goto LABEL_21;
    }

    if (deviceCopy)
    {
      goto LABEL_10;
    }

    if ([(HKObjectType *)self->_quantityType code]== 10)
    {
      deviceCopy = 0;
    }

    else
    {
      deviceCopy = +[HKDevice localDevice];
      if (deviceCopy)
      {
LABEL_10:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = MEMORY[0x1E695DF30];
          v34 = a2;
          v29 = *MEMORY[0x1E695D940];
          v30 = objc_opt_class();
          v31 = v29;
          a2 = v34;
          [v28 raise:v31 format:{@"A valid %@ object is required.", v30}];
        }
      }
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__HKDataCollector_insertDatums_device_metadata_options_completion___block_invoke_41;
    block[3] = &unk_1E7381108;
    block[4] = self;
    v39 = v18;
    v40 = a2;
    v36 = datumsCopy;
    deviceCopy = deviceCopy;
    v37 = deviceCopy;
    v38 = metadataCopy;
    optionsCopy = options;
    dispatch_sync(queue, block);

    goto LABEL_20;
  }

  _HKInitializeLogging(0, v25);
  v32 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v45 = 2112;
    v46 = deviceCopy;
    _os_log_impl(&dword_19197B000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring empty batch with device: %@", buf, 0x16u);
  }

  v18[2](v18, 1, 0);
LABEL_21:
}

void __67__HKDataCollector_insertDatums_device_metadata_options_completion___block_invoke_41(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = *(a1 + 64);
    v4 = MEMORY[0x1E696ABC0];
    v5 = objc_opt_class();
    v6 = *(a1 + 72);
    v7 = objc_opt_class();
    v12 = NSStringFromClass(v7);
    v8 = [v4 hk_errorForInvalidArgument:@"@" class:v5 selector:v6 format:{@"This %@ has already been invalidated.", v12}];
    (*(v3 + 16))(v3, 0, v8);
  }

  else
  {
    if ((*(v2 + 169) & 1) == 0 && !*(v2 + 64))
    {
      [v2 _queue_requestRegistration];
      v2 = *(a1 + 32);
    }

    *(v2 + 169) = 1;
    v9 = *(a1 + 64);
    v10 = [*(a1 + 40) lastObject];
    [v10 setSaveCompletion:v9];

    [*(a1 + 32) _queue_batchDatums:*(a1 + 40) device:*(a1 + 48) metadata:*(a1 + 56) options:*(a1 + 80) completion:*(a1 + 64)];
    if (*(a1 + 80))
    {
      *(*(a1 + 32) + 120) = 1;
    }

    v11 = *(a1 + 32);

    [v11 _queue_considerSendingBatches];
  }
}

- (void)_queue_batchDatums:(id)datums device:(id)device metadata:(id)metadata options:(unint64_t)options completion:(id)completion
{
  v88 = *MEMORY[0x1E69E9840];
  datumsCopy = datums;
  deviceCopy = device;
  metadataCopy = metadata;
  completionCopy = completion;
  if (!self->_pendingBatches)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBatches = self->_pendingBatches;
    self->_pendingBatches = v17;
  }

  self->_totalDatumCount += [datumsCopy count];
  lastObject = [(NSMutableArray *)self->_pendingBatches lastObject];
  v74 = completionCopy;
  v75 = metadataCopy;
  v73 = lastObject;
  if (!lastObject)
  {
    goto LABEL_26;
  }

  v20 = lastObject;
  device = [lastObject device];
  if (device != deviceCopy)
  {
    device2 = [v20 device];
    if (!device2)
    {
      goto LABEL_25;
    }

    completionCopy = device2;
    device3 = [v20 device];
    if (![deviceCopy isEqual:device3])
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  metadata = [v20 metadata];
  if (metadata == v75)
  {
    v28 = [v20 isTransient] ^ options;

    if (device == deviceCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  metadata2 = [v20 metadata];
  if (!metadata2)
  {

    goto LABEL_23;
  }

  v25 = v20;
  v26 = metadata2;
  v70 = deviceCopy;
  metadata3 = [v25 metadata];
  if (![v75 isEqual:metadata3])
  {

    deviceCopy = v70;
LABEL_23:
    if (device != deviceCopy)
    {
      goto LABEL_24;
    }

LABEL_25:

    completionCopy = v74;
    metadataCopy = v75;
    goto LABEL_26;
  }

  v28 = [v25 isTransient] ^ options;

  deviceCopy = v70;
  if (device == v70)
  {

    completionCopy = v74;
    metadataCopy = v75;
    v20 = v73;
    if ((v28 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v20 = v73;
LABEL_13:

LABEL_14:
  completionCopy = v74;
  metadataCopy = v75;
  if ((v28 & 1) == 0)
  {
LABEL_15:
    v29 = [v20 batchByAddingData:datumsCopy completion:completionCopy];
    [(NSMutableArray *)self->_pendingBatches removeLastObject];
    [(NSMutableArray *)self->_pendingBatches addObject:v29];
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - self->_lastLogTime > 120.0)
    {
      _HKInitializeLogging(v30, v31);
      v33 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
      {
        log = v33;
        batchUUID = [(_HKDataCollectorPendingBatch *)v29 batchUUID];
        v57 = HKDiagnosticStringFromUUID(batchUUID);
        data = [(_HKDataCollectorPendingBatch *)v29 data];
        v55 = [data count];
        data2 = [(_HKDataCollectorPendingBatch *)v29 data];
        firstObject = [data2 firstObject];
        dateInterval = [firstObject dateInterval];
        startDate = [dateInterval startDate];
        v56 = HKDiagnosticStringFromDate(startDate);
        data3 = [(_HKDataCollectorPendingBatch *)v29 data];
        [data3 lastObject];
        v36 = v68 = v29;
        dateInterval2 = [v36 dateInterval];
        [dateInterval2 endDate];
        v39 = v38 = datumsCopy;
        HKDiagnosticStringFromDate(v39);
        v40 = v71 = deviceCopy;
        *buf = 138544386;
        selfCopy2 = self;
        v78 = 2114;
        v79 = v57;
        v80 = 2048;
        v81 = v55;
        v82 = 2114;
        v83 = v56;
        v84 = 2114;
        v85 = v40;
        _os_log_impl(&dword_19197B000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Now contains %ld datums from %{public}@ -> %{public}@.", buf, 0x34u);

        datumsCopy = v38;
        completionCopy = v74;

        v29 = v68;
        v20 = v73;

        metadataCopy = v75;
        deviceCopy = v71;
      }

      self->_lastLogTime = Current;
    }

    if (self->_totalDatumCount >= 5001)
    {
      [(HKDataCollector *)self _queue_pruneOldDatums];
    }

    goto LABEL_31;
  }

LABEL_26:
  v41 = [_HKDataCollectorPendingBatch alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v29 = [(_HKDataCollectorPendingBatch *)v41 initWithIdentifier:uUID data:datumsCopy metadata:metadataCopy device:deviceCopy options:options completion:completionCopy];

  _queue_pruneOldDatums = [(NSMutableArray *)self->_pendingBatches addObject:v29];
  if (self->_totalDatumCount >= 5001)
  {
    _queue_pruneOldDatums = [(HKDataCollector *)self _queue_pruneOldDatums];
  }

  _HKInitializeLogging(_queue_pruneOldDatums, v44);
  v45 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    loga = v45;
    batchUUID2 = [(_HKDataCollectorPendingBatch *)v29 batchUUID];
    v46 = HKDiagnosticStringFromUUID(batchUUID2);
    v47 = [datumsCopy count];
    firstObject2 = [datumsCopy firstObject];
    dateInterval3 = [firstObject2 dateInterval];
    startDate2 = [dateInterval3 startDate];
    HKDiagnosticStringFromDate(startDate2);
    v50 = v72 = deviceCopy;
    [datumsCopy lastObject];
    v51 = v69 = v29;
    dateInterval4 = [v51 dateInterval];
    endDate = [dateInterval4 endDate];
    HKDiagnosticStringFromDate(endDate);
    v54 = v67 = datumsCopy;
    *buf = 138544642;
    selfCopy2 = self;
    v78 = 2114;
    v79 = v46;
    v80 = 2048;
    v81 = v47;
    completionCopy = v74;
    v82 = 2114;
    v83 = v50;
    v84 = 2114;
    v85 = v54;
    v86 = 2112;
    v87 = v72;
    _os_log_impl(&dword_19197B000, loga, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Inserting %lu datums from %{public}@ -> %{public}@, device: %@", buf, 0x3Eu);

    metadataCopy = v75;
    v29 = v69;

    datumsCopy = v67;
    deviceCopy = v72;
  }

  v20 = v73;
LABEL_31:
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_finishWithCompletion___block_invoke;
  block[3] = &unk_1E73810E0;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_sync(queue, block);
}

void __40__HKDataCollector_finishWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 170) == 1)
  {
    v3 = [*(v2 + 24) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_2;
    block[3] = &unk_1E73789A0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v24 = v4;
    v25 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    *(v2 + 170) = 1;
    v5 = a1 + 32;
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_3;
    aBlock[3] = &unk_1E7381130;
    objc_copyWeak(&v21, &location);
    v20 = *(a1 + 40);
    v6 = _Block_copy(aBlock);
    v7 = [*(*v5 + 144) count];
    v8 = [*(*(a1 + 32) + 136) count];
    _HKInitializeLogging(v8, v9);
    v10 = HKLogDataCollection;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(v11 + 152) count];
      *buf = 138543874;
      v27 = v11;
      v28 = 2048;
      v29 = v8 + v7;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing data collection with %ld unsent batches and %ld unpersisted batches.", buf, 0x20u);
    }

    if ([*(*(a1 + 32) + 144) count] || objc_msgSend(*(*(a1 + 32) + 136), "count"))
    {
      v13 = [v6 copy];
      v14 = *(a1 + 32);
      v15 = *(v14 + 184);
      *(v14 + 184) = v13;

      [*(a1 + 32) _queue_considerSendingBatches];
    }

    else
    {
      v16 = [*(*(a1 + 32) + 24) clientQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __40__HKDataCollector_finishWithCompletion___block_invoke_43;
      v17[3] = &unk_1E7376A98;
      v18 = v6;
      dispatch_async(v16, v17);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __40__HKDataCollector_finishWithCompletion___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a1[5];
  v4 = objc_opt_class();
  v5 = a1[6];
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [v2 hk_errorForInvalidArgument:@"@" class:v4 selector:v5 format:{@"This %@ has already been invalidated.", v8}];
  (*(v3 + 16))(v3, 0, v7);
}

void __40__HKDataCollector_finishWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging(v4, v5);
  v6 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: All data successfully flushed.", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_queue_considerSendingBatches
{
  v58 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID count];
  if (v3)
  {
    _HKInitializeLogging(v3, v4);
    v5 = HKLogDataCollection;
    if (!os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    unconfirmedBatchesByUUID = self->_unconfirmedBatchesByUUID;
    v7 = v5;
    *buf = 138543618;
    selfCopy2 = self;
    v49 = 2048;
    v50 = [(NSMutableDictionary *)unconfirmedBatchesByUUID count];
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu unconfirmed batches; delaying next send.", buf, 0x16u);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(HKDataCollectorCollectionConfiguration *)self->_collectionConfiguration collectionLatency];
    if (self->_unitTest_maxDatumAgeOverride >= 0.0)
    {
      unitTest_maxDatumAgeOverride = self->_unitTest_maxDatumAgeOverride;
    }

    v10 = Current - unitTest_maxDatumAgeOverride;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = self->_flushRequests;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          date = [*(*(&v42 + 1) + 8 * i) date];
          [date timeIntervalSinceReferenceDate];
          v18 = v17;

          if (v18 >= v10)
          {
            v10 = v18;
          }
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v42 objects:v57 count:16];
      }

      while (v13);
    }

    firstObject = [(NSMutableArray *)self->_pendingBatches firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      data = [firstObject data];
      firstObject2 = [data firstObject];
      dateInterval = [firstObject2 dateInterval];
      startDate = [dateInterval startDate];

      if (self->_shouldFlushAll || (v24 = [startDate timeIntervalSinceReferenceDate], v26 < v10) || self->_totalDatumCount > 4999 || self->_invalidated)
      {
        _HKInitializeLogging(v24, v25);
        v27 = HKLogDataCollection;
        if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
        {
          v28 = MEMORY[0x1E695DF00];
          v29 = v27;
          v30 = [v28 dateWithTimeIntervalSinceReferenceDate:v10];
          totalDatumCount = self->_totalDatumCount;
          *buf = 138544386;
          selfCopy2 = self;
          v49 = 2114;
          v50 = v7;
          v51 = 2112;
          v52 = startDate;
          v53 = 2112;
          v54 = v30;
          v55 = 2048;
          v56 = totalDatumCount;
          _os_log_impl(&dword_19197B000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending batch %{public}@ (start date %@, latest start %@, datum count %ld)", buf, 0x34u);
        }

        if (!self->_registrationUUID)
        {
          [(HKDataCollector *)self _queue_requestRegistration];

          goto LABEL_35;
        }

        [(HKDataCollector *)self _queue_sendBatch:v7];
      }
    }

    else
    {
      [(HKDataCollector *)self _queue_checkForFinish];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v32 = self->_flushRequests;
      v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v39;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v39 != v35)
            {
              objc_enumerationMutation(v32);
            }

            completion = [*(*(&v38 + 1) + 8 * j) completion];
            completion[2](completion, 1, 0);
          }

          v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v34);
      }

      [(NSMutableArray *)self->_flushRequests removeAllObjects];
      self->_shouldFlushAll = 0;
    }

    [(HKDataCollector *)self _queue_considerCompletingFlushRequests];
    [(HKDataCollector *)self _queue_updateReconsiderationTimer];
  }

LABEL_35:
}

- (void)_queue_considerCompletingFlushRequests
{
  v41 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [(NSMutableArray *)self->_pendingBatches firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    data = [firstObject data];
    firstObject2 = [data firstObject];
    dateInterval = [firstObject2 dateInterval];
    startDate = [dateInterval startDate];
  }

  else
  {
    startDate = [MEMORY[0x1E695DF00] distantFuture];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID allValues];
  v10 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        data2 = [*(*(&v35 + 1) + 8 * i) data];
        firstObject3 = [data2 firstObject];
        dateInterval2 = [firstObject3 dateInterval];
        startDate2 = [dateInterval2 startDate];

        if ([startDate2 hk_isBeforeDate:startDate])
        {
          v18 = startDate2;

          startDate = v18;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = selfCopy->_flushRequests;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v20)
  {
    v22 = v19;
    goto LABEL_27;
  }

  v21 = v20;
  v29 = v4;
  v22 = 0;
  v23 = *v32;
  do
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v32 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v31 + 1) + 8 * j);
      date = [v25 date];
      v27 = [date hk_isBeforeDate:startDate];

      if (v27)
      {
        completion = [v25 completion];
        completion[2](completion, 1, 0);

        if (!v22)
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [(NSMutableArray *)v22 addObject:v25];
      }
    }

    v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v21);

  v4 = v29;
  if (v22)
  {
    [(NSMutableArray *)selfCopy->_flushRequests removeObjectsInArray:v22];
LABEL_27:
  }
}

- (void)_queue_requestRegistration
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_requiresRegistration)
  {
    self->_requiresRegistration = 0;
    _HKInitializeLogging(v3, v4);
    v5 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering with healthd", buf, 0xCu);
    }

    retryableOperation = self->_retryableOperation;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke;
    v8[3] = &unk_1E737FFC8;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_5;
    v7[3] = &unk_1E7376A00;
    v7[4] = self;
    [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v8 completion:v7];
  }
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_2;
  v8[3] = &unk_1E7381158;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_4;
  v6[3] = &unk_1E7376960;
  v7 = v9;
  v5 = v9;
  [v4 fetchProxyWithHandler:v8 errorHandler:v6];
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__HKDataCollector__queue_requestRegistration__block_invoke_3;
  v3[3] = &unk_1E7376910;
  v4 = *(a1 + 32);
  [a2 remote_registerWithCompletion:v3];
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 hk_isHealthKitErrorWithCode:101];
  (*(*(a1 + 32) + 16))();
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    _HKInitializeLogging(v5, v6);
    v8 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished registration; awaiting registration complete.", buf, 0xCu);
    }

    [*(a1 + 32) _queue_sendState:*(*(a1 + 32) + 56)];
    [*(a1 + 32) _queue_considerSendingBatches];
  }

  else
  {
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    *(v11 + 168) = 1;
    _HKInitializeLogging(v5, v6);
    v12 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      __45__HKDataCollector__queue_requestRegistration__block_invoke_5_cold_1(v10, v7, v12);
    }

    v13 = [*(*v10 + 136) copy];
    [*(*v10 + 136) removeAllObjects];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) callCompletionsWithSuccess:0 error:{v7, v19}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    [*v10 _queue_checkForFinish];
  }
}

- (void)_requestRegistration
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__HKDataCollector__requestRegistration__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_checkForFinish
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    finishCompletion = self->_finishCompletion;
    if (finishCompletion)
    {
      v4 = _Block_copy(finishCompletion);
      v5 = self->_finishCompletion;
      self->_finishCompletion = 0;

      clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__HKDataCollector__queue_checkForFinish__block_invoke;
      block[3] = &unk_1E7376A98;
      v9 = v4;
      v7 = v4;
      dispatch_async(clientQueue, block);
    }
  }
}

- (void)_queue_sendBatch:(id)batch
{
  v37 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  dispatch_assert_queue_V2(self->_queue);
  unconfirmedBatchesByUUID = self->_unconfirmedBatchesByUUID;
  batchUUID = [batchCopy batchUUID];
  [(NSMutableDictionary *)unconfirmedBatchesByUUID setObject:batchCopy forKeyedSubscript:batchUUID];

  [(NSMutableArray *)self->_pendingBatches removeObject:batchCopy];
  data = [batchCopy data];
  self->_totalDatumCount -= [data count];

  self->_shouldFlushAll = 1;
  _HKInitializeLogging(v8, v9);
  v10 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    batchUUID2 = [batchCopy batchUUID];
    v20 = HKDiagnosticStringFromUUID(batchUUID2);
    data2 = [batchCopy data];
    v19 = [data2 count];
    data3 = [batchCopy data];
    firstObject = [data3 firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];
    data4 = [batchCopy data];
    lastObject = [data4 lastObject];
    dateInterval2 = [lastObject dateInterval];
    endDate = [dateInterval2 endDate];
    *buf = 138544386;
    selfCopy = self;
    v29 = 2114;
    v30 = v20;
    v31 = 2048;
    v32 = v19;
    v33 = 2114;
    v34 = startDate;
    v35 = 2114;
    v36 = endDate;
    _os_log_impl(&dword_19197B000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: Sending %ld datums from %{public}@ to %{public}@", buf, 0x34u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__HKDataCollector__queue_sendBatch___block_invoke;
  v25[3] = &unk_1E7376848;
  v25[4] = self;
  v26 = batchCopy;
  v18 = batchCopy;
  [(HKDataCollector *)self _queue_taskServer_insertBatch:v18 completion:v25];
}

void __36__HKDataCollector__queue_sendBatch___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    _HKInitializeLogging(v5, v6);
    v8 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 batchUUID];
      v13 = HKDiagnosticStringFromUUID(v12);
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "%{public}@: Batch %{public}@: successfully sent to daemon.", &v20, 0x16u);
    }
  }

  else
  {
    v14 = [v5 hk_isXPCConnectionError];
    if ((v14 & 1) != 0 || (v14 = [v7 hk_isHealthKitErrorWithCode:114], v14))
    {
      _HKInitializeLogging(v14, v15);
      v16 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
      {
        __36__HKDataCollector__queue_sendBatch___block_invoke_cold_2(a1, v16);
      }
    }

    else
    {
      _HKInitializeLogging(v14, v15);
      v17 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
      {
        __36__HKDataCollector__queue_sendBatch___block_invoke_cold_1(a1, v17);
      }

      v18 = *(*(a1 + 32) + 144);
      v19 = [*(a1 + 40) batchUUID];
      [v18 removeObjectForKey:v19];

      [*(a1 + 40) callCompletionsWithSuccess:0 error:v7];
    }
  }
}

- (void)_queue_updateReconsiderationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_pendingBatches count]&& ![(NSMutableDictionary *)self->_unconfirmedBatchesByUUID count])
  {
    if (!self->_reconsiderationSource)
    {
      v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      reconsiderationSource = self->_reconsiderationSource;
      self->_reconsiderationSource = v3;

      objc_initWeak(&location, self);
      v5 = self->_reconsiderationSource;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __52__HKDataCollector__queue_updateReconsiderationTimer__block_invoke;
      v21 = &unk_1E73782E8;
      objc_copyWeak(&v22, &location);
      dispatch_source_set_event_handler(v5, &v18);
      dispatch_resume(self->_reconsiderationSource);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v6 = [(NSMutableArray *)self->_pendingBatches firstObject:v18];
    data = [v6 data];
    firstObject = [data firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];
    [startDate timeIntervalSinceReferenceDate];
    v12 = v11;
    [(HKDataCollectorCollectionConfiguration *)self->_collectionConfiguration collectionLatency];
    v14 = v12 + v13;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = self->_reconsiderationSource;
    v17 = dispatch_time(0, (fmax(v14 - Current, 0.25) * 1000000000.0));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }
}

void __52__HKDataCollector__queue_updateReconsiderationTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_considerSendingBatches];
}

- (void)_queue_pruneOldDatums
{
  [(HKDataCollector *)self _queue_considerSendingBatches];
  v3 = 0;
  do
  {
    if (v3 >= [(NSMutableArray *)self->_pendingBatches count])
    {
      break;
    }

    v4 = [(NSMutableArray *)self->_pendingBatches objectAtIndexedSubscript:v3];
    v5 = self->_totalDatumCount - 5000;
    data = [v4 data];
    v7 = [data count];

    if (v7 <= v5)
    {
      [(HKDataCollector *)self _removeBatch:v4];
    }

    else
    {
      data2 = [v4 data];
      v9 = -[HKDataCollector _prunedBatch:maximumLength:](self, "_prunedBatch:maximumLength:", v4, [data2 count] - v5);

      if (v9)
      {
        [(NSMutableArray *)self->_pendingBatches replaceObjectAtIndex:v3 withObject:v9];
        data3 = [v4 data];
        v11 = [data3 count];
        data4 = [v9 data];
        self->_totalDatumCount += [data4 count] - v11;

        ++v3;
      }

      else
      {
        [(HKDataCollector *)self _removeBatch:v4];
      }
    }

    totalDatumCount = self->_totalDatumCount;
  }

  while (totalDatumCount > 5000);
}

- (void)_queue_resetUnpersistedBatches
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_unpersistedBatchesByUUID allValues];
  v4 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [(NSMutableArray *)self->_pendingBatches addObject:*(*(&v17 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_unpersistedBatchesByUUID removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID allValues];
  v9 = [allValues2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        [(NSMutableArray *)self->_pendingBatches addObject:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [allValues2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_unconfirmedBatchesByUUID removeAllObjects];
  [(NSMutableArray *)self->_pendingBatches sortUsingComparator:&__block_literal_global_50_1];
}

uint64_t __49__HKDataCollector__queue_resetUnpersistedBatches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 data];
  v6 = [v5 firstObject];
  v7 = [v6 dateInterval];
  v8 = [v7 startDate];
  v9 = [v4 data];

  v10 = [v9 firstObject];
  v11 = [v10 dateInterval];
  v12 = [v11 startDate];
  v13 = [v8 compare:v12];

  return v13;
}

- (void)_removeBatch:(id)batch
{
  pendingBatches = self->_pendingBatches;
  batchCopy = batch;
  [(NSMutableArray *)pendingBatches removeObject:batchCopy];
  data = [batchCopy data];
  self->_totalDatumCount -= [data count];

  v7 = [MEMORY[0x1E696ABC0] hk_error:1300 format:{@"Reached datum buffer limit, pruning datums."}];
  [batchCopy callCompletionsWithSuccess:0 error:v7];
}

- (id)_prunedBatch:(id)batch maximumLength:(int64_t)length
{
  batchCopy = batch;
  data = [batchCopy data];
  data2 = [batchCopy data];
  v9 = [data subarrayWithRange:{objc_msgSend(data2, "count") + ~length, length + 1}];
  v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_56];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _HKInitializeLogging(v11, v12);
    v13 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      [(HKDataCollector *)self _prunedBatch:batchCopy maximumLength:v13];
    }

    goto LABEL_5;
  }

  data3 = [batchCopy data];
  v15 = [data3 count] - length + v10;

  data4 = [batchCopy data];
  v17 = [data4 count];

  if (v15 == v17)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_12;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      data5 = [batchCopy data];
      v21 = [data5 objectAtIndexedSubscript:i];
      saveCompletion = [v21 saveCompletion];

      if (saveCompletion)
      {
        v23 = [MEMORY[0x1E696ABC0] hk_error:1300 format:{@"Reached datum buffer limit, pruning datums."}];
        data6 = [batchCopy data];
        v25 = [data6 objectAtIndexedSubscript:i];
        saveCompletion2 = [v25 saveCompletion];
        (saveCompletion2)[2](saveCompletion2, 0, v23);
      }
    }
  }

  data7 = [batchCopy data];
  data8 = [batchCopy data];
  v29 = [data7 subarrayWithRange:{v15, objc_msgSend(data8, "count") - v15}];

  v30 = [v29 hk_map:&__block_literal_global_60_0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_2;
  aBlock[3] = &unk_1E7376A00;
  v39 = v30;
  v31 = v30;
  v32 = _Block_copy(aBlock);
  v33 = [_HKDataCollectorPendingBatch alloc];
  batchUUID = [batchCopy batchUUID];
  metadata = [batchCopy metadata];
  device = [batchCopy device];
  v18 = [(_HKDataCollectorPendingBatch *)v33 initWithIdentifier:batchUUID data:v29 metadata:metadata device:device options:0 completion:v32];

LABEL_12:

  return v18;
}

BOOL __46__HKDataCollector__prunedBatch_maximumLength___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 saveCompletion];
  v3 = v2 != 0;

  return v3;
}

id __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_57(uint64_t a1, void *a2)
{
  v2 = [a2 saveCompletion];
  v3 = _Block_copy(v2);

  return v3;
}

void __46__HKDataCollector__prunedBatch_maximumLength___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy copy];
  state = self->_state;
  self->_state = v5;

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__HKDataCollector_setState___block_invoke;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(queue, v9);
}

- (void)_queue_sendState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  retryableOperation = self->_retryableOperation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__HKDataCollector__queue_sendState___block_invoke;
  v7[3] = &unk_1E7376988;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v7 completion:&__block_literal_global_62];
}

void __36__HKDataCollector__queue_sendState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__HKDataCollector__queue_sendState___block_invoke_2;
  v10[3] = &unk_1E73811E0;
  v10[4] = v5;
  v11 = v4;
  v12 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__HKDataCollector__queue_sendState___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v12;
  v7 = v12;
  [v6 fetchProxyWithHandler:v10 errorHandler:v8];
}

void __36__HKDataCollector__queue_sendState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 112);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HKDataCollector__queue_sendState___block_invoke_3;
  v6[3] = &unk_1E7376910;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 remote_setCollectionState:v5 completion:v6];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__HKDataCollector_setDelegate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void *__31__HKDataCollector_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 208), *(a1 + 40));
  result = *(a1 + 32);
  if (!result[8])
  {

    return [result _queue_requestRegistration];
  }

  return result;
}

- (void)_queue_taskServer_insertBatch:(id)batch completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_registrationUUID)
  {
    [HKDataCollector _queue_taskServer_insertBatch:a2 completion:self];
  }

  retryableOperation = self->_retryableOperation;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke;
  v11[3] = &unk_1E7376988;
  v11[4] = self;
  v12 = batchCopy;
  v10 = batchCopy;
  [(HKRetryableOperation *)retryableOperation _queue_performRetryableOperation:v11 completion:completionCopy];
}

void __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_2;
  v10[3] = &unk_1E73811E0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v13;
  v7 = v13;
  [v4 fetchProxyWithHandler:v10 errorHandler:v8];
}

void __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 data];
  v6 = [*(a1 + 32) device];
  v7 = [*(a1 + 32) metadata];
  v8 = [*(a1 + 32) options];
  v9 = [*(a1 + 32) batchUUID];
  v10 = *(*(a1 + 40) + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__HKDataCollector__queue_taskServer_insertBatch_completion___block_invoke_3;
  v11[3] = &unk_1E7376910;
  v12 = *(a1 + 48);
  [v4 remote_insertDatums:v5 device:v6 metadata:v7 options:v8 batchUUID:v9 registrationUUID:v10 completion:v11];
}

- (void)clientRemote_synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HKDataCollector_clientRemote_synchronizeWithCompletion___block_invoke;
  block[3] = &unk_1E7376A98;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, block);
}

- (void)clientRemote_beginCollectionWithConfiguration:(id)configuration lastPersistedDatum:(id)datum registrationUUID:(id)d
{
  configurationCopy = configuration;
  datumCopy = datum;
  dCopy = d;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = datumCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = datumCopy;
  v14 = configurationCopy;
  dispatch_sync(queue, v15);
}

void __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke(id *a1, uint64_t a2)
{
  v2 = a1;
  v77 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v3 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[6];
    *buf = 138543874;
    v72 = v4;
    v73 = 2114;
    v74 = v5;
    v75 = 2114;
    v76 = v6;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning client-side data collection with configuration %{public}@, last datum %{public}@", buf, 0x20u);
  }

  v7 = [v2[7] copy];
  v8 = v2[4];
  v9 = v8[8];
  v8[8] = v7;

  v10 = [v2[5] copy];
  v11 = v2[4];
  v12 = v11[9];
  v11[9] = v10;

  v13 = _Block_copy(*(v2[4] + 22));
  v14 = v2[4];
  v15 = v14[22];
  v14[22] = 0;

  if (v13)
  {
    v16 = [*(v2[4] + 3) clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_73;
    block[3] = &unk_1E7376AC0;
    v68 = v13;
    v67 = v2[6];
    dispatch_async(v16, block);
  }

  [v2[4] _queue_resetUnpersistedBatches];
  if (v2[6])
  {
    v52 = v13;
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [v2[6] dateInterval];
    v18 = [v17 endDate];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = *(v2[4] + 17);
    v19 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v19)
    {
      v20 = v19;
      v55 = *v63;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          v22 = v2;
          if (*v63 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v62 + 1) + 8 * i);
          v24 = [v23 data];
          v25 = [v24 firstObject];
          v26 = [v25 dateInterval];
          v27 = [v26 startDate];
          v28 = [v27 hk_isAfterOrEqualToDate:v18];

          if (v28)
          {
            [v54 addObject:v23];
          }

          else
          {
            v29 = [v23 data];
            v30 = [v29 lastObject];
            v31 = [v30 dateInterval];
            v32 = [v31 endDate];
            v33 = [v32 hk_isBeforeOrEqualToDate:v18];

            if (v33)
            {
              [v23 callCompletionsWithSuccess:1 error:0];
            }

            else
            {
              v34 = [v23 data];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_2;
              v60[3] = &unk_1E7381208;
              v61 = v18;
              v35 = [v34 hk_filter:v60];

              v36 = [_HKDataCollectorPendingBatch alloc];
              v37 = [MEMORY[0x1E696AFB0] UUID];
              v38 = [v23 metadata];
              v39 = [v23 device];
              v40 = [v23 completions];
              v41 = [(_HKDataCollectorPendingBatch *)v36 initWithIdentifier:v37 data:v35 metadata:v38 device:v39 options:0 completions:v40];

              [v54 addObject:v41];
            }
          }

          v2 = v22;
        }

        v20 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v20);
    }

    objc_storeStrong(v2[4] + 17, v54);
    *(v2[4] + 6) = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = *(v2[4] + 17);
    v43 = [v42 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v57;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v57 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v56 + 1) + 8 * j) data];
          *(v2[4] + 6) += [v47 count];
        }

        v44 = [v42 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v44);
    }

    v13 = v52;
  }

  v48 = v2[4];
  if (v48[12])
  {
    v49 = _Block_copy(v48[12]);
    v50 = v2[4];
    v51 = v50[12];
    v50[12] = 0;

    (v49)[2](v49, v2[4]);
    v48 = v2[4];
  }

  [v48 _queue_considerSendingBatches];
}

uint64_t __101__HKDataCollector_clientRemote_beginCollectionWithConfiguration_lastPersistedDatum_registrationUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 startDate];
  v5 = [v4 hk_isAfterOrEqualToDate:*(a1 + 32)];

  return v5;
}

- (void)clientRemote_collectionConfigurationDidChange:(id)change
{
  changeCopy = change;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HKDataCollector_clientRemote_collectionConfigurationDidChange___block_invoke;
  block[3] = &unk_1E737B490;
  block[4] = self;
  v6 = changeCopy;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(queue, block);
  if (v12[5])
  {
    delegate = [(HKDataCollector *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate dataCollector:self didUpdateCollectionConfiguration:v12[5]];
    }
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __65__HKDataCollector_clientRemote_collectionConfigurationDidChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 72) isEqual:*(a1 + 40)];
  if ((v2 & 1) == 0)
  {
    _HKInitializeLogging(v2, v3);
    v4 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v14 = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received updated configuration: %{public}@", &v14, 0x16u);
    }

    v7 = [*(a1 + 40) copy];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 40) copy];
  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  *(v11 + 72) = v10;

  return [*(a1 + 32) _queue_considerSendingBatches];
}

- (void)clientRemote_receivedBatch:(id)batch error:(id)error
{
  batchCopy = batch;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKDataCollector_clientRemote_receivedBatch_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = batchCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = batchCopy;
  dispatch_sync(queue, block);
}

void __52__HKDataCollector_clientRemote_receivedBatch_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 144) removeObjectForKey:*(a1 + 40)];
  if (!v2)
  {
    v5 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:*(a1 + 40)];

    _HKInitializeLogging(v6, v7);
    v8 = HKLogDataCollection;
    v3 = os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_8;
      }

      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [0 batchUUID];
      v12 = HKDiagnosticStringFromUUID(v11);
      *v26 = 138543618;
      *&v26[4] = v9;
      *&v26[12] = 2114;
      *&v26[14] = v12;
      v13 = "%{public}@: Duplicate receipt confirmation of batch %{public}@, ignoring.";
    }

    else
    {
      if (!v3)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 32);
      v10 = v8;
      v11 = [0 batchUUID];
      v12 = HKDiagnosticStringFromUUID(v11);
      *v26 = 138543618;
      *&v26[4] = v14;
      *&v26[12] = 2114;
      *&v26[14] = v12;
      v13 = "%{public}@: Received receipt confirmation for unknown batch %{public}@, ignoring.";
    }

    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, v13, v26, 0x16u);
  }

LABEL_8:
  v15 = *(a1 + 48);
  _HKInitializeLogging(v3, v4);
  v16 = HKLogDataCollection;
  if (v15)
  {
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = v16;
      v24 = HKDiagnosticStringFromUUID(v21);
      v25 = *(a1 + 48);
      *v26 = 138543874;
      *&v26[4] = v22;
      *&v26[12] = 2114;
      *&v26[14] = v24;
      *&v26[22] = 2114;
      v27 = v25;
      _os_log_error_impl(&dword_19197B000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Batch %{public}@: Fatal error sending batch, failing send: %{public}@", v26, 0x20u);
    }

    [v2 callCompletionsWithSuccess:0 error:{*(a1 + 48), *v26, *&v26[8]}];
  }

  else
  {
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v2 batchUUID];
      v20 = HKDiagnosticStringFromUUID(v19);
      *v26 = 138543618;
      *&v26[4] = v17;
      *&v26[12] = 2114;
      *&v26[14] = v20;
      _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Batch %{public}@: confirmed receipt.", v26, 0x16u);
    }

    [*(*(a1 + 32) + 152) setObject:v2 forKeyedSubscript:{*(a1 + 40), *v26, *&v26[8]}];
    [*(a1 + 32) _queue_considerCompletingFlushRequests];
  }

  [*(a1 + 32) _queue_considerSendingBatches];
}

- (void)clientRemote_finishedPersistenceForBatch:(id)batch error:(id)error
{
  batchCopy = batch;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKDataCollector_clientRemote_finishedPersistenceForBatch_error___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = batchCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = batchCopy;
  dispatch_sync(queue, block);
}

void __66__HKDataCollector_clientRemote_finishedPersistenceForBatch_error___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [*(a1[4] + 152) objectForKeyedSubscript:a1[5]];
  if (v3)
  {
    v4 = [*(a1[4] + 152) removeObjectForKey:a1[5]];
    if (a1[6])
    {
      _HKInitializeLogging(v4, v5);
      v6 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = v6;
        v14 = HKDiagnosticStringFromUUID(v11);
        v15 = a1[6];
        v16 = 138543874;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v15;
        _os_log_error_impl(&dword_19197B000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Batch %{public}@: Persistence failed: %{public}@.", &v16, 0x20u);
      }

      v7 = a1[6];
    }

    else
    {
      v7 = 0;
    }

    [v3 callCompletionsWithSuccess:v7 == 0 error:?];
  }

  else
  {
    _HKInitializeLogging(0, v2);
    v8 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Daemon reported persistence finished for batch %{public}@, but no record of that batch exists.", &v16, 0x16u);
    }
  }
}

- (void)clientRemote_collectThroughDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_sync(queue, block);
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(a1, a2);
  v3 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Received flush request through %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__37;
  v21 = __Block_byref_object_dispose__37;
  v22 = 0;
  v6 = [_HKDataCollectorFlushRequest alloc];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_78;
  v14 = &unk_1E7381230;
  v7 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v7;
  v18 = buf;
  v17 = *(a1 + 48);
  v8 = [(_HKDataCollectorFlushRequest *)v6 initWithDate:v16 completion:&v11];
  v9 = [*(a1 + 32) _queue_callToDelegateAndEnqueueForClientFlushRequest:{v8, v11, v12, v13, v14, v15}];
  v10 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v9;

  _Block_object_dispose(buf, 8);
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_78(uint64_t a1, char a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_2;
  v16[3] = &unk_1E7381258;
  v16[4] = v5;
  v17 = v4;
  v10 = *(a1 + 48);
  v7 = v10;
  v18 = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_79;
  v12[3] = &unk_1E7381280;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v11 = *(a1 + 48);
  v9 = v11;
  v14 = v11;
  v15 = a2;
  [v6 fetchProxyWithHandler:v16 errorHandler:v12];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_3;
  v7[3] = &unk_1E7381230;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [a2 remote_synchronizeWithCompletion:v7];
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging(v4, v5);
  v6 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Flush request through %{public}@ complete.", &v12, 0x16u);
  }

  v9 = *(*(a1[7] + 8) + 40);
  if (v9)
  {
    dispatch_source_cancel(v9);
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  (*(a1[6] + 16))();
}

void __62__HKDataCollector_clientRemote_collectThroughDate_completion___block_invoke_79(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v5 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Flush request through %{public}@ complete but synchronization failed; reporting completion anyway.", &v11, 0x16u);
  }

  v8 = *(*(a1[7] + 8) + 40);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  (*(a1[6] + 16))();
}

- (id)_queue_callToDelegateAndEnqueueForClientFlushRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  unitTest_clientFlushRequestTimeoutOverride = self->_unitTest_clientFlushRequestTimeoutOverride;
  if (unitTest_clientFlushRequestTimeoutOverride >= 0.0)
  {
    v6 = (unitTest_clientFlushRequestTimeoutOverride * 1000000000.0);
  }

  else
  {
    v6 = 1000000000;
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke;
  aBlock[3] = &unk_1E73812A8;
  aBlock[4] = self;
  v30 = v31;
  v7 = requestCopy;
  v29 = v7;
  v8 = _Block_copy(aBlock);
  delegate = [(HKDataCollector *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_3;
    v24[3] = &unk_1E7376710;
    v10 = v25;
    v25[0] = delegate;
    v25[1] = self;
    v26 = v7;
    v27 = v8;
    v11 = _Block_copy(v24);

    v12 = v26;
LABEL_8:

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v14 = dispatch_time(0, v6);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
    dispatch_async(clientQueue, v11);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_5;
    handler[3] = &unk_1E7378280;
    v19 = v31;
    handler[4] = self;
    v18 = v7;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(v13);

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_4;
    v20[3] = &unk_1E73766C8;
    v10 = &v21;
    v21 = delegate;
    v22 = v7;
    v23 = v8;
    v11 = _Block_copy(v20);

    v12 = v22;
    goto LABEL_8;
  }

  [(NSMutableArray *)self->_flushRequests addObject:v7];
  [(HKDataCollector *)self _queue_considerSendingBatches];
  v13 = 0;
LABEL_10:

  _Block_object_dispose(v31, 8);

  return v13;
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_2;
  block[3] = &unk_1E7378280;
  block[4] = v1;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

uint64_t __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 24) = 1;
  [*(a1[4] + 128) addObject:a1[5]];
  v2 = a1[4];

  return [v2 _queue_considerSendingBatches];
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) date];
  [v2 dataCollector:v3 didRequestCollectionThroughDate:v4 completion:*(a1 + 56)];
}

void __72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) date];
  [v2 dataCollectorDidRequestCollectionThroughDate:v3 completion:*(a1 + 48)];
}

void *__72__HKDataCollector__queue_callToDelegateAndEnqueueForClientFlushRequest___block_invoke_5(void *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v2 = result;
    _HKInitializeLogging(result, a2);
    v3 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v2[4];
      v4 = v2[5];
      v6 = v3;
      v7 = [v4 date];
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to get data flushed through %{public}@ from client in a timely fashion. Continuing to flush data to healthd.", &v8, 0x16u);
    }

    [*(v2[4] + 128) addObject:v2[5]];
    return [v2[4] _queue_considerSendingBatches];
  }

  return result;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F80D8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ argumentIndex:0 ofReply:0];
  hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
  [v2 setClasses:hk_secureCodingClasses forSelector:sel_remote_insertDatums_device_metadata_options_batchUUID_registrationUUID_completion_ argumentIndex:2 ofReply:0];

  return v2;
}

- (void)connectionInvalidated
{
  v6 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging(self, a2);
  v3 = HKLogDataCollection;
  if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection invalidated", &v4, 0xCu);
  }

  [(HKDataCollector *)self connectionInterrupted];
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__HKDataCollector_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_sync(queue, block);
  unitTest_connectionInterruptedHandler = self->_unitTest_connectionInterruptedHandler;
  if (unitTest_connectionInterruptedHandler)
  {
    v5 = _Block_copy(unitTest_connectionInterruptedHandler);
    v5[2](v5, self);
  }
}

uint64_t __40__HKDataCollector_connectionInterrupted__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  *(*(a1 + 32) + 120) = 0;
  [*(*(a1 + 32) + 128) removeAllObjects];
  [*(a1 + 32) _queue_resetUnpersistedBatches];
  v4 = *(a1 + 32);

  return [v4 _queue_updateReconsiderationTimer];
}

- (BOOL)_validateDatums:(id)datums error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  datumsCopy = datums;
  v7 = [datumsCopy countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = *v42;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(datumsCopy);
        }

        v13 = *(*(&v41 + 1) + 8 * v11);
        if (v12 && ![(HKDataCollector *)self _datumsInDateOrder:v12 secondDatum:*(*(&v41 + 1) + 8 * v11)])
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"Datums must be in date order. Incorrect date ranges for datums: (%@), (%@)", v12, v13}];
          v27 = 0;
          goto LABEL_27;
        }

        v9 = v13;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"A valid %@ object is required.", objc_opt_class(), v39}];
          goto LABEL_25;
        }

        quantityType = self->_quantityType;
        quantity = [v9 quantity];
        _unit = [quantity _unit];
        LOBYTE(quantityType) = [(HKQuantityType *)quantityType isCompatibleWithUnit:_unit];

        if ((quantityType & 1) == 0)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:errorCopy code:3 format:{@"Quantity (%@) does not have a unit compatible with data stream quantity type %@", v9, self->_quantityType}];
          goto LABEL_25;
        }

        if ([(HKSampleType *)self->_quantityType isMaximumDurationRestricted])
        {
          dateInterval = [v9 dateInterval];
          [dateInterval duration];
          v19 = v18;
          [(HKSampleType *)self->_quantityType maximumAllowedDuration];
          v21 = v20;

          if (v19 > v21)
          {
            v28 = MEMORY[0x1E696ABC0];
            dateInterval2 = [v9 dateInterval];
            startDate = [dateInterval2 startDate];
            dateInterval3 = [v9 dateInterval];
            endDate = [dateInterval3 endDate];
            v33 = self->_quantityType;
            [(HKSampleType *)v33 maximumAllowedDuration];
            [v28 hk_assignError:errorCopy code:3 format:{@"Duration between startDate (%@) and endDate (%@) is above the maximum allowed duration for this sample type. Maximum duration for type %@ is %f", startDate, endDate, v33, v34}];
            goto LABEL_24;
          }
        }

        if ([(HKSampleType *)self->_quantityType isMinimumDurationRestricted])
        {
          dateInterval4 = [v9 dateInterval];
          [dateInterval4 duration];
          v24 = v23;
          [(HKSampleType *)self->_quantityType minimumAllowedDuration];
          v26 = v25;

          if (v24 < v26)
          {
            v35 = MEMORY[0x1E696ABC0];
            dateInterval2 = [v9 dateInterval];
            startDate = [dateInterval2 startDate];
            dateInterval3 = [v9 dateInterval];
            endDate = [dateInterval3 endDate];
            v36 = self->_quantityType;
            [(HKSampleType *)v36 minimumAllowedDuration];
            [v35 hk_assignError:errorCopy code:3 format:{@"Duration between startDate (%@) and endDate (%@) is below the minimum allowed duration for this sample type. Minimum duration for type %@ is %f", startDate, endDate, v36, v37}];
LABEL_24:

LABEL_25:
            v27 = 0;
            goto LABEL_26;
          }
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [datumsCopy countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v27 = 1;
LABEL_26:
    v12 = v9;
LABEL_27:
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (BOOL)_datumsInDateOrder:(id)order secondDatum:(id)datum
{
  datumCopy = datum;
  orderCopy = order;
  dateInterval = [orderCopy dateInterval];
  startDate = [dateInterval startDate];

  dateInterval2 = [orderCopy dateInterval];

  endDate = [dateInterval2 endDate];

  dateInterval3 = [datumCopy dateInterval];
  startDate2 = [dateInterval3 startDate];

  dateInterval4 = [datumCopy dateInterval];

  endDate2 = [dateInterval4 endDate];

  if ([startDate hk_isAfterDate:startDate2] & 1) != 0 || (objc_msgSend(endDate, "hk_isAfterDate:", endDate2))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = [endDate hk_isAfterDate:startDate2] ^ 1;
  }

  return v15;
}

- (void)unitTest_setMaxDatumAgeOverride:(double)override
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__HKDataCollector_unitTest_setMaxDatumAgeOverride___block_invoke;
  v4[3] = &unk_1E7378630;
  v4[4] = self;
  *&v4[5] = override;
  dispatch_sync(queue, v4);
}

double __51__HKDataCollector_unitTest_setMaxDatumAgeOverride___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 80) = result;
  return result;
}

- (void)unitTest_setClientFlushRequestTimeoutOverride:(double)override
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__HKDataCollector_unitTest_setClientFlushRequestTimeoutOverride___block_invoke;
  v4[3] = &unk_1E7378630;
  v4[4] = self;
  *&v4[5] = override;
  dispatch_sync(queue, v4);
}

double __65__HKDataCollector_unitTest_setClientFlushRequestTimeoutOverride___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 88) = result;
  return result;
}

- (void)unitTest_setRegistrationCompleteHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HKDataCollector_unitTest_setRegistrationCompleteHandler___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __59__HKDataCollector_unitTest_setRegistrationCompleteHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 64))
  {
    v4 = v2[2];

    return v4();
  }

  else
  {
    v6 = [v2 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }
}

- (void)unitTest_setConnectionInterruptedHandler:(id)handler
{
  v4 = [handler copy];
  unitTest_connectionInterruptedHandler = self->_unitTest_connectionInterruptedHandler;
  self->_unitTest_connectionInterruptedHandler = v4;

  MEMORY[0x1EEE66BB8](v4, unitTest_connectionInterruptedHandler);
}

- (void)unitTest_preSetStateHandler:(id)handler
{
  v4 = [handler copy];
  unitTest_preSetStateHandler = self->_unitTest_preSetStateHandler;
  self->_unitTest_preSetStateHandler = v4;

  MEMORY[0x1EEE66BB8](v4, unitTest_preSetStateHandler);
}

- (id)unitTest_pendingBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__HKDataCollector_unitTest_pendingBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__HKDataCollector_unitTest_pendingBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)unitTest_unconfirmedBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HKDataCollector_unitTest_unconfirmedBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__HKDataCollector_unitTest_unconfirmedBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)unitTest_unpersistedBatches
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HKDataCollector_unitTest_unpersistedBatches__block_invoke;
  v6[3] = &unk_1E7378528;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__HKDataCollector_unitTest_unpersistedBatches__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (HKDataCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__HKDataCollector__queue_requestRegistration__block_invoke_5_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: Failed to initiate registration: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __36__HKDataCollector__queue_sendBatch___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 batchUUID];
  v5 = HKDiagnosticStringFromUUID(v4);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v6, v7, "%{public}@: Batch %{public}@: Unexpected fatal error sending batch; dropping: %{public}@", v8, v9, v10, v11);
}

void __36__HKDataCollector__queue_sendBatch___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 batchUUID];
  v5 = HKDiagnosticStringFromUUID(v4);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v6, v7, "%{public}@: Batch %{public}@: Connection error sending batch, will retry: %{public}@", v8, v9, v10, v11);
}

- (void)_prunedBatch:(NSObject *)a3 maximumLength:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "%{public}@: Error: Failed to find a completion block in batch to be pruned: %{public}@.", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_queue_taskServer_insertBatch:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDataCollector.m" lineNumber:776 description:{@"Invalid parameter not satisfying: %@", @"_registrationUUID"}];
}

@end