@interface HMDAccessoryDataStreamAdapter
+ (id)logCategory;
- (BOOL)_handleFrame:(id)frame;
- (BOOL)isBulkSendActive;
- (BOOL)isSessionOpenInProgress;
- (HMDAccessoryDataStreamAdapter)initWithAccessory:(id)accessory workQueue:(id)queue fileType:(id)type metadata:(id)metadata reason:(id)reason;
- (HMDAccessoryDataStreamAdapterDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_bulkSendDidComplete;
- (void)_bulkSendDidFail;
- (void)_callPendingOpenSessionCallbackWithResult:(id)result error:(id)error;
- (void)_handleAccessoryDidClose;
- (void)_openSession;
- (void)_setUpTransport;
- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error;
- (void)accessoryDidStartListening:(id)listening;
- (void)callPendingOpenSessionCallbackWithResult:(id)result error:(id)error;
- (void)dealloc;
- (void)readData;
- (void)setUpWithCallback:(id)callback;
- (void)shutDown;
@end

@implementation HMDAccessoryDataStreamAdapter

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDAccessoryDataStreamAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryDataStreamAdapter *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error
{
  accessoryCopy = accessory;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMDAccessoryDataStreamAdapter_accessory_didCloseDataStreamWithError___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __71__HMDAccessoryDataStreamAdapter_accessory_didCloseDataStreamWithError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = *(a1 + 40);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) accessory];
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory:%@ closed data stream", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _handleAccessoryDidClose];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) accessory];
      v10 = *(a1 + 40);
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory Closed Data Stream, expected accessory: %@ actual accessory: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)accessoryDidStartListening:(id)listening
{
  listeningCopy = listening;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDAccessoryDataStreamAdapter_accessoryDidStartListening___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = listeningCopy;
  v6 = listeningCopy;
  dispatch_async(workQueue, v7);
}

void __60__HMDAccessoryDataStreamAdapter_accessoryDidStartListening___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = *(a1 + 40);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) accessory];
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory:%@ started listening", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setTransportReady:1];
    v13 = [*(a1 + 32) pendingOpenSessionCallback];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling pending start bulk send session request", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) _openSession];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) accessory];
      v10 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory start listening failed, expected accessory: %@ actual accessory: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_bulkSendDidComplete
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {
    [(HMDAccessoryDataStreamAdapter *)self setDidBulkSendComplete:1];
  }

  delegate = [(HMDAccessoryDataStreamAdapter *)self delegate];
  [delegate dataStreamAdapterDidCompleteDataRead:self];
}

- (void)_bulkSendDidFail
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {
    [(HMDAccessoryDataStreamAdapter *)self setDidBulkSendFail:1];
  }

  delegate = [(HMDAccessoryDataStreamAdapter *)self delegate];
  [delegate dataStreamAdapterDidFailDataRead:self];
}

- (BOOL)_handleFrame:(id)frame
{
  frameCopy = frame;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDAccessoryDataStreamAdapter *)self delegate];
  LOBYTE(self) = [delegate dataStreamAdapter:self didReceiveData:frameCopy];

  return self;
}

- (BOOL)isSessionOpenInProgress
{
  selfCopy = self;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingOpenSessionCallback = [(HMDAccessoryDataStreamAdapter *)selfCopy pendingOpenSessionCallback];
  LOBYTE(selfCopy) = pendingOpenSessionCallback != 0;

  return selfCopy;
}

- (void)_handleAccessoryDidClose
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryDataStreamAdapter *)self accessory];
  v5 = HAPStringFromAccessoryServerSession();
  [accessory deregisterFromSessionRestore:v5];

  pendingOpenSessionCallback = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (pendingOpenSessionCallback)
  {
    [(HMDAccessoryDataStreamAdapter *)self setTransportReady:0];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [(HMDAccessoryDataStreamAdapter *)self _callPendingOpenSessionCallbackWithResult:0 error:v7];
  }

  else if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {

    [(HMDAccessoryDataStreamAdapter *)self _bulkSendDidFail];
  }
}

- (void)_callPendingOpenSessionCallbackWithResult:(id)result error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  session = [resultCopy session];
  [(HMDAccessoryDataStreamAdapter *)self setCurrentBulkSendSession:session];

  pendingOpenSessionCallback = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];
  [(HMDAccessoryDataStreamAdapter *)self setPendingOpenSessionCallback:0];
  if (!errorCopy)
  {
    accessory = [(HMDAccessoryDataStreamAdapter *)self accessory];
    v12 = HAPStringFromAccessoryServerSession();
    [accessory registerForSessionRestore:v12];
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v16;
    v19 = 2112;
    v20 = resultCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Calling pending callback with result: %@ error: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  (pendingOpenSessionCallback)[2](pendingOpenSessionCallback, resultCopy, errorCopy);
}

- (void)callPendingOpenSessionCallbackWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAccessoryDataStreamAdapter_callPendingOpenSessionCallbackWithResult_error___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = resultCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = resultCopy;
  dispatch_async(workQueue, block);
}

