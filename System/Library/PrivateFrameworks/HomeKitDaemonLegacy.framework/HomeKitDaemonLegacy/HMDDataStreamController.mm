@interface HMDDataStreamController
- (BOOL)_isDataStreamCapable;
- (BOOL)_isDataStreamConfigurationValid;
- (BOOL)setupRequiresCharacteristicReads;
- (HMDDataStreamController)initWithAccessory:(id)accessory transferManagementService:(id)service workQueue:(id)queue dataStreamFactory:(id)factory;
- (HMDHAPAccessory)accessory;
- (HMDService)transferManagementService;
- (id)_getActiveProtocolWithName:(id)name;
- (id)_getStreamProtocol;
- (void)_cancelStreamTransportWithError:(id)error;
- (void)_createBulkStreamProtocol;
- (void)_createStreamSocketWithStreamProtocol:(id)protocol applicationProtocolName:(id)name completion:(id)completion;
- (void)_failPendingSocketRequestsWithError:(id)error;
- (void)_handleAccessoryConnected;
- (void)_handleAccessoryDisconnected;
- (void)_initiateStreamSetup;
- (void)_processPendingSocketRequests;
- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion;
- (void)_resetDefaultDataStream;
- (void)_resetTransportInfo;
- (void)_startIdleTimer;
- (void)_stopIdleTimer;
- (void)addBulkSendListener:(id)listener fileType:(id)type;
- (void)dataStream:(id)stream didFailWithError:(id)error;
- (void)dataStreamDidClose:(id)close;
- (void)dataStreamDidOpen:(id)open;
- (void)dataStreamDidReceiveRawFrame:(id)frame;
- (void)dataStreamDidUpdateActiveStatus:(id)status;
- (void)dataStreamInitializationSetupOperation:(id)operation didCompleteSupportReadWithStatus:(BOOL)status;
- (void)dataStreamSetupOperation:(id)operation didFailWithError:(id)error;
- (void)dataStreamSetupOperation:(id)operation didSucceedWithTransport:(id)transport sessionEncryption:(id)encryption;
- (void)deRegisterFromNotifications;
- (void)handleAccessoryConnected;
- (void)handleAccessoryDisconnected:(id)disconnected;
- (void)invalidate;
- (void)openBulkSendSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)openStreamSocketWithApplicationProtocol:(id)protocol completion:(id)completion;
- (void)registerForNotifications;
- (void)removeBulkSendListener:(id)listener;
- (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDDataStreamController

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDService)transferManagementService
{
  WeakRetained = objc_loadWeakRetained(&self->_transferManagementService);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v21 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idleTimer = [(HMDDataStreamController *)self idleTimer];

  if (idleTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      defaultDataStream = [(HMDDataStreamController *)selfCopy defaultDataStream];
      isActive = [defaultDataStream isActive];
      v13 = @"inactive";
      if (isActive)
      {
        v13 = @"active";
      }

      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Idle timer fired and data stream is %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    defaultDataStream2 = [(HMDDataStreamController *)selfCopy defaultDataStream];
    isActive2 = [defaultDataStream2 isActive];

    if ((isActive2 & 1) == 0)
    {
      defaultDataStream3 = [(HMDDataStreamController *)selfCopy defaultDataStream];
      [defaultDataStream3 close];
    }

    [(HMDDataStreamController *)selfCopy _stopIdleTimer];
  }
}

- (void)_stopIdleTimer
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idleTimer = [(HMDDataStreamController *)self idleTimer];

  if (idleTimer)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping idle timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    idleTimer2 = [(HMDDataStreamController *)selfCopy idleTimer];
    [idleTimer2 cancel];

    [(HMDDataStreamController *)selfCopy setIdleTimer:0];
  }
}

- (void)_startIdleTimer
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDDataStreamController *)self _stopIdleTimer];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting idle timer", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v9 = [mEMORY[0x277D0F8D0] preferenceForKey:@"hdsIdleTimeout"];

  numberValue = [v9 numberValue];

  if (numberValue)
  {
    numberValue2 = [v9 numberValue];
    [numberValue2 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 5.0;
  }

  v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v13];
  [(HMDDataStreamController *)selfCopy setIdleTimer:v14];

  idleTimer = [(HMDDataStreamController *)selfCopy idleTimer];
  [idleTimer setDelegate:selfCopy];

  workQueue2 = [(HMDDataStreamController *)selfCopy workQueue];
  idleTimer2 = [(HMDDataStreamController *)selfCopy idleTimer];
  [idleTimer2 setDelegateQueue:workQueue2];

  idleTimer3 = [(HMDDataStreamController *)selfCopy idleTimer];
  [idleTimer3 resume];
}

