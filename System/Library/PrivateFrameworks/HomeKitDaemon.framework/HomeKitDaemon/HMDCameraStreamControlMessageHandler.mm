@interface HMDCameraStreamControlMessageHandler
+ (BOOL)_isNegotiateMessage:(id)message;
+ (BOOL)_isReconfigureMessage:(id)message;
+ (BOOL)_isRemoteSetupMessage:(id)message;
+ (BOOL)_isSetAudioStreamSettingMessage:(id)message;
+ (BOOL)_isSetAudioVolumeMessage:(id)message;
+ (BOOL)_isStartMessage:(id)message;
+ (BOOL)_isStopMessage:(id)message;
+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)message;
+ (id)logCategory;
- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)info;
- (BOOL)hasStreamSession;
- (BOOL)hasStreamSessionShowingOnCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor;
- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor residentMessageHandler:(id)messageHandler dataSource:(id)self0;
- (HMDCameraStreamManagerSession)streamSession;
- (HMDHAPAccessory)accessory;
- (NSDictionary)stateDump;
- (NSString)description;
- (NSString)streamSessionID;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)identifier;
- (void)_handleNegotiateMessage:(id)message;
- (void)_handleReconfigureMessage:(id)message;
- (void)_handleRemoteSetupMessage:(id)message;
- (void)_handleSetAudioState:(id)state;
- (void)_handleSetAudioVolume:(id)volume;
- (void)_handleStartMessage:(id)message;
- (void)_handleStopMessage:(id)message;
- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)message;
- (void)_resetStreamSession:(id)session;
- (void)_respondToLocalNegotiateStreamMessage:(id)message;
- (void)_sendStreamStoppedMessageWithError:(id)error;
- (void)_sendStreamStoppedRemoteNotificationWithError:(id)error;
- (void)_stopStreamWithError:(id)error;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)handleCameraSettingsDidChangeNotification:(id)notification;
- (void)handleConnectionDeactivatedNotification:(id)notification;
- (void)handleMessage:(id)message;
- (void)handleProcessStateChange:(id)change;
- (void)setAudioVolume:(id)volume callback:(id)callback;
- (void)setStreamSession:(id)session;
- (void)streamControlManager:(id)manager didNegotiateStreamWithSelectedParameters:(id)parameters;
- (void)streamControlManager:(id)manager didStopStreamWithSessionID:(id)d error:(id)error;
- (void)streamControlManagerDidReceiveFirstFrame:(id)frame;
- (void)streamControlManagerDidReconfigureStream:(id)stream;
- (void)streamControlManagerDidSetUpRemoteConnection:(id)connection;
- (void)streamControlManagerDidStartStream:(id)stream;
- (void)takeOwnershipOfStreamUsingMessage:(id)message;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraStreamControlMessageHandler

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleConnectionDeactivatedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"connection"];

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

  if (v7)
  {
    workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMDCameraStreamControlMessageHandler_handleConnectionDeactivatedNotification___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __80__HMDCameraStreamControlMessageHandler_handleConnectionDeactivatedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) streamSession];
  v3 = [v2 streamClientConnection];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client has deactivated", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v9 _stopStreamWithError:v10];
  }
}

- (void)handleProcessStateChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"processInfo"];

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

  if (v7)
  {
    workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HMDCameraStreamControlMessageHandler_handleProcessStateChange___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __65__HMDCameraStreamControlMessageHandler_handleProcessStateChange___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) streamSession];
  v3 = [v2 streamClientConnection];
  v4 = [v3 processInfo];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5 && [*(a1 + 32) _shouldStopStreamSessionForProcessInfo:*(a1 + 40)])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) state];
      if (v10 > 4)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_278680668[v10];
      }

      v12 = v11;
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because client application state is %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1048];
    [v13 _stopStreamWithError:v14];
  }
}

- (void)handleCameraSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDCameraStreamControlMessageHandler_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __82__HMDCameraStreamControlMessageHandler_handleCameraSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 cameraProfiles];
  v4 = [v3 anyObject];
  v5 = [v4 currentSettings];

  if (v5)
  {
    [v5 currentAccessMode];
    if ((HMIsStreamingAllowedForCameraAccessMode() & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      [v6 _stopStreamWithError:v7];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings are not initialized, skipping cancelling pending stream requests", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetStreamSession:(id)session
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = sessionCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting the current stream session with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession streamControlManager];
  streamMetrics = [streamControlManager streamMetrics];
  [streamMetrics setError:sessionCopy];

  [(HMDCameraStreamControlMessageHandler *)selfCopy setStreamSession:0];
  dynamicActivityAttributionPublisher = [(HMDCameraStreamControlMessageHandler *)selfCopy dynamicActivityAttributionPublisher];
  [dynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:0];
}

- (void)_sendStreamStoppedRemoteNotificationWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID = [streamSession destinationID];
    v29 = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = destinationID;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending stream stopped notification to %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession2 sessionID];
    v16SessionID = [sessionID sessionID];
    [dictionary setObject:v16SessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v18 forKeyedSubscript:@"kCameraSessionError"];
    }

    v19 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamStoppedRemoteNotificationKey" messagePayload:dictionary];
    [v19 setQualityOfService:33];
    v20 = objc_msgSend_copy(v19);
    profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)selfCopy profileUniqueIdentifier];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID2 = [streamSession3 destinationID];
    workQueue = [(HMDCameraStreamControlMessageHandler *)selfCopy workQueue];
    [homeManager sendSecureMessage:v20 target:profileUniqueIdentifier userID:0 destination:destinationID2 responseQueue:workQueue responseHandler:&__block_literal_global_76];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@No home manager", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

- (void)_sendStreamStoppedMessageWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamClientConnection = [streamSession streamClientConnection];

  if (streamClientConnection)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSessionID = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
    [dictionary setObject:streamSessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v9 forKeyedSubscript:@"kCameraSessionError"];
      streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
      streamControlManager = [streamSession2 streamControlManager];
      streamMetrics = [streamControlManager streamMetrics];
      [streamMetrics setError:errorCopy];
    }

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)self profileUniqueIdentifier];
    v15 = [v13 initWithTarget:profileUniqueIdentifier];

    v16 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCF610] destination:v15 payload:dictionary];
    [v16 setTransport:streamClientConnection];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      shortDescription = [v16 shortDescription];
      v27 = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = shortDescription;
      v31 = 2112;
      v32 = streamClientConnection;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Notifying client that stream has stopped using message %@: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    messageDispatcher = [(HMDCameraStreamControlMessageHandler *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v16];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot send stream stopped message because XPC client connection doesn't exist", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }
}

