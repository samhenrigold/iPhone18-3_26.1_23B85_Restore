@interface HMDCameraClipUploader
+ (id)logCategory;
- (BOOL)_isCancelledError:(id)error;
- (BOOL)hasAddedCreateClipOperation;
- (HMDCameraClipUploader)initWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDCameraClipUploader)initWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier encryptionManager:(id)self0 factory:(id)self1;
- (HMDCameraClipUploadingDelegate)delegate;
- (NSDictionary)stateDump;
- (id)_addOperation:(id)operation isFinalOperation:(BOOL)finalOperation;
- (id)_createClip;
- (id)_createClipWithSignificantEvent:(id)event homePresenceByPairingIdentity:(id)identity;
- (id)attributeDescriptions;
- (void)_handleFatalOperationFailureDueToError:(id)error;
- (void)_operationCompleted:(id)completed isFinalOperation:(BOOL)operation future:(id)future;
- (void)_startNextOperation;
- (void)addSignificantEvent:(id)event homePresenceByPairingIdentity:(id)identity completionHandler:(id)handler;
- (void)addVideoInitData:(id)data completionHandler:(id)handler;
- (void)addVideoSegmentData:(id)data timeOffsetWithinClip:(double)clip duration:(double)duration clipFinalizedBecauseMaxDurationExceeded:(BOOL)exceeded completionHandler:(id)handler;
- (void)createClipWithCompletionHandler:(id)handler;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation HMDCameraClipUploader

- (HMDCameraClipUploadingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  logIdentifier = [(HMDCameraClipUploader *)self logIdentifier];
  v5 = [v3 initWithName:@"Identifier" value:logIdentifier];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  clipUUID = [(HMDCameraClipUploader *)self clipUUID];
  v8 = [v6 initWithName:@"Clip UUID" value:clipUUID];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  startDate = [(HMDCameraClipUploader *)self startDate];
  v11 = [v9 initWithName:@"Start Date" value:startDate];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = MEMORY[0x277CCABB0];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 initWithName:@"Target Fragment Duration" value:v14];
  v18[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  return v16;
}

- (BOOL)_isCancelledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"HMDCameraClipUploaderErrorDomain"])
  {
    v5 = [errorCopy code] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleFatalOperationFailureDueToError:(id)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = MEMORY[0x277CCA9B8];
  if (errorCopy)
  {
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = errorCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v8 = [v6 errorWithDomain:@"HMDCameraClipUploaderErrorDomain" code:1 userInfo:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraClipUploaderErrorDomain" code:1 userInfo:0];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  operations = [(HMDCameraClipUploader *)self operations];
  v10 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v15 + 1) + 8 * v13++) cancelWithError:v8];
      }

      while (v11 != v13);
      v11 = [operations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  delegate = [(HMDCameraClipUploader *)self delegate];
  [delegate clipUploaderDidFail:self];
}

- (void)_startNextOperation
{
  v13 = *MEMORY[0x277D85DE8];
  operations = [(HMDCameraClipUploader *)self operations];
  firstObject = [operations firstObject];

  if (firstObject)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = firstObject;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting next operation: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [firstObject start];
  }
}

- (void)_operationCompleted:(id)completed isFinalOperation:(BOOL)operation future:(id)future
{
  v26 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  futureCopy = future;
  error = [completedCopy error];
  if (error && !operation && ![(HMDCameraClipUploader *)self _isCancelledError:error])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = completedCopy;
      v24 = 2114;
      v25 = error;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling fatal error for operation %{public}@: %{public}@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraClipUploader *)selfCopy _handleFatalOperationFailureDueToError:error];
  }

  operations = [(HMDCameraClipUploader *)self operations];
  [operations removeObject:completedCopy];

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v19;
    v22 = 2112;
    v23 = completedCopy;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Operation completed: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [(HMDCameraClipUploader *)selfCopy2 _startNextOperation];
  if (error)
  {
    [futureCopy finishWithError:error];
  }

  else
  {
    [futureCopy finishWithNoResult];
  }
}