- (void)invalidate
{
  workQueue = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDDataStreamController_invalidate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __37__HMDDataStreamController_invalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:&unk_28662ADB8];
  [*(a1 + 32) _cancelStreamTransportWithError:v2];
}

- (void)openBulkSendSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  v17 = +[HMDDataStreamBulkSendProtocol protocolName];
  v18 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v17];

  v19 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    [v21 openSessionForFileType:typeCopy reason:reasonCopy metadata:metadataCopy queue:queueCopy callback:callbackCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v27 = v22;
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@HMDDataStreamBulkSendProtocol not registered; cannot start bulk send session", buf, 0xCu);

      v22 = v27;
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    callbackCopy[2](callbackCopy, 0, v26);
  }
}

- (void)dataStreamDidUpdateActiveStatus:(id)status
{
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];
  isActive = [defaultDataStream isActive];

  if (isActive)
  {

    [(HMDDataStreamController *)self _stopIdleTimer];
  }

  else
  {

    [(HMDDataStreamController *)self _startIdleTimer];
  }
}

- (void)dataStreamDidReceiveRawFrame:(id)frame
{
  accessory = [(HMDDataStreamController *)self accessory];
  primaryIPServer = [accessory primaryIPServer];
  [primaryIPServer _indicateSessionActivityWithReason:@"DataStream"];
}

- (void)dataStreamDidOpen:(id)open
{
  v11 = *MEMORY[0x277D85DE8];
  openCopy = open;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream opened", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamController *)selfCopy _processPendingSocketRequests];
}

- (void)dataStreamDidClose:(id)close
{
  v11 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@DataStream closed", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamController *)selfCopy _resetDefaultDataStream];
}

- (void)dataStream:(id)stream didFailWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@DataStream failed with error (%@)!", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDDataStreamController *)selfCopy _resetDefaultDataStream];
}

- (void)_resetDefaultDataStream
{
  [(HMDDataStreamController *)self setDefaultDataStream:0];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  [(HMDDataStreamController *)self _failPendingSocketRequestsWithError:v3];
}

- (void)_createBulkStreamProtocol
{
  v3 = [HMDDataStreamBulkSendProtocol alloc];
  workQueue = [(HMDDataStreamController *)self workQueue];
  accessory = [(HMDDataStreamController *)self accessory];
  logIdentifier = [(HMDDataStreamController *)self logIdentifier];
  v12 = [(HMDDataStreamBulkSendProtocol *)v3 initWithQueue:workQueue accessory:accessory logIdentifier:logIdentifier];

  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];
  v8 = +[HMDDataStreamBulkSendProtocol protocolName];
  [defaultDataStream addProtocol:v12 name:v8];

  defaultDataStream2 = [(HMDDataStreamController *)self defaultDataStream];
  protocolDelegateHandle = [defaultDataStream2 protocolDelegateHandle];
  [(HMDDataStreamBulkSendProtocol *)v12 setDataStream:protocolDelegateHandle];

  setupInProgress = [(HMDDataStreamController *)self setupInProgress];
  [setupInProgress movePendingBulkSendListenersToBulkSendProtocol:v12];
}

- (void)_cancelStreamTransportWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  setupInProgress = [(HMDDataStreamController *)self setupInProgress];

  if (setupInProgress)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    setupInProgress2 = [(HMDDataStreamController *)selfCopy setupInProgress];
    [setupInProgress2 cancelSetup];

    [(HMDDataStreamController *)selfCopy _failPendingSocketRequestsWithError:errorCopy];
    [(HMDDataStreamController *)selfCopy setSetupInProgress:0];
  }

  else
  {
    defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (defaultDataStream)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Canceling active DataStream", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      defaultDataStream2 = [(HMDDataStreamController *)selfCopy2 defaultDataStream];
      [defaultDataStream2 close];
    }

    else
    {
      if (v15)
      {
        v18 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Dropping cancel-stream; appears to already be canceled", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }
}

- (void)dataStreamSetupOperation:(id)operation didFailWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  errorCopy = error;
  setupInProgress = [(HMDDataStreamController *)self setupInProgress];

  if (setupInProgress == operationCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream setup (which is in progress)", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDDataStreamController *)selfCopy setSetupInProgress:0];
    [(HMDDataStreamController *)selfCopy _failPendingSocketRequestsWithError:errorCopy];
  }
}