- (void)streamControlManager:(id)manager didStopStreamWithSessionID:(id)d error:(id)error
{
  v45 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dCopy = d;
  errorCopy = error;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v13 = [sessionID isEqual:dCopy];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v17)
    {
      v18 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v18;
      v41 = 2114;
      v42 = errorCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Stream did stop with error: %{public}@", &v39, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    currentMessage = [streamSession2 currentMessage];

    if (currentMessage)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription = [currentMessage shortDescription];
        v39 = 138543618;
        v40 = v24;
        v41 = 2112;
        v42 = shortDescription;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Responding to the current message: %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (errorCopy)
      {
        [currentMessage respondWithError:errorCopy];
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [currentMessage respondWithError:v29];
      }

      streamSession3 = [(HMDCameraStreamControlMessageHandler *)v22 streamSession];
      [streamSession3 setCurrentMessage:0];
    }

    streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    destinationID = [streamSession4 destinationID];

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (destinationID)
    {
      if (v36)
      {
        v37 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being relayed elsewhere so sending remote stream stopped message", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedRemoteNotificationWithError:errorCopy];
    }

    else
    {
      if (v36)
      {
        v38 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v38;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@This is a stream being shown locally so sending local stream stopped message", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      [(HMDCameraStreamControlMessageHandler *)v34 _sendStreamStoppedMessageWithError:errorCopy];
    }

    [(HMDCameraStreamControlMessageHandler *)v34 _resetStreamSession:errorCopy];
  }

  else
  {
    if (v17)
    {
      v26 = HMFGetLogIdentifier();
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      sessionID2 = [streamSession5 sessionID];
      v39 = 138543874;
      v40 = v26;
      v41 = 2112;
      v42 = dCopy;
      v43 = 2112;
      v44 = sessionID2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring did stop stream callback for session ID %@ because our session ID is %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)streamControlManagerDidReconfigureStream:(id)stream
{
  v41 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == streamCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession2 currentMessage];
    name = [currentMessage name];
    v10 = [name isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage2 = [streamSession3 currentMessage];
        name2 = [currentMessage2 name];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage3 = [streamSession4 currentMessage];
        identifier = [currentMessage3 identifier];
        uUIDString = [identifier UUIDString];
        *buf = 138543874;
        v36 = v15;
        v37 = 2112;
        v38 = name2;
        v39 = 2112;
        v40 = uUIDString;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with identifier %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      currentMessage4 = [streamSession5 currentMessage];
      responseHandler = [currentMessage4 responseHandler];

      if (responseHandler)
      {
        streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        currentMessage5 = [streamSession6 currentMessage];
        responseHandler2 = [currentMessage5 responseHandler];
        responseHandler2[2](responseHandler2, 0, 0);
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v31;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No response handler set for message", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
      }

      streamSession7 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      [streamSession7 setCurrentMessage:0];
    }

    else
    {
      if (v14)
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v27;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No pending reconfigure stream request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

- (void)streamControlManagerDidReceiveFirstFrame:(id)frame
{
  v25 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  [sessionID markMilestoneFor:@"ReceivedFirstFrame"];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  currentMessage = [streamSession2 currentMessage];

  name = [currentMessage name];
  v10 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

  if (v10)
  {
    streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
    streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
    [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:0];

    [(HMDCameraStreamControlMessageHandler *)self _respondToLocalNegotiateStreamMessage:currentMessage];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    [streamSession3 setCurrentMessage:0];

    streamSession4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    streamSetupTimer = [streamSession4 streamSetupTimer];
    [streamSetupTimer suspend];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [currentMessage shortDescription];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = shortDescription;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Received did receive first frame with an unexpected current message: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)streamControlManagerDidStartStream:(id)stream
{
  v40 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == streamCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentStartResponse"];

    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession3 currentMessage];

    if (currentMessage)
    {
      name = [currentMessage name];
      v18 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v18)
      {
LABEL_17:

        goto LABEL_18;
      }

      name2 = [currentMessage name];
      v20 = [name2 isEqualToString:@"kStartRemoteStreamRequestKey"];

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          shortDescription = [currentMessage shortDescription];
          v34 = 138543618;
          v35 = v25;
          v36 = 2112;
          v37 = shortDescription;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did start stream callback by responding to remote start stream message: %@", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        [currentMessage respondWithSuccess];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        [streamSession4 setCurrentMessage:0];

        streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        streamSetupTimer = [streamSession5 streamSetupTimer];
        [streamSetupTimer suspend];

        streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSnapshotHandler];
        streamManagementService = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamManagementService];
        [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:0];

        goto LABEL_17;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        shortDescription2 = [currentMessage shortDescription];
        v34 = 138543618;
        v35 = v32;
        v36 = 2112;
        v37 = shortDescription2;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did start stream callback: %@", &v34, 0x16u);

        goto LABEL_15;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v32;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Received did start stream without a current message", &v34, 0xCu);
LABEL_15:
      }
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_17;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy3 streamSession];
    streamControlManager2 = [streamSession6 streamControlManager];
    v34 = 138543874;
    v35 = v10;
    v36 = 2112;
    v37 = streamControlManager2;
    v38 = 2112;
    v39 = streamCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did start stream because our stream control manager %@ does not match the provided one: %@", &v34, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_18:
}