void __80__HMDAccessoryDataStreamAdapter_callPendingOpenSessionCallbackWithResult_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingOpenSessionCallback];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 _callPendingOpenSessionCallbackWithResult:v4 error:v5];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Pending open session callback was unexpectedly nil", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_openSession
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  accessory = [(HMDAccessoryDataStreamAdapter *)self accessory];
  fileType = [(HMDAccessoryDataStreamAdapter *)self fileType];
  reason = [(HMDAccessoryDataStreamAdapter *)self reason];
  metadata = [(HMDAccessoryDataStreamAdapter *)self metadata];
  workQueue2 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMDAccessoryDataStreamAdapter__openSession__block_invoke;
  v9[3] = &unk_279724788;
  objc_copyWeak(&v10, &location);
  [accessory openBulkSendSessionForFileType:fileType reason:reason metadata:metadata queue:workQueue2 callback:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__HMDAccessoryDataStreamAdapter__openSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callPendingOpenSessionCallbackWithResult:v6 error:v5];
}

- (void)_setUpTransport
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting up data stream transport", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDAccessoryDataStreamAdapter *)selfCopy accessory];
  fileType = [(HMDAccessoryDataStreamAdapter *)selfCopy fileType];
  [accessory addDataStreamBulkSendListener:selfCopy fileType:fileType];
}

- (void)readData
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentBulkSendSession = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];

  if (currentBulkSendSession)
  {
    currentBulkSendSession2 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__HMDAccessoryDataStreamAdapter_readData__block_invoke;
    v11[3] = &unk_279734EB8;
    v11[4] = self;
    [currentBulkSendSession2 read:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      accessory = [(HMDAccessoryDataStreamAdapter *)selfCopy accessory];
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = accessory;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Read data failed with no bulkSend session present for accessory:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessoryDataStreamAdapter *)selfCopy _bulkSendDidFail];
  }
}

void __41__HMDAccessoryDataStreamAdapter_readData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _bulkSendDidFail];
      goto LABEL_6;
    }

    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer read data channel has error:(%@)", &v20, 0x16u);
LABEL_4:

    goto LABEL_5;
  }

  if (v5 && ([*(a1 + 32) _handleFrame:v5] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v11 = HMFGetLogIdentifier();
    v19 = [*(a1 + 32) accessory];
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Received data frame is not accepted for accessory:%@", &v20, 0x16u);

    goto LABEL_4;
  }

  v12 = [*(a1 + 32) currentBulkSendSession];
  v13 = [v12 isActive];

  if (v13)
  {
    [*(a1 + 32) readData];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 32) accessory];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Diagnostics data transfer is completed for accessory:%@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 32) _bulkSendDidComplete];
  }

LABEL_6:
}

- (void)setUpWithCallback:(id)callback
{
  v14 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingOpenSessionCallback = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (pendingOpenSessionCallback)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Session is being setup already", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    callbackCopy[2](callbackCopy, 0, v11);
  }

  else
  {
    [(HMDAccessoryDataStreamAdapter *)self _setUpTransport];
    [(HMDAccessoryDataStreamAdapter *)self setPendingOpenSessionCallback:callbackCopy];
  }
}

- (BOOL)isBulkSendActive
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentBulkSendSession = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
  if (currentBulkSendSession && ![(HMDAccessoryDataStreamAdapter *)self didBulkSendFail])
  {
    v5 = ![(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDAccessoryDataStreamAdapter;
  [(HMDAccessoryDataStreamAdapter *)&v7 dealloc];
}

- (void)shutDown
{
  workQueue = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentBulkSendSession = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];

  if (currentBulkSendSession)
  {
    didBulkSendComplete = [(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
    currentBulkSendSession2 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
    v7 = currentBulkSendSession2;
    if (didBulkSendComplete)
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    [currentBulkSendSession2 cancelWithReason:v8];

    [(HMDAccessoryDataStreamAdapter *)self setCurrentBulkSendSession:0];
  }

  pendingOpenSessionCallback = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (pendingOpenSessionCallback)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [(HMDAccessoryDataStreamAdapter *)self _callPendingOpenSessionCallbackWithResult:0 error:v10];
  }

  accessory = [(HMDAccessoryDataStreamAdapter *)self accessory];
  if (accessory)
  {
    [accessory removeDataStreamBulkSendListener:self];
    v11 = HAPStringFromAccessoryServerSession();
    [accessory deregisterFromSessionRestore:v11];
  }

  [(HMDAccessoryDataStreamAdapter *)self setTransportReady:0];
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  fileType = [(HMDAccessoryDataStreamAdapter *)self fileType];
  v5 = [v3 initWithName:@"Diagnostics DataStream File Type" value:fileType];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self transportReady];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"TransportReady" value:v7];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self didBulkSendFail];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"DidBulkSendFail" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"DidBulkSendComplete" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (HMDAccessoryDataStreamAdapter)initWithAccessory:(id)accessory workQueue:(id)queue fileType:(id)type metadata:(id)metadata reason:(id)reason
{
  accessoryCopy = accessory;
  queueCopy = queue;
  typeCopy = type;
  metadataCopy = metadata;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = HMDAccessoryDataStreamAdapter;
  v17 = [(HMDAccessoryDataStreamAdapter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, accessoryCopy);
    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeStrong(&v18->_fileType, type);
    objc_storeStrong(&v18->_reason, reason);
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_28984 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_28984, &__block_literal_global_28985);
  }

  v3 = logCategory__hmf_once_v15_28986;

  return v3;
}

uint64_t __44__HMDAccessoryDataStreamAdapter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_28986;
  logCategory__hmf_once_v15_28986 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end