- (void)dataStreamSetupOperation:(id)operation didSucceedWithTransport:(id)transport sessionEncryption:(id)encryption
{
  v23 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  transportCopy = transport;
  encryptionCopy = encryption;
  setupInProgress = [(HMDDataStreamController *)self setupInProgress];

  if (setupInProgress == operationCopy)
  {
    dataStreamFactory = [(HMDDataStreamController *)self dataStreamFactory];
    workQueue = [(HMDDataStreamController *)self workQueue];
    logIdentifier = [(HMDDataStreamController *)self logIdentifier];
    v19 = (dataStreamFactory)[2](dataStreamFactory, transportCopy, encryptionCopy, workQueue, logIdentifier);

    [(HMDDataStreamController *)self setDefaultDataStream:v19];
    defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];
    [defaultDataStream setDelegate:self];

    [transportCopy setDelegate:v19];
    [(HMDDataStreamController *)self _createBulkStreamProtocol];
    [v19 connect];
    [(HMDDataStreamController *)self setSetupInProgress:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Setup operation succeeded however is no longer the current one; ignoring its result.", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)dataStreamInitializationSetupOperation:(id)operation didCompleteSupportReadWithStatus:(BOOL)status
{
  statusCopy = status;
  v20 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  setupInProgress = [(HMDDataStreamController *)self setupInProgress];

  if (setupInProgress == operationCopy)
  {
    if (statusCopy)
    {
      [(HMDDataStreamController *)self _handleAccessoryConnected];
    }

    if ([(HMDDataStreamController *)self _isDataStreamCapable]&& ![(HMDDataStreamController *)self supportsDataStreamOverTCP])
    {
      [operationCopy setMaxControllerTransportMTU:self->_maxControllerTransportMTU];
      setupInProgress2 = [(HMDDataStreamController *)self setupInProgress];
      [setupInProgress2 startSetup];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Canceling DataStream initialization setup (which is in progress)", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDDataStreamController *)selfCopy setSetupInProgress:0];
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [(HMDDataStreamController *)selfCopy _failPendingSocketRequestsWithError:v16];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Setup init operation succeeded however is no longer the current one; ignoring its result.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_initiateStreamSetup
{
  v24 = *MEMORY[0x277D85DE8];
  setupInProgress = [(HMDDataStreamController *)self setupInProgress];

  if (!setupInProgress)
  {
    setupRequiresCharacteristicReads = [(HMDDataStreamController *)self setupRequiresCharacteristicReads];
    accessory = [(HMDDataStreamController *)self accessory];
    transferManagementService = [(HMDDataStreamController *)self transferManagementService];
    if ([(HMDDataStreamController *)self supportsDataStreamOverTCP])
    {
      workQueue = [(HMDDataStreamController *)self workQueue];
      logIdentifier = [(HMDDataStreamController *)self logIdentifier];
      v13 = [HMDDataStreamSetupOperation tcpSetupOperationWithAccessory:accessory queue:workQueue logIdentifier:logIdentifier transferManagementService:transferManagementService];
    }

    else
    {
      if (![(HMDDataStreamController *)self supportsDataStreamOverHAP]&& !setupRequiresCharacteristicReads)
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; not supported", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [(HMDDataStreamController *)selfCopy _cancelStreamTransportWithError:v21];

        goto LABEL_14;
      }

      workQueue = [(HMDDataStreamController *)self workQueue];
      logIdentifier = [(HMDDataStreamController *)self logIdentifier];
      v13 = [HMDDataStreamSetupOperation hapSetupOperationWithAccessory:accessory queue:workQueue logIdentifier:logIdentifier transferManagementService:transferManagementService maxControllerTransportMTU:[(HMDDataStreamController *)self maxControllerTransportMTU] setupOperationReadRequired:setupRequiresCharacteristicReads];
    }

    v14 = v13;
    [(HMDDataStreamController *)self setSetupInProgress:v13];

    setupInProgress2 = [(HMDDataStreamController *)self setupInProgress];
    [setupInProgress2 setDelegate:self];

    if (!setupRequiresCharacteristicReads)
    {
      setupInProgress3 = [(HMDDataStreamController *)self setupInProgress];
      [setupInProgress3 startSetup];
    }

LABEL_14:

    return;
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Initiating stream setup while already in progress; ignoring this extra call.", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (BOOL)setupRequiresCharacteristicReads
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamController *)self _isDataStreamCapable])
  {
    return 0;
  }

  if (![(HMDDataStreamController *)self _isDataStreamConfigurationValid])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current data stream configuration is not valid", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  return ![(HMDDataStreamController *)self _isDataStreamCapable];
}

- (BOOL)_isDataStreamCapable
{
  if ([(HMDDataStreamController *)self supportsDataStreamOverTCP])
  {
    return 1;
  }

  return [(HMDDataStreamController *)self supportsDataStreamOverHAP];
}

- (void)_createStreamSocketWithStreamProtocol:(id)protocol applicationProtocolName:(id)name completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  nameCopy = name;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = nameCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating stream socket for application protocol %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [HMDDataStreamSocket alloc];
  workQueue = [(HMDDataStreamController *)selfCopy workQueue];
  v17 = [(HMDDataStreamSocket *)v15 initWithStreamProtocol:protocolCopy applicationProtocolName:nameCopy workQueue:workQueue];

  [protocolCopy registerSocket:v17];
  completionCopy[2](completionCopy, v17, 0);
}

- (id)_getStreamProtocol
{
  v3 = +[HMDDataStreamStreamProtocol protocolName];
  v4 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v3];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = v5;
  if (!v7)
  {
    v9 = [HMDDataStreamStreamProtocol alloc];
    defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];
    protocolDelegateHandle = [defaultDataStream protocolDelegateHandle];
    v8 = [(HMDDataStreamStreamProtocol *)v9 initWithDataStream:protocolDelegateHandle];

    defaultDataStream2 = [(HMDDataStreamController *)self defaultDataStream];
    v13 = +[HMDDataStreamStreamProtocol protocolName];
    [defaultDataStream2 addProtocol:v8 name:v13];
  }

  return v8;
}