- (void)streamControlManagerDidSetUpRemoteConnection:(id)connection
{
  v46 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == connectionCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentConnectionSetup"];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      destinationID = [streamSession3 destinationID];
      *buf = 138543618;
      v41 = v18;
      v42 = 2112;
      v43 = destinationID;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending stream remote setup notification to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
    home = [accessory home];
    homeManager = [home homeManager];

    if (homeManager)
    {
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      sessionID2 = [streamSession4 sessionID];
      v25SessionID = [sessionID2 sessionID];
      v39 = v25SessionID;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

      v28 = [MEMORY[0x277D0F848] internalMessageWithName:@"kStreamRemoteConnectionSetupNotificationKey" messagePayload:v27];
      [v28 setQualityOfService:33];
      v29 = objc_msgSend_copy(v28);
      profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)selfCopy profileUniqueIdentifier];
      streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      destinationID2 = [streamSession5 destinationID];
      workQueue = [(HMDCameraStreamControlMessageHandler *)selfCopy workQueue];
      [homeManager sendSecureMessage:v29 target:profileUniqueIdentifier userID:0 destination:destinationID2 responseQueue:workQueue responseHandler:0];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No home manager", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
      streamControlManager2 = [streamSession6 streamControlManager];
      *buf = 138543874;
      v41 = v10;
      v42 = 2112;
      v43 = streamControlManager2;
      v44 = 2112;
      v45 = connectionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did set up remote connection because our stream control manager %@ does not match the provided one: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)streamControlManager:(id)manager didNegotiateStreamWithSelectedParameters:(id)parameters
{
  v43 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  parametersCopy = parameters;
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];

  if (streamControlManager == managerCopy)
  {
    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    sessionID = [streamSession2 sessionID];
    [sessionID markMilestoneFor:@"SentNegotiationResponse"];

    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession3 currentMessage];

    if (currentMessage)
    {
      name = [currentMessage name];
      v21 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v37 = 138543362;
          v38 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by starting stream", &v37, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [(HMDCameraStreamControlMessageHandler *)selfCopy _handleStartMessage:currentMessage];
        goto LABEL_20;
      }

      name2 = [currentMessage name];
      v31 = [name2 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      v28 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          shortDescription = [currentMessage shortDescription];
          v37 = 138543618;
          v38 = v33;
          v39 = 2112;
          v40 = shortDescription;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Handling did negotiate stream callback by responding to remote negotiate stream message: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [currentMessage respondWithPayload:parametersCopy];
        streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy3 streamSession];
        [streamSession4 setCurrentMessage:0];

        goto LABEL_20;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        shortDescription2 = [currentMessage shortDescription];
        v37 = 138543618;
        v38 = v29;
        v39 = 2112;
        v40 = shortDescription2;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpected current message while handling did negotiate stream callback: %@", &v37, 0x16u);

        goto LABEL_18;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v37 = 138543362;
        v38 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received did negotiate stream without a current message", &v37, 0xCu);
LABEL_18:
      }
    }

    objc_autoreleasePoolPop(v26);
LABEL_20:

    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy4 streamSession];
    streamControlManager2 = [streamSession5 streamControlManager];
    v37 = 138543874;
    v38 = v13;
    v39 = 2112;
    v40 = streamControlManager2;
    v41 = 2112;
    v42 = managerCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring did negotiate stream because our stream control manager %@ does not match the provided one: %@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_21:
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamSetupTimer = [streamSession streamSetupTimer];

  if (streamSetupTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Stream setup timer fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
    [(HMDCameraStreamControlMessageHandler *)selfCopy _stopStreamWithError:v12];
  }
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  name = [accessory name];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  instanceID = [streamManagementService instanceID];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v9SessionID = [sessionID sessionID];
  v11 = [v3 stringWithFormat:@"%@/%@/%@", name, instanceID, v9SessionID];

  return v11;
}

- (void)_respondToLocalNegotiateStreamMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  streamSessionID = [(HMDCameraStreamControlMessageHandler *)self streamSessionID];
  [dictionary setObject:streamSessionID forKeyedSubscript:@"kCameraSessionID"];

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  slotIdentifier = [streamControlManager slotIdentifier];
  [dictionary setObject:slotIdentifier forKeyedSubscript:*MEMORY[0x277CD1060]];

  v11 = MEMORY[0x277CCABB0];
  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager2 = [streamSession2 streamControlManager];
  v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(streamControlManager2, "audioStreamSetting")}];
  [dictionary setObject:v14 forKeyedSubscript:@"kAudioStreamSetting"];

  streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager3 = [streamSession3 streamControlManager];
  aspectRatio = [streamControlManager3 aspectRatio];
  [dictionary setObject:aspectRatio forKeyedSubscript:*MEMORY[0x277CD1198]];

  streamSession4 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager4 = [streamSession4 streamControlManager];
  audioDownlinkToken = [streamControlManager4 audioDownlinkToken];
  [dictionary setObject:audioDownlinkToken forKeyedSubscript:*MEMORY[0x277CCF5D8]];

  streamSession5 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager5 = [streamSession5 streamControlManager];
  audioUplinkToken = [streamControlManager5 audioUplinkToken];
  [dictionary setObject:audioUplinkToken forKeyedSubscript:*MEMORY[0x277CCF5E0]];

  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v30 = 138543874;
    v31 = v27;
    v32 = 2112;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dictionary;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Responding to message %@ with payload %@", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
  v29 = objc_msgSend_copy(dictionary);
  [messageCopy respondWithPayload:v29];
}

- (void)_attributeMicrophoneUsageToApplicationBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (identifierCopy)
  {
    streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    destinationID = [streamSession destinationID];

    if (!destinationID)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = identifierCopy;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating activity attribution with applicationBundleIdentifier: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      dynamicActivityAttributionPublisher = [(HMDCameraStreamControlMessageHandler *)selfCopy dynamicActivityAttributionPublisher];
      [dynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:identifierCopy];
    }
  }
}

- (BOOL)_shouldStopStreamSessionForProcessInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  LODWORD(workQueue) = [dataSource supportsApplicationBackgroundStateMonitoring];

  state = [infoCopy state];
  if (workQueue)
  {
    if (state == -1)
    {
      v9 = [infoCopy isEntitledForSPIAccess] ^ 1;
    }

    else if (state)
    {
      if (state == 2)
      {
        applicationInfo = [infoCopy applicationInfo];
        LOBYTE(v9) = applicationInfo != 0;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = (state - 4) < 0xFFFFFFFFFFFFFFFBLL;
  }

  return v9;
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  stateDump = [streamControlManager stateDump];
  [dictionary setObject:stateDump forKeyedSubscript:@"Stream"];

  return dictionary;
}

- (BOOL)hasStreamSessionShowingOnCurrentDevice
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraStreamControlMessageHandler *)self hasStreamSession])
  {
    return 0;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  destinationID = [streamSession destinationID];
  v6 = destinationID == 0;

  return v6;
}