- (id)_addOperation:(id)operation isFinalOperation:(BOOL)finalOperation
{
  v29 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(&location, operationCopy);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke;
  v20[3] = &unk_279730EA0;
  v20[4] = self;
  objc_copyWeak(&v22, &location);
  finalOperationCopy = finalOperation;
  v9 = v8;
  v21 = v9;
  [operationCopy setCompletionBlock:v20];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v13;
    v27 = 2112;
    v28 = operationCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding operation to queue: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  operations = [(HMDCameraClipUploader *)selfCopy operations];
  [operations addObject:operationCopy];

  operations2 = [(HMDCameraClipUploader *)selfCopy operations];
  v16 = [operations2 count] == 1;

  if (v16)
  {
    [(HMDCameraClipUploader *)selfCopy _startNextOperation];
  }

  v17 = v21;
  v18 = v9;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v18;
}

void __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke_2;
  v4[3] = &unk_279730EA0;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v2, v4);

  objc_destroyWeak(&v6);
}

void __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) _operationCompleted:WeakRetained isFinalOperation:*(a1 + 56) future:*(a1 + 40)];
}

- (id)_createClipWithSignificantEvent:(id)event homePresenceByPairingIdentity:(id)identity
{
  identityCopy = identity;
  eventCopy = event;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  factory = [(HMDCameraClipUploader *)self factory];
  clipUUID = [(HMDCameraClipUploader *)self clipUUID];
  localZone = [(HMDCameraClipUploader *)self localZone];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v13 = v12;
  startDate = [(HMDCameraClipUploader *)self startDate];
  quality = [(HMDCameraClipUploader *)self quality];
  encryptionManager = [(HMDCameraClipUploader *)self encryptionManager];
  v17 = [factory createCreateClipWithSignificantEventOperationForClipModelID:clipUUID localZone:localZone significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy targetFragmentDuration:startDate clipStartDate:quality quality:v13 encryptionManager:encryptionManager];

  v18 = [(HMDCameraClipUploader *)self _addOperation:v17 isFinalOperation:0];

  return v18;
}

- (id)_createClip
{
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  factory = [(HMDCameraClipUploader *)self factory];
  clipUUID = [(HMDCameraClipUploader *)self clipUUID];
  localZone = [(HMDCameraClipUploader *)self localZone];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v8 = v7;
  startDate = [(HMDCameraClipUploader *)self startDate];
  quality = [(HMDCameraClipUploader *)self quality];
  encryptionManager = [(HMDCameraClipUploader *)self encryptionManager];
  v12 = [factory createCreateClipOperationForClipModelID:clipUUID localZone:localZone targetFragmentDuration:startDate clipStartDate:quality quality:encryptionManager encryptionManager:v8];

  v13 = [(HMDCameraClipUploader *)self _addOperation:v12 isFinalOperation:0];

  return v13;
}