- (void)_failPendingSocketRequestsWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pendingSocketRequests = [(HMDDataStreamController *)self pendingSocketRequests];
  v6 = [pendingSocketRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(pendingSocketRequests);
        }

        completion = [*(*(&v12 + 1) + 8 * v9) completion];
        (completion)[2](completion, 0, errorCopy);

        ++v9;
      }

      while (v7 != v9);
      v7 = [pendingSocketRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  pendingSocketRequests2 = [(HMDDataStreamController *)self pendingSocketRequests];
  [pendingSocketRequests2 removeAllObjects];
}

- (void)_processPendingSocketRequests
{
  v20 = *MEMORY[0x277D85DE8];
  pendingSocketRequests = [(HMDDataStreamController *)self pendingSocketRequests];
  hmf_isEmpty = [pendingSocketRequests hmf_isEmpty];

  if ((hmf_isEmpty & 1) == 0)
  {
    _getStreamProtocol = [(HMDDataStreamController *)self _getStreamProtocol];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingSocketRequests2 = [(HMDDataStreamController *)self pendingSocketRequests];
    v7 = [pendingSocketRequests2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(pendingSocketRequests2);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          applicationProtocolName = [v11 applicationProtocolName];
          completion = [v11 completion];
          [(HMDDataStreamController *)self _createStreamSocketWithStreamProtocol:_getStreamProtocol applicationProtocolName:applicationProtocolName completion:completion];
        }

        v8 = [pendingSocketRequests2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    pendingSocketRequests3 = [(HMDDataStreamController *)self pendingSocketRequests];
    [pendingSocketRequests3 removeAllObjects];
  }
}

- (void)openStreamSocketWithApplicationProtocol:(id)protocol completion:(id)completion
{
  protocolCopy = protocol;
  completionCopy = completion;
  workQueue = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDDataStreamController_openStreamSocketWithApplicationProtocol_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = protocolCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = protocolCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);
}

void __78__HMDDataStreamController_openStreamSocketWithApplicationProtocol_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultDataStream];

  if (v2 || ([*(a1 + 32) _initiateStreamSetup], objc_msgSend(*(a1 + 32), "setupInProgress"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) pendingSocketRequests];
    v5 = [[HMDPendingSocketRequest alloc] initWithApplicationProtocolName:*(a1 + 40) completion:*(a1 + 48)];
    [v4 addObject:v5];

    v6 = [*(a1 + 32) setupInProgress];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Waiting for DataStream setup before processing stream socket request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v11 = *(a1 + 32);

      [v11 _processPendingSocketRequests];
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v12 + 16))(v12, 0);
  }
}