- (BOOL)hasStreamSession
{
  selfCopy = self;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  LOBYTE(selfCopy) = streamSession != 0;

  return selfCopy;
}

- (NSString)streamSessionID
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  sessionID = [streamSession sessionID];
  v5SessionID = [sessionID sessionID];

  return v5SessionID;
}

- (void)_handleSetAudioState:(id)state
{
  v44 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [stateCopy numberForKey:@"kAudioStreamSetting"];
  v7 = v6;
  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    v18 = v14;
    goto LABEL_16;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v9 = unsignedIntegerValue;
  if ((unsignedIntegerValue - 1) >= 2)
  {
    if (unsignedIntegerValue == 3)
    {
      if ([stateCopy isAuthorizedForMicrophoneAccess])
      {
        dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
        supportsBidirectionalAudioForCameraStreaming = [dataSource supportsBidirectionalAudioForCameraStreaming];

        if (supportsBidirectionalAudioForCameraStreaming)
        {
          goto LABEL_3;
        }

        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Bi-directional audio is not supported on this device for camera streaming.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 48;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          name = [stateCopy name];
          *buf = 138543874;
          v39 = v34;
          v40 = 2112;
          v41 = name;
          v42 = 2048;
          sourcePid = [stateCopy sourcePid];
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Denying incoming message %@ for client pid %ld since the process is not authorized for microphone access", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v31);
        v25 = MEMORY[0x277CCA9B8];
        v26 = 89;
      }

LABEL_17:
      v12 = [v25 hmErrorWithCode:v26];
      [stateCopy respondWithError:v12];
      goto LABEL_18;
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v30;
      v40 = 2048;
      v41 = v9;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid audio stream setting: %lu", buf, 0x16u);
    }

    v18 = v27;
LABEL_16:
    objc_autoreleasePoolPop(v18);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 3;
    goto LABEL_17;
  }

LABEL_3:
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  [streamControlManager updateAudioSetting:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9, @"kAudioStreamSetting"}];
  v37 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  [stateCopy respondWithPayload:v13];

LABEL_18:
}

- (void)setAudioVolume:(id)volume callback:(id)callback
{
  v28 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  callbackCopy = callback;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCameraStreamControlMessageHandler *)self dataSource];
  supportsChangingVolume = [dataSource supportsChangingVolume];

  if ((supportsChangingVolume & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Changing audio volume setting is not allowed on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 48;
    goto LABEL_10;
  }

  if (!volumeCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing parameter to set the audio stream state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = MEMORY[0x277CCA9B8];
    v19 = 3;
LABEL_10:
    v13 = [v18 hmErrorWithCode:v19];
    callbackCopy[2](callbackCopy, v13);
    goto LABEL_11;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamControlManager = [streamSession streamControlManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__HMDCameraStreamControlMessageHandler_setAudioVolume_callback___block_invoke;
  v24[3] = &unk_278683B50;
  v25 = callbackCopy;
  [streamControlManager updateAudioVolume:volumeCopy callback:v24];

  v13 = v25;
LABEL_11:
}

void __64__HMDCameraStreamControlMessageHandler_setAudioVolume_callback___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    (*(v2 + 16))(v2, v5);
  }
}

- (void)_handleSetAudioVolume:(id)volume
{
  v15 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([volumeCopy isEntitledForSPIAccess])
  {
    v6 = [volumeCopy numberForKey:*MEMORY[0x277CCF5E8]];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__HMDCameraStreamControlMessageHandler__handleSetAudioVolume___block_invoke;
    v11[3] = &unk_27868A250;
    v12 = volumeCopy;
    [(HMDCameraStreamControlMessageHandler *)self setAudioVolume:v6 callback:v11];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Ignoring set audio volume message as it is not entitled for SPI access", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [volumeCopy respondWithError:v6];
  }
}

- (void)_handleStopMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling stop message with identifier: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v12 = [messagePayload errorFromDataForKey:@"kCameraSessionError"];

  if (v12)
  {
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    streamControlManager = [streamSession streamControlManager];
    streamMetrics = [streamControlManager streamMetrics];
    [streamMetrics setError:v12];
  }

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager2 = [streamSession2 streamControlManager];
  [streamControlManager2 stopStreamWithError:v12];

  [messageCopy respondWithSuccess];
}

- (void)_handleUpdateMaximumVideoResolutionQualityMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update video resolution quality message with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  messagePayload = [messageCopy messagePayload];
  v12 = [messagePayload hmf_numberForKey:*MEMORY[0x277CCF620]];

  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing camera video resolution quality", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 27;
    goto LABEL_12;
  }

  integerValue = [v12 integerValue];
  if ((integerValue - 1) >= 5)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v25;
      v31 = 2048;
      v32 = integerValue;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid resolution quality enum value received: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v20 = MEMORY[0x277CCA9B8];
    v21 = 3;
LABEL_12:
    v26 = [v20 hmErrorWithCode:v21];
    [messageCopy respondWithError:v26];

    goto LABEL_13;
  }

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession streamControlManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__HMDCameraStreamControlMessageHandler__handleUpdateMaximumVideoResolutionQualityMessage___block_invoke;
  v27[3] = &unk_27868A1D8;
  v27[4] = selfCopy;
  v28 = messageCopy;
  [streamControlManager updateMaximumVideoResolutionQuality:integerValue completionHandler:v27];

LABEL_13:
}

void __90__HMDCameraStreamControlMessageHandler__handleUpdateMaximumVideoResolutionQualityMessage___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update video resolution quality", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfuly updated video resolution quality", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }
}

- (void)_handleReconfigureMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling reconfigure message with identifier: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  [streamSession setCurrentMessage:messageCopy];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession2 streamControlManager];
  messagePayload = [messageCopy messagePayload];
  [streamControlManager reconfigureStream:messagePayload];
}