- (BOOL)hasAddedCreateClipOperation
{
  didCreateClipFuture = [(HMDCameraClipUploader *)self didCreateClipFuture];
  v3 = didCreateClipFuture != 0;

  return v3;
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  factory = [(HMDCameraClipUploader *)self factory];
  clipUUID = [(HMDCameraClipUploader *)self clipUUID];
  localZone = [(HMDCameraClipUploader *)self localZone];
  v9 = [factory createFinalizeClipOperationForModelID:clipUUID localZone:localZone];

  v10 = [(HMDCameraClipUploader *)self _addOperation:v9 isFinalOperation:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HMDCameraClipUploader_finishWithCompletionHandler___block_invoke;
  v13[3] = &unk_279730E28;
  v14 = handlerCopy;
  v11 = handlerCopy;
  v12 = [v10 addCompletionBlock:v13];
}

void __53__HMDCameraClipUploader_finishWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)addVideoSegmentData:(id)data timeOffsetWithinClip:(double)clip duration:(double)duration clipFinalizedBecauseMaxDurationExceeded:(BOOL)exceeded completionHandler:(id)handler
{
  exceededCopy = exceeded;
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraClipUploader *)self hasAddedCreateClipOperation])
  {
    v15 = objc_alloc_init(HMDCameraClipSegmentMetadata);
    [(HMDCameraClipSegmentMetadata *)v15 setType:1];
    [(HMDCameraClipSegmentMetadata *)v15 setDuration:duration];
    [(HMDCameraClipSegmentMetadata *)v15 setTimeOffset:clip];
    factory = [(HMDCameraClipUploader *)self factory];
    clipUUID = [(HMDCameraClipUploader *)self clipUUID];
    localZone = [(HMDCameraClipUploader *)self localZone];
    encryptionManager = [(HMDCameraClipUploader *)self encryptionManager];
    v20 = [factory createUploadVideoSegmentOperationForModelID:clipUUID localZone:localZone data:dataCopy metadata:v15 encryptionManager:encryptionManager];

    uploadOperationEvent = [v20 uploadOperationEvent];
    [uploadOperationEvent setDidCausePreviousClipToFinalizeDueToDurationLimit:exceededCopy];

    v22 = [(HMDCameraClipUploader *)self _addOperation:v20 isFinalOperation:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __133__HMDCameraClipUploader_addVideoSegmentData_timeOffsetWithinClip_duration_clipFinalizedBecauseMaxDurationExceeded_completionHandler___block_invoke;
    v28[3] = &unk_279730E28;
    v29 = handlerCopy;
    v23 = [v22 addCompletionBlock:v28];

LABEL_7:
    goto LABEL_8;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Asked to add video segment before clip has been created", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  v15 = _Block_copy(handlerCopy);
  if (v15)
  {
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (v15->_byteOffset)(v15, v20);
    goto LABEL_7;
  }

LABEL_8:
}

void __133__HMDCameraClipUploader_addVideoSegmentData_timeOffsetWithinClip_duration_clipFinalizedBecauseMaxDurationExceeded_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)addVideoInitData:(id)data completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraClipUploader *)self hasAddedCreateClipOperation])
  {
    v9 = objc_alloc_init(HMDCameraClipSegmentMetadata);
    [(HMDCameraClipSegmentMetadata *)v9 setType:0];
    factory = [(HMDCameraClipUploader *)self factory];
    clipUUID = [(HMDCameraClipUploader *)self clipUUID];
    localZone = [(HMDCameraClipUploader *)self localZone];
    encryptionManager = [(HMDCameraClipUploader *)self encryptionManager];
    v14 = [factory createUploadVideoSegmentOperationForModelID:clipUUID localZone:localZone data:dataCopy metadata:v9 encryptionManager:encryptionManager];

    v15 = [(HMDCameraClipUploader *)self _addOperation:v14 isFinalOperation:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__HMDCameraClipUploader_addVideoInitData_completionHandler___block_invoke;
    v21[3] = &unk_279730E28;
    v22 = handlerCopy;
    v16 = [v15 addCompletionBlock:v21];

LABEL_7:
    goto LABEL_8;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Asked to add video init data before clip has been created", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v9 = _Block_copy(handlerCopy);
  if (v9)
  {
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (v9->_byteOffset)(v9, v14);
    goto LABEL_7;
  }

LABEL_8:
}

void __60__HMDCameraClipUploader_addVideoInitData_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)addSignificantEvent:(id)event homePresenceByPairingIdentity:(id)identity completionHandler:(id)handler
{
  eventCopy = event;
  identityCopy = identity;
  handlerCopy = handler;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  didCreateClipFuture = [(HMDCameraClipUploader *)self didCreateClipFuture];
  if (!didCreateClipFuture)
  {
    didCreateClipFuture = [(HMDCameraClipUploader *)self _createClipWithSignificantEvent:eventCopy homePresenceByPairingIdentity:identityCopy];
    [(HMDCameraClipUploader *)self setDidCreateClipFuture:didCreateClipFuture];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke;
    v30[3] = &unk_279730E28;
    v31 = handlerCopy;
    v13 = [didCreateClipFuture addCompletionBlock:v30];
  }

  factory = [(HMDCameraClipUploader *)self factory];
  clipUUID = [(HMDCameraClipUploader *)self clipUUID];
  localZone = [(HMDCameraClipUploader *)self localZone];
  v17 = [factory createAddSignificantEventOperationForClipModelID:clipUUID localZone:localZone significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy];

  objc_initWeak(&location, v17);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_2;
  v26[3] = &unk_279730E50;
  v26[4] = self;
  objc_copyWeak(&v28, &location);
  v18 = handlerCopy;
  v27 = v18;
  [v17 setCompletionBlock:v26];
  objc_initWeak(&from, self);
  didCreateClipFuture2 = [(HMDCameraClipUploader *)self didCreateClipFuture];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_4;
  v22[3] = &unk_279730E78;
  objc_copyWeak(&v24, &from);
  v20 = v17;
  v23 = v20;
  v21 = [didCreateClipFuture2 addSuccessBlock:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_3;
  v3[3] = &unk_279731EB8;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting significant event operation: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) start];
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = [WeakRetained error];
    v2[2](v2, v3);
  }
}