- (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier
{
  v3 = *&identifier;
  v16 = *MEMORY[0x277D85DE8];
  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (defaultDataStream)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data Stream sending target-control whoami message", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    defaultDataStream2 = [(HMDDataStreamController *)selfCopy defaultDataStream];
    protocolDelegateHandle = [defaultDataStream2 protocolDelegateHandle];
    [HMDDataStreamTargetControlProtocol sendTargetControlWhoAmIWithIdentifier:v3 dataStreamProtocolDelegate:protocolDelegateHandle];
  }

  else
  {
    if (v9)
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data Stream not running; dropping target-control whoami message", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)removeBulkSendListener:(id)listener
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  accessory = [(HMDDataStreamController *)self accessory];
  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];

  if (!defaultDataStream)
  {
    setupInProgress = [(HMDDataStreamController *)self setupInProgress];

    if (setupInProgress)
    {
      setupInProgress2 = [(HMDDataStreamController *)self setupInProgress];
      v19 = [setupInProgress2 removeBulkSendListener:listenerCopy];

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v19)
      {
        if (v23)
        {
          v24 = HMFGetLogIdentifier();
          *v28 = 138543362;
          *&v28[4] = v24;
          v25 = "%{public}@Removed pending bulk-send listener registration (waiting for stream setup)";
LABEL_20:
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, v25, v28, 0xCu);
        }
      }

      else if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *v28 = 138543362;
        *&v28[4] = v24;
        v25 = "%{public}@Removed bulk-send listener trivially (stream setting up, but this was not part of it)";
        goto LABEL_20;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *v28 = 138543362;
        *&v28[4] = v24;
        v25 = "%{public}@Removed bulk-send listener trivially (nothing had started)";
        goto LABEL_20;
      }
    }

    objc_autoreleasePoolPop(v20);
LABEL_22:
    [listenerCopy accessory:accessory didCloseDataStreamWithError:{0, *v28, *&v28[8]}];
    goto LABEL_23;
  }

  v7 = +[HMDDataStreamBulkSendProtocol protocolName];
  v8 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v7];

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      *v28 = 138543362;
      *&v28[4] = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream", v28, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [v11 removeListener:listenerCopy];

    goto LABEL_22;
  }

  if (v15)
  {
    v26 = HMFGetLogIdentifier();
    *v28 = 138543362;
    *&v28[4] = v26;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed bulk-send listener on this stream (but there was no protocol!?)", v28, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v27 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1064];
  [listenerCopy accessory:accessory didCloseDataStreamWithError:v27];

LABEL_23:
}

- (void)addBulkSendListener:(id)listener fileType:(id)type
{
  v33 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  typeCopy = type;
  accessory = [(HMDDataStreamController *)self accessory];
  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];

  if (defaultDataStream)
  {
    v10 = +[HMDDataStreamBulkSendProtocol protocolName];
    v11 = [(HMDDataStreamController *)self _getActiveProtocolWithName:v10];

    setupInProgress2 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = setupInProgress2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = typeCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding bulk-send listener on this stream for file-type '%@'", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [v14 addListener:listenerCopy fileType:typeCopy];
    }

    else
    {
      if (v18)
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = typeCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Cancelling bulk-send listener registration for file-type '%@' due to no such protocol on this stream", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v27 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1064];
      [listenerCopy accessory:accessory didCloseDataStreamWithError:v27];
    }
  }

  else
  {
    [(HMDDataStreamController *)self _initiateStreamSetup];
    setupInProgress = [(HMDDataStreamController *)self setupInProgress];

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    if (setupInProgress)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v25;
        v31 = 2112;
        v32 = typeCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Add pending bulk-send listener registration for file-type '%@' (waiting for stream setup)", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      setupInProgress2 = [(HMDDataStreamController *)selfCopy2 setupInProgress];
      [setupInProgress2 addBulkSendListener:listenerCopy fileType:typeCopy];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v28;
        v31 = 2112;
        v32 = typeCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling bulk-send listener registration for file-type '%@' due to no active data stream", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      setupInProgress2 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1063];
      [listenerCopy accessory:accessory didCloseDataStreamWithError:setupInProgress2];
    }
  }
}

- (id)_getActiveProtocolWithName:(id)name
{
  nameCopy = name;
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultDataStream = [(HMDDataStreamController *)self defaultDataStream];
  v7 = [defaultDataStream protocolWithName:nameCopy];

  return v7;
}

- (void)_handleAccessoryDisconnected
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = selfCopy;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is no longer connected: %@. Removing any transports that were active", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  selfCopy->_supportsDataStreamOverTCP = 0;
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [(HMDDataStreamController *)selfCopy _cancelStreamTransportWithError:v7];
}