- (void)_handleStartMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling start message with identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  proxyConnection = [messageCopy proxyConnection];
  applicationBundleIdentifier = [proxyConnection applicationBundleIdentifier];
  [(HMDCameraStreamControlMessageHandler *)selfCopy _attributeMicrophoneUsageToApplicationBundleIdentifier:applicationBundleIdentifier];

  streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  [streamSession setCurrentMessage:messageCopy];

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  sessionID = [streamSession2 sessionID];
  [sessionID markMilestoneFor:@"ReceivedStartRequest"];

  streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
  streamControlManager = [streamSession3 streamControlManager];
  messagePayload = [messageCopy messagePayload];
  [streamControlManager startStreamWithRemoteSettings:messagePayload];
}

- (void)_handleRemoteSetupMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  remoteSourceDevice = [messageCopy remoteSourceDevice];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (remoteSourceDevice)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      identifier = [messageCopy identifier];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = identifier;
      v23 = 2112;
      v24 = remoteSourceDevice;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remote setup message %@ from device: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    streamSession = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession sessionID];
    [sessionID markMilestoneFor:@"ReceivedConnectionSetup"];

    streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    streamControlManager = [streamSession2 streamControlManager];
    [streamControlManager setUpRemoteConnectionWithDevice:remoteSourceDevice];

    [messageCopy respondWithPayload:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = messageCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote source device for remote setup message: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v18];
  }
}

- (void)_handleNegotiateMessage:(id)message
{
  v143 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:@"kCameraSessionID"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138543874;
      v138 = v11;
      v139 = 2112;
      v140 = v6;
      v141 = 2112;
      v142 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiation message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    accessory = [(HMDCameraStreamControlMessageHandler *)selfCopy accessory];
    v14 = accessory;
    if (!accessory)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v29;
        v139 = 2112;
        v140 = v6;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      currentSettings = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      [messageCopy respondWithError:currentSettings];
      goto LABEL_62;
    }

    cameraProfiles = [accessory cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    currentSettings = [anyObject currentSettings];

    if (currentSettings)
    {
      [currentSettings currentAccessMode];
      if ((HMIsStreamingAllowedForCameraAccessMode() & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          [currentSettings currentAccessMode];
          v22 = HMCameraAccessModeAsString();
          *buf = 138543874;
          v138 = v21;
          v139 = 2112;
          v140 = v6;
          v141 = 2112;
          v142 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[%@] Streaming is disallowed for current access mode: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        [messageCopy respondWithError:v23];
        goto LABEL_61;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v33;
        v139 = 2112;
        v140 = v6;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[%@] Camera profile settings are not initialized; skipping controller side checks to disallow stream request", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    v34 = [messageCopy dataForKey:@"kCameraSessionPreference"];
    v35 = 0;
    v133 = v34;
    if ([messageCopy isEntitledForSPIAccess] && v34)
    {
      v136 = 0;
      v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:&v136];
      v36 = v136;
      if (!v35)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543874;
          v138 = v40;
          v139 = 2112;
          v140 = v6;
          v141 = 2112;
          v142 = v36;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to unarchive camera stream preferences from camera session preference message: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v35 = 0;
      }
    }

    v134 = v35;
    proxyConnection = [messageCopy proxyConnection];
    isRemote = [messageCopy isRemote];
    v43 = objc_autoreleasePoolPush();
    v44 = selfCopy;
    v45 = HMFGetOSLogHandle();
    v46 = v45;
    if ((isRemote & 1) == 0 && !proxyConnection)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543874;
        v138 = v47;
        v139 = 2112;
        v140 = v6;
        v141 = 2112;
        v142 = messageCopy;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot find XPC client connection for negotiate stream message received over XPC: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
      [messageCopy respondWithError:v48];
      v49 = v133;
      goto LABEL_60;
    }

    v132 = proxyConnection;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      processInfo = [proxyConnection processInfo];
      *buf = 138543874;
      v138 = v50;
      v139 = 2112;
      v140 = v6;
      v141 = 2112;
      v142 = processInfo;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@[%@] Using stream client process info: %@", buf, 0x20u);

      proxyConnection = v132;
    }

    objc_autoreleasePoolPop(v43);
    v52 = [HMDCameraStreamSessionID alloc];
    streamManagementService = [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v48 = [(HMDCameraStreamSessionID *)v52 initWithAccessory:v14 service:streamManagementService sessionID:v6 message:messageCopy];

    negotiationMilestone = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];

    if (negotiationMilestone)
    {
      negotiationMilestone2 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v56 = [negotiationMilestone2 key];
      v57 = MEMORY[0x277CCABB0];
      negotiationMilestone3 = [(HMDCameraStreamControlMessageHandler *)v44 negotiationMilestone];
      v59 = [v57 numberWithInteger:{objc_msgSend(negotiationMilestone3, "timestamp")}];
      [(HMDCameraSessionID *)v48 markMilestoneFor:v56 withTimestamp:v59];

      proxyConnection = v132;
    }

    remoteSourceDevice = [messageCopy remoteSourceDevice];
    isReachable = [v14 isReachable];
    residentMessageHandler = [(HMDCameraStreamControlMessageHandler *)v44 residentMessageHandler];
    remoteAccessDevice = [residentMessageHandler remoteAccessDevice];

    v129 = currentSettings;
    if (isReachable)
    {
      v62 = objc_autoreleasePoolPush();
      v63 = v44;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v65;
        v139 = 2112;
        v140 = v6;
        v66 = "%{public}@[%@] Creating local stream control manager because accessory is reachable";
LABEL_47:
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, v66, buf, 0x16u);
      }
    }

    else
    {
      dataSource = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
      supportsReceivingRemoteCameraStream = [dataSource supportsReceivingRemoteCameraStream];

      if (supportsReceivingRemoteCameraStream)
      {
        v62 = objc_autoreleasePoolPush();
        v69 = v44;
        v64 = HMFGetOSLogHandle();
        v70 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
        if (remoteAccessDevice)
        {
          v126 = v48;
          if (v70)
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v138 = v71;
            v139 = 2112;
            v140 = v6;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating remote stream control manager because accessory is not reachable", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v62);
          dataSource2 = [(HMDCameraStreamControlMessageHandler *)v69 dataSource];
          [(HMDCameraStreamControlMessageHandler *)v69 workQueue];
          v123 = v72 = v69;
          streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)v69 streamSnapshotHandler];
          networkMonitor = [(HMDCameraStreamControlMessageHandler *)v69 networkMonitor];
          reachabilityPath = [networkMonitor reachabilityPath];
          streamManagementService2 = [(HMDCameraStreamControlMessageHandler *)v69 streamManagementService];
          messagePayload = [messageCopy messagePayload];
          profileUniqueIdentifier = [(HMDCameraStreamControlMessageHandler *)v72 profileUniqueIdentifier];
          residentMessageHandler2 = [(HMDCameraStreamControlMessageHandler *)v72 residentMessageHandler];
          v120 = messagePayload;
          networkMonitor2 = streamManagementService2;
          v114 = streamManagementService2;
          v116 = messagePayload;
          v48 = v126;
          v78 = remoteSourceDevice;
          v79 = [dataSource2 createRemoteStreamControlManagerWithSessionID:v126 workQueue:v123 streamSnapshotHandler:streamSnapshotHandler reachabilityPath:reachabilityPath device:remoteSourceDevice delegate:v72 accessory:v14 streamManagementService:v114 remoteCapabilities:v116 profileUniqueIdentifier:profileUniqueIdentifier residentMessageHandler:residentMessageHandler2 remoteAccessDevice:remoteAccessDevice streamPreference:v134];
          v80 = 60.0;
          goto LABEL_50;
        }

        if (v70)
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v138 = v65;
          v139 = 2112;
          v140 = v6;
          v66 = "%{public}@[%@] Creating local stream control manager even though accessory is not reachable because there is no remote access device";
          goto LABEL_47;
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        v81 = v44;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v138 = v65;
          v139 = 2112;
          v140 = v6;
          v66 = "%{public}@[%@] Creating local stream control manager even though accessory is not reachable because we cannot receive remote streams";
          goto LABEL_47;
        }
      }
    }

    objc_autoreleasePoolPop(v62);
    dataSource3 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    localNetworkConfig = [dataSource3 localNetworkConfig];

    if (!localNetworkConfig)
    {
      v109 = objc_autoreleasePoolPush();
      v110 = v44;
      v111 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v112;
        v139 = 2112;
        v140 = v6;
        _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to get the local network address config", buf, 0x16u);

        proxyConnection = v132;
      }

      objc_autoreleasePoolPop(v109);
      v93 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v93];
      v49 = v133;
      goto LABEL_59;
    }

    dataSource4 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    workQueue2 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
    [(HMDCameraStreamControlMessageHandler *)v44 streamSnapshotHandler];
    v85 = v127 = v6;
    networkMonitor2 = [(HMDCameraStreamControlMessageHandler *)v44 networkMonitor];
    reachabilityPath2 = [networkMonitor2 reachabilityPath];
    [(HMDCameraStreamControlMessageHandler *)v44 streamManagementService];
    v87 = v86 = v14;
    profileUniqueIdentifier = [messageCopy messagePayload];
    residentMessageHandler2 = [(HMDCameraStreamControlMessageHandler *)v44 supportedConfigCache];
    v123 = dataSource4;
    dataSource2 = localNetworkConfig;
    v120 = v87;
    v113 = v86;
    v115 = v87;
    v14 = v86;
    v88 = dataSource4;
    streamSnapshotHandler = workQueue2;
    networkMonitor = v85;
    v89 = v85;
    v6 = v127;
    v78 = remoteSourceDevice;
    v79 = [v88 createLocalStreamControlManagerWithSessionID:v48 workQueue:workQueue2 streamSnapshotHandler:v89 reachabilityPath:reachabilityPath2 device:remoteSourceDevice delegate:v44 accessory:v113 streamManagementService:v115 localNetworkConfig:localNetworkConfig remoteCapabilities:profileUniqueIdentifier supportedConfigCache:residentMessageHandler2 streamPreference:v134];
    v80 = 30.0;