- (void)createClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  didCreateClipFuture = [(HMDCameraClipUploader *)self didCreateClipFuture];

  if (didCreateClipFuture)
  {
    v20 = _HMFPreconditionFailure();
    __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke(v20, v21, v22);
  }

  else
  {
    factory = [(HMDCameraClipUploader *)self factory];
    clipUUID = [(HMDCameraClipUploader *)self clipUUID];
    localZone = [(HMDCameraClipUploader *)self localZone];
    [(HMDCameraClipUploader *)self targetFragmentDuration];
    v11 = v10;
    startDate = [(HMDCameraClipUploader *)self startDate];
    quality = [(HMDCameraClipUploader *)self quality];
    encryptionManager = [(HMDCameraClipUploader *)self encryptionManager];
    v15 = [factory createCreateClipOperationForClipModelID:clipUUID localZone:localZone targetFragmentDuration:startDate clipStartDate:quality quality:encryptionManager encryptionManager:v11];

    v16 = [(HMDCameraClipUploader *)self _addOperation:v15 isFinalOperation:0];
    [(HMDCameraClipUploader *)self setDidCreateClipFuture:v16];

    didCreateClipFuture2 = [(HMDCameraClipUploader *)self didCreateClipFuture];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke;
    v23[3] = &unk_279730E28;
    v24 = handlerCopy;
    v18 = handlerCopy;
    v19 = [didCreateClipFuture2 addCompletionBlock:v23];
  }
}

void __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  operations = [(HMDCameraClipUploader *)self operations];
  firstObject = [operations firstObject];
  v6 = [firstObject description];
  [dictionary setObject:v6 forKeyedSubscript:@"Current Operation"];

  v7 = MEMORY[0x277CCABB0];
  operations2 = [(HMDCameraClipUploader *)self operations];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(operations2, "count")}];
  [dictionary setObject:v9 forKeyedSubscript:@"Total Operations Count"];

  v10 = objc_msgSend_copy(dictionary);

  return v10;
}

- (HMDCameraClipUploader)initWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier encryptionManager:(id)self0 factory:(id)self1
{
  dCopy = d;
  dateCopy = date;
  zoneCopy = zone;
  queueCopy = queue;
  identifierCopy = identifier;
  managerCopy = manager;
  factoryCopy = factory;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dateCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (fabs(duration) < 2.22044605e-16)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!zoneCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!queueCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!identifierCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!managerCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v24 = factoryCopy;
  if (!factoryCopy)
  {
LABEL_19:
    v34 = _HMFPreconditionFailure();
    return [(HMDCameraClipUploader *)v34 initWithClipUUID:v35 startDate:v36 targetFragmentDuration:v37 quality:v42 localZone:v38 workQueue:v39 logIdentifier:v40, v41];
  }

  v45.receiver = self;
  v45.super_class = HMDCameraClipUploader;
  v25 = [(HMDCameraClipUploader *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_clipUUID, d);
    v27 = objc_msgSend_copy(dateCopy);
    startDate = v26->_startDate;
    v26->_startDate = v27;

    v26->_targetFragmentDuration = duration;
    v26->_quality = quality;
    objc_storeStrong(&v26->_localZone, zone);
    objc_storeStrong(&v26->_workQueue, queue);
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", identifierCopy, dCopy];
    logIdentifier = v26->_logIdentifier;
    v26->_logIdentifier = dCopy;

    objc_storeStrong(&v26->_encryptionManager, manager);
    objc_storeStrong(&v26->_factory, factory);
    array = [MEMORY[0x277CBEB18] array];
    operations = v26->_operations;
    v26->_operations = array;
  }

  return v26;
}

- (HMDCameraClipUploader)initWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier
{
  v16 = MEMORY[0x277CD18E0];
  identifierCopy = identifier;
  queueCopy = queue;
  zoneCopy = zone;
  dateCopy = date;
  dCopy = d;
  v22 = objc_alloc_init(v16);
  v23 = objc_alloc_init(HMDCameraClipUploaderFactory);
  v24 = [(HMDCameraClipUploader *)self initWithClipUUID:dCopy startDate:dateCopy targetFragmentDuration:quality quality:zoneCopy localZone:queueCopy workQueue:identifierCopy logIdentifier:duration encryptionManager:v22 factory:v23];

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_163715 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_163715, &__block_literal_global_163716);
  }

  v3 = logCategory__hmf_once_v16_163717;

  return v3;
}

uint64_t __36__HMDCameraClipUploader_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16_163717;
  logCategory__hmf_once_v16_163717 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end