- (void)handleAccessoryDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  workQueue = [(HMDDataStreamController *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDDataStreamController_handleAccessoryDisconnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(workQueue, v7);
}

void __55__HMDDataStreamController_handleAccessoryDisconnected___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) accessory];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [*(a1 + 40) _handleAccessoryDisconnected];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) accessory];
      v12 = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unconfigured accessory: %@ did not match self.accessory :%@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_handleAccessoryConnected
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  _isDataStreamConfigurationValid = [(HMDDataStreamController *)self _isDataStreamConfigurationValid];
  canAcceptBulkSendListeners = [(HMDDataStreamController *)self canAcceptBulkSendListeners];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    accessory = [(HMDDataStreamController *)selfCopy accessory];
    shortDescription = [accessory shortDescription];
    v12 = HMFBooleanToString();
    v13 = HMFBooleanToString();
    v16 = 138544130;
    v17 = v9;
    v18 = 2112;
    v19 = shortDescription;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is connected: %@. Configured: %@ Accepts Bulk Send: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  if (_isDataStreamConfigurationValid && canAcceptBulkSendListeners)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    accessory2 = [(HMDDataStreamController *)selfCopy accessory];
    [defaultCenter postNotificationName:@"HMDAccessoryDoesSupportBulkSendDataStreamNotification" object:accessory2];
  }
}

- (void)_readRequiredTransportCharacteristicsIfNeededWithCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Reading required transport characteristic for data stream controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transferManagementService = [(HMDDataStreamController *)selfCopy transferManagementService];
  v11 = transferManagementService;
  if (transferManagementService)
  {
    v12 = [transferManagementService findCharacteristicWithType:*MEMORY[0x277CCFB98]];
    v13 = [v11 findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];
    v14 = v13;
    if (v12 && v13)
    {
      value = [v12 value];
      if (!value || ([v14 value], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, value, v17))
      {
        v27 = [HMDCharacteristicRequest requestWithCharacteristic:v12];
        v35[0] = v27;
        v28 = [HMDCharacteristicRequest requestWithCharacteristic:v14];
        v35[1] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

        objc_initWeak(buf, selfCopy);
        accessory = [(HMDDataStreamController *)selfCopy accessory];
        workQueue2 = [(HMDDataStreamController *)selfCopy workQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __87__HMDDataStreamController__readRequiredTransportCharacteristicsIfNeededWithCompletion___block_invoke;
        v32[3] = &unk_2797351F8;
        objc_copyWeak(&v34, buf);
        v33 = completionCopy;
        [accessory readCharacteristicValues:v29 source:1090 queue:workQueue2 completionHandler:v32];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v25;
        v38 = 2112;
        v39 = v12;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot read required transport characteristic for data stream controller: version characteristic (%@) or supported configuration characteristic (%@) is nil", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot read required transport characteristic for data stream controller: transfer management service is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

void __87__HMDDataStreamController__readRequiredTransportCharacteristicsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v6);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) error];
          if (v12)
          {
            v13 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v14 + 16))(v14, v15);
  }
}