LABEL_50:

    dataSource5 = [(HMDCameraStreamControlMessageHandler *)v44 dataSource];
    remoteDestinationString = [v78 remoteDestinationString];
    v128 = v48;
    v92 = [dataSource5 createStreamManagerSessionWithSessionID:v48 destinationID:remoteDestinationString streamClientConnection:v132 streamControlManager:v79 setupWaitPeriod:v80];

    v135 = 0;
    LOBYTE(dataSource5) = [v92 canStartWithError:&v135];
    v125 = v135;
    v93 = v79;
    if (dataSource5)
    {
      [(HMDCameraStreamControlMessageHandler *)v44 setStreamSession:v92];
      streamSession = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      [streamSession setCurrentMessage:messageCopy];

      streamSession2 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamControlManager = [streamSession2 streamControlManager];
      [streamControlManager negotiateStream];

      streamSession3 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer = [streamSession3 streamSetupTimer];
      [streamSetupTimer setDelegate:v44];

      workQueue3 = [(HMDCameraStreamControlMessageHandler *)v44 workQueue];
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer2 = [streamSession4 streamSetupTimer];
      [streamSetupTimer2 setDelegateQueue:workQueue3];

      streamSession5 = [(HMDCameraStreamControlMessageHandler *)v44 streamSession];
      streamSetupTimer3 = [streamSession5 streamSetupTimer];
      [streamSetupTimer3 resume];

      v104 = v125;
    }

    else
    {
      v105 = objc_autoreleasePoolPush();
      v106 = v44;
      v107 = HMFGetOSLogHandle();
      v104 = v125;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        *buf = 138543874;
        v138 = v108;
        v139 = 2112;
        v140 = v6;
        v141 = 2112;
        v142 = v125;
        _os_log_impl(&dword_229538000, v107, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot start stream session: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v105);
      [messageCopy respondWithError:v125];
    }

    proxyConnection = v132;
    v49 = v133;
    v48 = v128;
LABEL_59:

    currentSettings = v129;
LABEL_60:
    v23 = v134;

LABEL_61:
LABEL_62:

    goto LABEL_63;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    messagePayload2 = [messageCopy messagePayload];
    *buf = 138543618;
    v138 = v24;
    v139 = 2112;
    v140 = messagePayload2;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find session ID in negotiate message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [messageCopy respondWithError:v14];
LABEL_63:
}