- (BOOL)_isDataStreamConfigurationValid
{
  v123 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStreamController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transferManagementService = [(HMDDataStreamController *)self transferManagementService];
  v5 = [transferManagementService findCharacteristicWithType:*MEMORY[0x277CCFB98]];
  value = [v5 value];

  if (value)
  {
    v7 = objc_alloc(MEMORY[0x277D0F940]);
    value2 = [v5 value];
    v9 = [v7 initWithString:value2];

    if (v9)
    {
      majorVersion = [v9 majorVersion];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      v14 = v13;
      if (majorVersion == 1)
      {
        v102 = transferManagementService;
        v105 = v5;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = HMFGetLogIdentifier();
          accessory = [(HMDDataStreamController *)selfCopy accessory];
          name = [accessory name];
          accessory2 = [(HMDDataStreamController *)selfCopy accessory];
          uuid = [accessory2 uuid];
          uUIDString = [uuid UUIDString];
          *buf = 138544130;
          v116 = v15;
          v117 = 2112;
          v118 = v9;
          v119 = 2112;
          v120 = name;
          v121 = 2112;
          v122 = uUIDString;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@HDS has version '%@' (%@/%@)", buf, 0x2Au);

          v5 = v105;
          transferManagementService = v102;
        }

        objc_autoreleasePoolPop(v11);
        v21 = [transferManagementService findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];
        if (v21)
        {
          [(HMDDataStreamController *)selfCopy _resetTransportInfo];
          v22 = MEMORY[0x277CFEB30];
          value3 = [v21 value];
          v113 = 0;
          v24 = [v22 parsedFromData:value3 error:&v113];
          v25 = v113;

          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v24 == 0;
          }

          v27 = !v26;
          if (v26)
          {
            v81 = objc_autoreleasePoolPush();
            v82 = selfCopy;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
            {
              v84 = HMFGetLogIdentifier();
              accessory3 = [(HMDDataStreamController *)v82 accessory];
              [accessory3 name];
              v86 = v100 = v21;
              [(HMDDataStreamController *)v82 accessory];
              v96 = v24;
              v87 = v98 = v27;
              [v87 uuid];
              v89 = v88 = v81;
              [v89 UUIDString];
              v90 = v94 = v25;
              *buf = 138543874;
              v116 = v84;
              v117 = 2112;
              v118 = v86;
              v119 = 2112;
              v120 = v90;
              _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Failed to parse HDS supported configuration (%@/%@)", buf, 0x20u);

              v81 = v88;
              v27 = v98;
              v24 = v96;

              v21 = v100;
              transferManagementService = v102;

              v25 = v94;
              v5 = v105;
            }

            objc_autoreleasePoolPop(v81);
          }

          else
          {
            v92 = v9;
            v93 = v25;
            v97 = v27;
            v99 = v21;
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v95 = v24;
            configurations = [v24 configurations];
            v29 = [configurations countByEnumeratingWithState:&v109 objects:v114 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v110;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v110 != v31)
                  {
                    objc_enumerationMutation(configurations);
                  }

                  v33 = *(*(&v109 + 1) + 8 * i);
                  transport = [v33 transport];

                  if (transport)
                  {
                    transport2 = [v33 transport];
                    value4 = [transport2 value];

                    if (value4 == 1)
                    {
                      if (![(HMDDataStreamController *)selfCopy supportsDataStreamOverHAP])
                      {
                        maximumControllerTransportMTU = [v33 maximumControllerTransportMTU];

                        if (maximumControllerTransportMTU)
                        {
                          maximumControllerTransportMTU2 = [v33 maximumControllerTransportMTU];
                          value5 = [maximumControllerTransportMTU2 value];
                          unsignedIntegerValue = [value5 unsignedIntegerValue];

                          [(HMDDataStreamController *)selfCopy setSupportsDataStreamOverHAP:1];
                          [(HMDDataStreamController *)selfCopy setMaxControllerTransportMTU:unsignedIntegerValue];
                        }

                        else
                        {
                          v41 = objc_autoreleasePoolPush();
                          v42 = selfCopy;
                          v43 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                          {
                            v44 = HMFGetLogIdentifier();
                            *buf = 138543362;
                            v116 = v44;
                            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service advertises HDS-over-HAP but provides no MTU; ignoring.", buf, 0xCu);
                          }

                          objc_autoreleasePoolPop(v41);
                        }
                      }
                    }

                    else if (!value4)
                    {
                      [(HMDDataStreamController *)selfCopy setSupportsDataStreamOverTCP:1];
                    }
                  }
                }

                v30 = [configurations countByEnumeratingWithState:&v109 objects:v114 count:16];
              }

              while (v30);
            }

            transferManagementService = v102;
            v5 = v105;
            v9 = v92;
            v25 = v93;
            v21 = v99;
            v27 = v97;
            v24 = v95;
          }
        }

        else
        {
          v72 = objc_autoreleasePoolPush();
          v73 = selfCopy;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = HMFGetLogIdentifier();
            accessory4 = [(HMDDataStreamController *)v73 accessory];
            name2 = [accessory4 name];
            accessory5 = [(HMDDataStreamController *)v73 accessory];
            uuid2 = [accessory5 uuid];
            uUIDString2 = [uuid2 UUIDString];
            *buf = 138543874;
            v116 = v75;
            v117 = 2112;
            v118 = name2;
            v119 = 2112;
            v120 = uUIDString2;
            _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@No HDS supported configuration (%@/%@)", buf, 0x20u);

            v21 = 0;
            v5 = v105;

            transferManagementService = v102;
          }

          objc_autoreleasePoolPop(v72);
          v27 = 0;
        }

        goto LABEL_50;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v66 = HMFGetLogIdentifier();
        accessory6 = [(HMDDataStreamController *)selfCopy accessory];
        [accessory6 name];
        v68 = v108 = v5;
        accessory7 = [(HMDDataStreamController *)selfCopy accessory];
        uuid3 = [accessory7 uuid];
        [uuid3 UUIDString];
        v71 = v104 = transferManagementService;
        *buf = 138544130;
        v116 = v66;
        v117 = 2112;
        v118 = v9;
        v119 = 2112;
        v120 = v68;
        v121 = 2112;
        v122 = v71;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@HDS version '%@' is not supported (%@/%@)", buf, 0x2Au);

        v5 = v108;
        transferManagementService = v104;
      }

      v65 = v11;
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v58 = HMFGetLogIdentifier();
        value6 = [v5 value];
        [(HMDDataStreamController *)selfCopy2 accessory];
        v60 = v107 = v5;
        [v60 name];
        v61 = v103 = transferManagementService;
        [(HMDDataStreamController *)selfCopy2 accessory];
        v62 = v101 = v55;
        uuid4 = [v62 uuid];
        uUIDString3 = [uuid4 UUIDString];
        *buf = 138544130;
        v116 = v58;
        v117 = 2112;
        v118 = value6;
        v119 = 2112;
        v120 = v61;
        v121 = 2112;
        v122 = uUIDString3;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@HDS version '%@' was not parsable (%@/%@)", buf, 0x2Au);

        v55 = v101;
        transferManagementService = v103;

        v5 = v107;
      }

      v65 = v55;
    }

    objc_autoreleasePoolPop(v65);
    v27 = 0;
LABEL_50:

    goto LABEL_51;
  }

  v45 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    accessory8 = [(HMDDataStreamController *)selfCopy3 accessory];
    name3 = [accessory8 name];
    [(HMDDataStreamController *)selfCopy3 accessory];
    v51 = v106 = v5;
    [v51 uuid];
    v53 = v52 = transferManagementService;
    uUIDString4 = [v53 UUIDString];
    *buf = 138543874;
    v116 = v48;
    v117 = 2112;
    v118 = name3;
    v119 = 2112;
    v120 = uUIDString4;
    _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@No HDS version found (%@/%@)", buf, 0x20u);

    transferManagementService = v52;
    v5 = v106;
  }

  objc_autoreleasePoolPop(v45);
  v27 = 0;
LABEL_51:

  return v27;
}

- (void)handleAccessoryConnected
{
  workQueue = [(HMDDataStreamController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDDataStreamController_handleAccessoryConnected__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __51__HMDDataStreamController_handleAccessoryConnected__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__HMDDataStreamController_handleAccessoryConnected__block_invoke_2;
  v3[3] = &unk_2797359D8;
  v3[4] = v1;
  return [v1 _readRequiredTransportCharacteristicsIfNeededWithCompletion:v3];
}

void __51__HMDDataStreamController_handleAccessoryConnected__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [*(a1 + 32) _handleAccessoryConnected];
  }
}

- (void)_resetTransportInfo
{
  [(HMDDataStreamController *)self setSupportsDataStreamOverTCP:0];
  [(HMDDataStreamController *)self setSupportsDataStreamOverHAP:0];

  [(HMDDataStreamController *)self setMaxControllerTransportMTU:0];
}

- (void)deRegisterFromNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)registerForNotifications
{
  accessory = [(HMDDataStreamController *)self accessory];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  if ([accessory isReachable])
  {
    [(HMDDataStreamController *)self handleAccessoryConnected];
  }
}

- (HMDDataStreamController)initWithAccessory:(id)accessory transferManagementService:(id)service workQueue:(id)queue dataStreamFactory:(id)factory
{
  accessoryCopy = accessory;
  serviceCopy = service;
  queueCopy = queue;
  factoryCopy = factory;
  v24.receiver = self;
  v24.super_class = HMDDataStreamController;
  v14 = [(HMDDataStreamController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeWeak(&v15->_transferManagementService, serviceCopy);
    objc_storeStrong(&v15->_workQueue, queue);
    array = [MEMORY[0x277CBEB18] array];
    pendingSocketRequests = v15->_pendingSocketRequests;
    v15->_pendingSocketRequests = array;

    v18 = _Block_copy(factoryCopy);
    dataStreamFactory = v15->_dataStreamFactory;
    v15->_dataStreamFactory = v18;

    uuid = [accessoryCopy uuid];
    uUIDString = [uuid UUIDString];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = uUIDString;
  }

  return v15;
}

HMDDataStream *__81__HMDDataStreamController_initWithAccessory_transferManagementService_workQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[HMDDataStream alloc] initWithTransport:v11 sessionEncryption:v10 workQueue:v9 logIdentifier:v8];

  return v12;
}

@end