- (void)handleMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  proxyConnection = [messageCopy proxyConnection];
  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  streamClientConnection = [streamSession streamClientConnection];

  if (proxyConnection && streamClientConnection && proxyConnection != streamClientConnection)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138544130;
      v34 = v12;
      v35 = 2112;
      v36 = shortDescription;
      v37 = 2112;
      v38 = proxyConnection;
      v39 = 2112;
      v40 = streamClientConnection;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting stream control request message %@ from client %@ because stream is owned by other client %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v14 = MEMORY[0x277CCA9B8];
    v15 = 17;
  }

  else
  {
    if ([objc_opt_class() _isStopMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleStopMessage:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioStreamSettingMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioState:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isSetAudioVolumeMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleSetAudioVolume:messageCopy];
      goto LABEL_16;
    }

    if ([objc_opt_class() _isRemoteSetupMessage:messageCopy])
    {
      [(HMDCameraStreamControlMessageHandler *)self _handleRemoteSetupMessage:messageCopy];
      goto LABEL_16;
    }

    streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    currentMessage = [streamSession2 currentMessage];

    if (currentMessage)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy2 streamSession];
        currentMessage2 = [streamSession3 currentMessage];
        shortDescription2 = [currentMessage2 shortDescription];
        [messageCopy shortDescription];
        v26 = v32 = v19;
        *buf = 138543874;
        v34 = v22;
        v35 = 2112;
        v36 = shortDescription2;
        v37 = 2112;
        v38 = v26;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Current message %@ is already being processed, rejecting message %@", buf, 0x20u);

        v19 = v32;
      }

      objc_autoreleasePoolPop(v19);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 3;
    }

    else
    {
      if ([objc_opt_class() _isNegotiateMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleNegotiateMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isStartMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleStartMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isReconfigureMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleReconfigureMessage:messageCopy];
        goto LABEL_16;
      }

      if ([objc_opt_class() _isUpdateMaximumVideoResolutionQualityMessage:messageCopy])
      {
        [(HMDCameraStreamControlMessageHandler *)self _handleUpdateMaximumVideoResolutionQualityMessage:messageCopy];
        goto LABEL_16;
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        name = [messageCopy name];
        *buf = 138543618;
        v34 = v30;
        v35 = 2112;
        v36 = name;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unknown message type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v14 = MEMORY[0x277CCA9B8];
      v15 = 2;
    }
  }

  v16 = [v14 hmErrorWithCode:v15];
  [messageCopy respondWithError:v16];

LABEL_16:
}

- (void)_stopStreamWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (streamSession)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      streamSession2 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      v18 = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = streamSession2;
      v22 = 2112;
      v23 = errorCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failing stream session %@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
    sessionID = [streamSession3 sessionID];
    v14SessionID = [sessionID sessionID];
    [dictionary setObject:v14SessionID forKeyedSubscript:@"kCameraSessionID"];

    if (errorCopy)
    {
      v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
      [dictionary setObject:v16 forKeyedSubscript:@"kCameraSessionError"];
    }

    v17 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCF608] messagePayload:dictionary];
    [(HMDCameraStreamControlMessageHandler *)selfCopy _handleStopMessage:v17];
  }
}

- (void)takeOwnershipOfStreamUsingMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraStreamControlMessageHandler *)self streamSession];

  if (!streamSession)
  {
    _HMFPreconditionFailure();
LABEL_29:
    _HMFPreconditionFailure();
  }

  streamSession2 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
  destinationID = [streamSession2 destinationID];

  if (destinationID)
  {
    goto LABEL_29;
  }

  proxyConnection = [messageCopy proxyConnection];
  if (proxyConnection)
  {
    streamSession3 = [(HMDCameraStreamControlMessageHandler *)self streamSession];
    streamClientConnection = [streamSession3 streamClientConnection];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (streamClientConnection != proxyConnection)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v46 = 138543618;
        v47 = v16;
        v48 = 2112;
        v49 = proxyConnection;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Taking ownership of stream using client connection: %@", &v46, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      streamSession4 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      currentMessage = [streamSession4 currentMessage];

      if (currentMessage)
      {
        if (([objc_opt_class() _isNegotiateMessage:currentMessage] & 1) == 0)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = selfCopy;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            shortDescription = [currentMessage shortDescription];
            v46 = 138543618;
            v47 = v44;
            v48 = 2112;
            v49 = shortDescription;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot take ownership of stream because stream is handling a non-negotiate message: %@", &v46, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          streamSession6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [messageCopy respondWithError:streamSession6];
          goto LABEL_26;
        }

        streamSession5 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
        [streamSession5 setCurrentMessage:messageCopy];

        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          shortDescription2 = [currentMessage shortDescription];
          v46 = 138543618;
          v47 = v23;
          v48 = 2112;
          v49 = shortDescription2;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding to existing negotiate message: %@", &v46, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        applicationBundleIdentifier = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [currentMessage respondWithError:applicationBundleIdentifier];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          shortDescription3 = [messageCopy shortDescription];
          v46 = 138543618;
          v47 = v37;
          v48 = 2112;
          v49 = shortDescription3;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying existing stream client that stream has stopped and responding to new stream client message: %@", &v46, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1049];
        [(HMDCameraStreamControlMessageHandler *)v35 _sendStreamStoppedMessageWithError:v39];

        [(HMDCameraStreamControlMessageHandler *)v35 _respondToLocalNegotiateStreamMessage:messageCopy];
        applicationBundleIdentifier = [proxyConnection applicationBundleIdentifier];
        [(HMDCameraStreamControlMessageHandler *)v35 _attributeMicrophoneUsageToApplicationBundleIdentifier:applicationBundleIdentifier];
      }

      streamSession6 = [(HMDCameraStreamControlMessageHandler *)selfCopy streamSession];
      [streamSession6 setStreamClientConnection:proxyConnection];
LABEL_26:

      goto LABEL_27;
    }

    if (v15)
    {
      v33 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v33;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Client requested to start a stream while it already owns one", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 1;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      shortDescription4 = [messageCopy shortDescription];
      v46 = 138543618;
      v47 = v29;
      v48 = 2112;
      v49 = shortDescription4;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot find XPC client connection while taking ownership of stream using message: %@", &v46, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v31 = MEMORY[0x277CCA9B8];
    v32 = 58;
  }

  currentMessage = [v31 hmErrorWithCode:v32];
  [messageCopy respondWithError:currentMessage];
LABEL_27:
}

- (void)setStreamSession:(id)session
{
  sessionCopy = session;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = self->_streamSession;
  self->_streamSession = sessionCopy;

  streamSnapshotHandler = [(HMDCameraStreamControlMessageHandler *)self streamSnapshotHandler];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  [streamSnapshotHandler setStreamSetupStatusForService:streamManagementService inProgress:sessionCopy != 0];
}

- (HMDCameraStreamManagerSession)streamSession
{
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = self->_streamSession;

  return streamSession;
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  workQueue = [(HMDCameraStreamControlMessageHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  if (accessory)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleConnectionDeactivatedNotification_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:accessory];

    [(HMDCameraStreamControlMessageHandler *)self setMessageDispatcher:dispatcherCopy];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCameraStreamControlMessageHandler *)self accessory];
  name = [accessory name];
  streamManagementService = [(HMDCameraStreamControlMessageHandler *)self streamManagementService];
  instanceID = [streamManagementService instanceID];
  v8 = [v3 stringWithFormat:@"%@/%@", name, instanceID];

  return v8;
}

- (void)dealloc
{
  v3 = self->_streamSession;
  v4 = v3;
  if (v3)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HMDCameraStreamControlMessageHandler_dealloc__block_invoke;
    block[3] = &unk_27868A728;
    v8 = v3;
    dispatch_async(workQueue, block);
  }

  v6.receiver = self;
  v6.super_class = HMDCameraStreamControlMessageHandler;
  [(HMDCameraStreamControlMessageHandler *)&v6 dealloc];
}

void __47__HMDCameraStreamControlMessageHandler_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamControlManager];
  v1 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1039];
  [v2 stopStreamWithError:v1];
}

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor
{
  v14 = MEMORY[0x277CCACA8];
  monitorCopy = monitor;
  identifierCopy = identifier;
  serviceCopy = service;
  accessoryCopy = accessory;
  handlerCopy = handler;
  queueCopy = queue;
  name = [accessoryCopy name];
  instanceID = [serviceCopy instanceID];
  v23 = [v14 stringWithFormat:@"%@/%@", name, instanceID];

  v24 = [[HMDCameraResidentMessageHandler alloc] initWithAccessory:accessoryCopy logIdentifier:v23];
  v25 = objc_alloc_init(HMDCameraStreamControlMessageHandlerDataSource);
  v26 = [(HMDCameraStreamControlMessageHandler *)self initWithWorkQueue:queueCopy streamSnapshotHandler:handlerCopy accessory:accessoryCopy streamManagementService:serviceCopy profileUniqueIdentifier:identifierCopy networkMonitor:monitorCopy residentMessageHandler:v24 dataSource:v25];

  return v26;
}

- (HMDCameraStreamControlMessageHandler)initWithWorkQueue:(id)queue streamSnapshotHandler:(id)handler accessory:(id)accessory streamManagementService:(id)service profileUniqueIdentifier:(id)identifier networkMonitor:(id)monitor residentMessageHandler:(id)messageHandler dataSource:(id)self0
{
  v41[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  obj = accessory;
  serviceCopy = service;
  identifierCopy = identifier;
  monitorCopy = monitor;
  messageHandlerCopy = messageHandler;
  v19 = serviceCopy;
  sourceCopy = source;
  v40.receiver = self;
  v40.super_class = HMDCameraStreamControlMessageHandler;
  v21 = [(HMDCameraStreamControlMessageHandler *)&v40 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_workQueue, queue);
    objc_storeStrong(&v22->_streamSnapshotHandler, handler);
    objc_storeWeak(&v22->_accessory, obj);
    objc_storeStrong(&v22->_profileUniqueIdentifier, identifier);
    objc_storeStrong(&v22->_streamManagementService, service);
    objc_storeStrong(&v22->_residentMessageHandler, messageHandler);
    v23 = MEMORY[0x277CCACA8];
    instanceID = [v19 instanceID];
    v25 = [v23 stringWithFormat:@"%@", instanceID];

    v26 = MEMORY[0x277CCAD78];
    v41[0] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v28 = [v26 hm_deriveUUIDFromBaseUUID:identifierCopy withSalts:v27];
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v28;

    v30 = objc_alloc_init(HMDCameraSupportedConfigurationCache);
    supportedConfigCache = v22->_supportedConfigCache;
    v22->_supportedConfigCache = v30;

    objc_storeStrong(&v22->_networkMonitor, monitor);
    createDynamicActivityAttributionPublisher = [sourceCopy createDynamicActivityAttributionPublisher];
    dynamicActivityAttributionPublisher = v22->_dynamicActivityAttributionPublisher;
    v22->_dynamicActivityAttributionPublisher = createDynamicActivityAttributionPublisher;

    objc_storeStrong(&v22->_dataSource, source);
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43, &__block_literal_global_95851);
  }

  v3 = logCategory__hmf_once_v44;

  return v3;
}

void __51__HMDCameraStreamControlMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v44;
  logCategory__hmf_once_v44 = v0;
}

+ (BOOL)_isRemoteSetupMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  return v4;
}

+ (BOOL)_isSetAudioVolumeMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF600]];

  return v4;
}

+ (BOOL)_isSetAudioStreamSettingMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF5F8]];

  return v4;
}

+ (BOOL)_isStopMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  if ([name isEqualToString:*MEMORY[0x277CCF608]])
  {
    v5 = 1;
  }

  else
  {
    name2 = [messageCopy name];
    if ([name2 isEqualToString:@"kStopRemoteStreamRequestKey"])
    {
      v5 = 1;
    }

    else
    {
      name3 = [messageCopy name];
      v5 = [name3 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];
    }
  }

  return v5;
}

+ (BOOL)_isUpdateMaximumVideoResolutionQualityMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:*MEMORY[0x277CCF618]];

  return v4;
}

+ (BOOL)_isReconfigureMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isStartMessage:(id)message
{
  name = [message name];
  v4 = [name isEqualToString:@"kStartRemoteStreamRequestKey"];

  return v4;
}

+ (BOOL)_isNegotiateMessage:(id)message
{
  messageCopy = message;
  name = [messageCopy name];
  if ([name isEqualToString:@"kNegotitateRemoteStreamRequestKey"])
  {
    v5 = 1;
  }

  else
  {
    name2 = [messageCopy name];
    v5 = [name2 isEqualToString:*MEMORY[0x277CCF5F0]];
  }

  return v5;
}

@end