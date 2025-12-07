@interface HMDCameraLocalStreamControlManager
+ (id)logCategory;
- (BOOL)_isSetupEndPointConfigurationValid;
- (BOOL)isSendingStream;
- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)service supportedConfigCache:(id)cache streamSession:(id)self0 accessoryCommunicator:(id)self1 isRelayed:(BOOL)self2;
- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 localNetworkConfig:(id)self1 remoteCapabilities:(id)self2 supportedConfigCache:(id)self3 streamPreference:(id)self4;
- (NSDictionary)stateDump;
- (NSNumber)aspectRatio;
- (NSNumber)audioDownlinkToken;
- (NSNumber)audioUplinkToken;
- (NSNumber)slotIdentifier;
- (id)_calculateMTU;
- (unint64_t)audioStreamSetting;
- (void)_cleanUpStreamSessionWithError:(id)error;
- (void)_deregisterForHAPSessionRestore;
- (void)_getSupportedConfigurations;
- (void)_reconfigureStreams;
- (void)_registerForHAPSessionRestore;
- (void)_sendSetupEndPointReadRequest;
- (void)_sendSetupEndPointWriteRequest;
- (void)_sendUpdatedConfiguration;
- (void)_startStreamManager;
- (void)_streamStarted;
- (void)_writeReselectConfig;
- (void)_writeStartConfig;
- (void)_writeStopConfig;
- (void)deviceConnectionSender:(id)sender didEndSessionWithError:(id)error;
- (void)deviceConnectionSender:(id)sender didSetUpWithError:(id)error;
- (void)handleAccessoryDisconnectedNotification:(id)notification;
- (void)negotiateStream;
- (void)reconfigureStream:(id)stream;
- (void)sessionInitiator:(id)initiator didEndSessionWithError:(id)error;
- (void)sessionInitiator:(id)initiator didSetUpWithError:(id)error;
- (void)setUpRemoteConnectionWithDevice:(id)device;
- (void)startStreamWithRemoteSettings:(id)settings;
- (void)stopStreamWithError:(id)error;
- (void)streamManagerDidNetworkDeteriorate:(id)deteriorate;
- (void)streamManagerDidNetworkImprove:(id)improve;
- (void)streamManagerDidReceiveFirstFrame:(id)frame;
- (void)streamManagerDidStartRelay:(id)relay;
- (void)streamManagerDidStartStream:(id)stream;
- (void)streamManagerDidStopStream:(id)stream error:(id)error;
- (void)streamManagerDidUpdateConfiguration:(id)configuration;
- (void)updateAudioSetting:(unint64_t)setting;
- (void)updateAudioVolume:(id)volume callback:(id)callback;
- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler;
@end

@implementation HMDCameraLocalStreamControlManager

- (void)_sendUpdatedConfiguration
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraLocalStreamControlManager *)self isSendingStream])
  {

    [(HMDCameraStreamControlManager *)self _callStreamReconfigured];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    configGenerator = [(HMDCameraLocalStreamControlManager *)selfCopy configGenerator];
    streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    videoTierParameters = [streamSession videoTierParameters];
    currentPickedTier = [videoTierParameters currentPickedTier];
    v20 = 0;
    v12 = [configGenerator extractReselectedConfigFromVideoTier:currentPickedTier videoStreamConfig:&v20];
    v13 = v20;

    if (v12)
    {
      streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
      streamManager = [streamSession2 streamManager];
      [streamManager updateStreamConfiguration:v13];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Reselected config failed to extract", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDCameraStreamControlManager *)v17 _reportInternalErrorCode:1046];
    }
  }
}

- (void)_reconfigureStreams
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  parameterSelection = [streamSession parameterSelection];
  streamSession2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters = [streamSession2 protocolParameters];
  streamSession3 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession3 videoTierParameters];
  currentPickedTier = [videoTierParameters currentPickedTier];
  [parameterSelection setReselectedConfigParameters:protocolParameters videoTier:currentPickedTier];

  [(HMDCameraLocalStreamControlManager *)self _writeReselectConfig];
}

- (void)streamManagerDidUpdateConfiguration:(id)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream configuration update complete", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateReconfigurationMode:0];
}

- (void)streamManagerDidNetworkDeteriorate:(id)deteriorate
{
  v19 = *MEMORY[0x277D85DE8];
  deteriorateCopy = deteriorate;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession videoTierParameters];
  pickLowerTier = [videoTierParameters pickLowerTier];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (pickLowerTier)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a lower tier", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)selfCopy _reconfigureStreams];
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Already in lowest tier, not changing the tier", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamManager = [streamSession2 streamManager];
    [streamManager updateReconfigurationMode:0];
  }
}

- (void)streamManagerDidNetworkImprove:(id)improve
{
  v20 = *MEMORY[0x277D85DE8];
  improveCopy = improve;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraStreamControlManager *)self _canReconfigureToHigherTier])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      v15 = "%{public}@Accessory does not support reconfiguring to a higher video tier";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, v15, &v18, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v9);
    streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy2 streamSession];
    streamManager = [streamSession streamManager];
    [streamManager updateReconfigurationMode:0];

    goto LABEL_12;
  }

  streamSession2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  videoTierParameters = [streamSession2 videoTierParameters];
  pickHigherTier = [videoTierParameters pickHigherTier];

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!pickHigherTier)
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      v15 = "%{public}@Already in highest tier, not changing the tier";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Picked a higher tier", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)selfCopy2 _reconfigureStreams];
LABEL_12:
}

- (void)streamManagerDidStopStream:(id)stream error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [streamSession containsState:4];

  if (v7)
  {
    [(HMDCameraStreamControlManager *)self _callStreamStoppedWithError:errorCopy];
  }

  else
  {
    [(HMDCameraLocalStreamControlManager *)self _cleanUpStreamSessionWithError:errorCopy];
  }
}

- (void)streamManagerDidStartRelay:(id)relay
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraLocalStreamControlManager *)self _streamStarted];
}

- (void)streamManagerDidReceiveFirstFrame:(id)frame
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraStreamControlManager *)self _callStreamFirstFrameReceived];
}

- (void)streamManagerDidStartStream:(id)stream
{
  v12 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream manager did start stream", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraLocalStreamControlManager *)selfCopy _streamStarted];
}

- (void)deviceConnectionSender:(id)sender didEndSessionWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Session stopped, stopping the stream", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
}

- (void)deviceConnectionSender:(id)sender didSetUpWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSDeviceConnection for stream", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
  }

  else
  {
    [(HMDCameraStreamControlManager *)self _callStreamRemoteConnectionSetup];
    streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
    [streamSession updateState:2];

    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Device connection sender is set up", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDCameraLocalStreamControlManager *)selfCopy2 _startStreamManager];
  }
}

- (void)sessionInitiator:(id)initiator didEndSessionWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Session stopped, stopping the stream", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraLocalStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
}

- (void)sessionInitiator:(id)initiator didSetUpWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up IDSSession for stream", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraLocalStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
  }

  else
  {
    streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
    [streamSession updateState:2];

    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Session initiator is setup", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDCameraLocalStreamControlManager *)selfCopy2 _startStreamManager];
  }
}

- (void)handleAccessoryDisconnectedNotification:(id)notification
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDCameraLocalStreamControlManager_handleAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __78__HMDCameraLocalStreamControlManager_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping stream because accessory disconnected", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [v6 _cleanUpStreamSessionWithError:v7];
}

- (void)_streamStarted
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamSender = [streamSession streamSender];
  [streamSender startKeepAlive];

  [(HMDCameraLocalStreamControlManager *)self _writeStartConfig];
}

- (void)_cleanUpStreamSessionWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (streamSession)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cleaning up the stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    [streamSession2 updateState:8];

    [(HMDCameraLocalStreamControlManager *)selfCopy _deregisterForHAPSessionRestore];
    streamSession3 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamManager = [streamSession3 streamManager];
    [streamManager stopStream];

    [(HMDCameraLocalStreamControlManager *)selfCopy _writeStopConfig];
    [(HMDCameraLocalStreamControlManager *)selfCopy setStreamSession:0];
    [(HMDCameraStreamControlManager *)selfCopy _callStreamStoppedWithError:errorCopy];
  }

  else
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@No current stream session to clean up", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_writeStopConfig
{
  v27 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];

  if (!streamSession)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      v23 = "%{public}@No current stream session to write stop config for";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v19);
    return;
  }

  streamSession2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v6 = [streamSession2 containsState:1];

  if ((v6 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      v23 = "%{public}@Not writing stop stream configuration because stream never started";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v7 = [HMDSessionControl alloc];
  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  v9SessionID = [sessionID sessionID];
  v11 = [v8 initWithUUIDString:v9SessionID];
  v12 = [(HMDSessionControl *)v7 initWithCommand:0 sessionIdentifier:v11];

  v13 = [[HMDSelectedStreamConfigurationWrite alloc] initWithSessionControl:v12];
  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Writing stop stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)selfCopy3 accessoryCommunicator];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__HMDCameraLocalStreamControlManager__writeStopConfig__block_invoke;
  v24[3] = &unk_2797359D8;
  v24[4] = selfCopy3;
  [accessoryCommunicator writeSelectedStreamConfiguration:v13 completion:v24];
}

void __54__HMDCameraLocalStreamControlManager__writeStopConfig__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to write stop stream configuration: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully wrote stop stream configuration";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_writeReselectConfig
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters = [streamSession protocolParameters];
  reselectedStreamConfigurationWrite = [protocolParameters reselectedStreamConfigurationWrite];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Writing reselect stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)selfCopy accessoryCommunicator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMDCameraLocalStreamControlManager__writeReselectConfig__block_invoke;
  v12[3] = &unk_2797359D8;
  v12[4] = selfCopy;
  [accessoryCommunicator writeReselectedStreamConfiguration:reselectedStreamConfigurationWrite completion:v12];
}

void __58__HMDCameraLocalStreamControlManager__writeReselectConfig__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write reselect stream configuration: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote reselect stream configuration", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _sendUpdatedConfiguration];
  }
}

- (void)_writeStartConfig
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters = [streamSession protocolParameters];
  selectedStreamConfigurationWrite = [protocolParameters selectedStreamConfigurationWrite];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Writing start stream configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)selfCopy accessoryCommunicator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDCameraLocalStreamControlManager__writeStartConfig__block_invoke;
  v12[3] = &unk_2797359D8;
  v12[4] = selfCopy;
  [accessoryCommunicator writeSelectedStreamConfiguration:selectedStreamConfigurationWrite completion:v12];
}

void __55__HMDCameraLocalStreamControlManager__writeStartConfig__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write start stream configuration: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _reportInternalErrorCode:1056];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote start stream configuration", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _callStreamStarted];
  }
}

- (void)stopStreamWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = sessionID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to stop the stream with session ID %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraLocalStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)quality completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v11;
    v24 = 2048;
    qualityCopy = quality;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to update maximum video resolution quality: %lu", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];

  if (streamSession)
  {
    streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    videoTierParameters = [streamSession2 videoTierParameters];
    [videoTierParameters setMaximumQuality:quality];

    streamSession3 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    videoTierParameters2 = [streamSession3 videoTierParameters];
    LODWORD(videoTierParameters) = [videoTierParameters2 pickBestTier];

    if (videoTierParameters)
    {
      [(HMDCameraLocalStreamControlManager *)selfCopy _reconfigureStreams];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@No current stream session to reconfigure", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (handlerCopy)[2](handlerCopy, v21);
  }
}

- (void)reconfigureStream:(id)stream
{
  v42 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraStreamControlManager *)selfCopy sessionID];
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = sessionID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to reconfigure the stream with session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];

  if (streamSession)
  {
    v12 = [streamCopy hmf_dataForKey:@"kReconfiguredTier"];
    if (v12)
    {
      v35 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v35];
      v14 = v35;
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if (v13)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          [(HMDCameraLocalStreamControlManager *)v16 streamSession];
          v20 = v34 = v14;
          videoTierParameters = [v20 videoTierParameters];
          currentPickedTier = [videoTierParameters currentPickedTier];
          *buf = 138543874;
          v37 = v19;
          v38 = 2112;
          v39 = currentPickedTier;
          v40 = 2112;
          v41 = v13;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating the current picked tier from %@ to %@", buf, 0x20u);

          v14 = v34;
        }

        objc_autoreleasePoolPop(v15);
        streamSession2 = [(HMDCameraLocalStreamControlManager *)v16 streamSession];
        videoTierParameters2 = [streamSession2 videoTierParameters];
        [videoTierParameters2 setCurrentPickedTier:v13];

        [(HMDCameraLocalStreamControlManager *)v16 _reconfigureStreams];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v33;
          v38 = 2112;
          v39 = v14;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera video tier from video tier data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        [(HMDCameraStreamControlManager *)v16 _reportInternalErrorCode:1047];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing reconfigured tier data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [(HMDCameraStreamControlManager *)v30 _reportInternalErrorCode:1047];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@No current stream session to reconfigure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDCameraStreamControlManager *)v26 _reportErrorCode:3];
  }
}

- (void)_deregisterForHAPSessionRestore
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraStreamControlManager *)self accessory];
  v4 = HAPStringFromAccessoryServerSession();
  [accessory deregisterFromSessionRestore:v4];
}

- (void)_registerForHAPSessionRestore
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraStreamControlManager *)self accessory];
  v4 = HAPStringFromAccessoryServerSession();
  [accessory registerForSessionRestore:v4];
}

- (void)_startStreamManager
{
  v44 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraLocalStreamControlManager *)self isSendingStream])
  {
    streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
    v5 = [streamSession containsState:2];

    if ((v5 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v31 = HMFGetLogIdentifier();
        streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy2 streamSession];
        stateDescription = [streamSession2 stateDescription];
        *buf = 138543618;
        v41 = v31;
        v42 = 2112;
        v43 = stateDescription;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Current state: %@, waiting", buf, 0x16u);
      }

LABEL_10:

      objc_autoreleasePoolPop(v28);
      return;
    }
  }

  streamSession3 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  v7 = [streamSession3 containsState:4];

  if ((v7 & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  configGenerator = [(HMDCameraLocalStreamControlManager *)self configGenerator];
  streamSession4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters = [streamSession4 protocolParameters];
  v38 = 0;
  v39 = 0;
  v11 = [configGenerator extractSelectedConfigFromProtocolParameters:protocolParameters videoStreamConfig:&v39 audioStreamConfig:&v38];
  v12 = v39;
  v13 = v38;

  if (v11)
  {
    streamSession5 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    protocolParameters2 = [streamSession5 protocolParameters];
    selectedStreamConfigurationWrite = [protocolParameters2 selectedStreamConfigurationWrite];
    videoParameters = [selectedStreamConfigurationWrite videoParameters];
    rtpParameters = [videoParameters rtpParameters];
    synchronizationSource = [rtpParameters synchronizationSource];
    [v12 setDeviceLocalSSRC:{objc_msgSend(synchronizationSource, "unsignedIntegerValue")}];

    streamSession6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    protocolParameters3 = [streamSession6 protocolParameters];
    selectedStreamConfigurationWrite2 = [protocolParameters3 selectedStreamConfigurationWrite];
    audioParameters = [selectedStreamConfigurationWrite2 audioParameters];
    rtpParameters2 = [audioParameters rtpParameters];
    synchronizationSource2 = [rtpParameters2 synchronizationSource];
    [v13 setDeviceLocalSSRC:{objc_msgSend(synchronizationSource2, "unsignedIntegerValue")}];

    streamSession7 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    streamManager = [streamSession7 streamManager];
    [streamManager startStreamWithVideoConfig:v12 audioConfig:v13];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not extract a configuration from the given parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    [(HMDCameraStreamControlManager *)selfCopy3 _reportInternalErrorCode:1046];
  }
}

- (id)_calculateMTU
{
  v27 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamSender = [streamSession streamSender];

  if (streamSender)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
      streamSender2 = [streamSession2 streamSender];
      v12 = [streamSender2 mtu];
      v23 = 138543618;
      v24 = v9;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reporting stream sender reported MTU %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    streamSession3 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamSender3 = [streamSession3 streamSender];
    v15 = [streamSender3 mtu];
  }

  else
  {
    streamSession4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    protocolParameters = [streamSession4 protocolParameters];
    setupEndPointWrite = [protocolParameters setupEndPointWrite];
    address = [setupEndPointWrite address];
    isIPv6Address = [address isIPv6Address];

    if (isIPv6Address)
    {
      v21 = 1228;
    }

    else
    {
      v21 = 1378;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  }

  return v15;
}

- (void)startStreamWithRemoteSettings:(id)settings
{
  v72 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v65 = v9;
    v66 = 2112;
    v67 = settingsCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received request to start stream with remote settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDCameraLocalStreamControlManager *)selfCopy isSendingStream])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Using the sync sources from remote settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    syncSource = [settingsCopy objectForKeyedSubscript:@"kVideoStreamSSRC"];
    syncSource2 = [settingsCopy objectForKeyedSubscript:@"kAudioStreamSSRC"];
    if (!syncSource)
    {
      goto LABEL_14;
    }
  }

  else
  {
    streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamManager = [streamSession streamManager];
    videoStreamInterface = [streamManager videoStreamInterface];
    syncSource = [videoStreamInterface syncSource];

    streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamManager2 = [streamSession2 streamManager];
    audioStreamInterface = [streamManager2 audioStreamInterface];
    syncSource2 = [audioStreamInterface syncSource];

    if (!syncSource)
    {
LABEL_14:
      [(HMDCameraStreamControlManager *)selfCopy _reportInternalErrorCode:1045];
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v47;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@SSRC is nil, cannot select config parameters", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      goto LABEL_27;
    }
  }

  if (!syncSource2)
  {
    goto LABEL_14;
  }

  streamSession3 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
  [streamSession3 updateState:4];

  streamSession4 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
  protocolParameters = [streamSession4 protocolParameters];
  selectedStreamConfigurationWrite = [protocolParameters selectedStreamConfigurationWrite];
  videoParameters = [selectedStreamConfigurationWrite videoParameters];
  rtpParameters = [videoParameters rtpParameters];
  [rtpParameters setSynchronizationSource:syncSource];

  streamSession5 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
  protocolParameters2 = [streamSession5 protocolParameters];
  selectedStreamConfigurationWrite2 = [protocolParameters2 selectedStreamConfigurationWrite];
  audioParameters = [selectedStreamConfigurationWrite2 audioParameters];
  rtpParameters2 = [audioParameters rtpParameters];
  [rtpParameters2 setSynchronizationSource:syncSource2];

  v33 = [settingsCopy objectForKeyedSubscript:@"kRemoteStreamMTU"];
  _calculateMTU = [(HMDCameraLocalStreamControlManager *)selfCopy _calculateMTU];
  v35 = _calculateMTU;
  v62 = syncSource;
  v63 = settingsCopy;
  if (v33)
  {
    unsignedIntegerValue = [_calculateMTU unsignedIntegerValue];
    unsignedIntegerValue2 = [v33 unsignedIntegerValue];
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
    if (unsignedIntegerValue >= unsignedIntegerValue2)
    {
      if (v41)
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v49;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Remote MTU is provided, and is lower than local MTU", buf, 0xCu);
      }

      v48 = v33;
      goto LABEL_24;
    }

    if (v41)
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v42;
      v43 = "%{public}@Remote MTU is provided, but is higher than local MTU";
LABEL_19:
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, v43, buf, 0xCu);
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v42;
      v43 = "%{public}@Remote MTU isnt provided, picking local MTU";
      goto LABEL_19;
    }
  }

  v48 = v35;
LABEL_24:
  v50 = syncSource2;

  objc_autoreleasePoolPop(v38);
  v51 = v48;
  v52 = objc_autoreleasePoolPush();
  v53 = selfCopy;
  v54 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    v55 = HMFGetLogIdentifier();
    *buf = 138544130;
    v65 = v55;
    v66 = 2112;
    v67 = v33;
    v68 = 2112;
    v69 = v35;
    v70 = 2112;
    v71 = v51;
    _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Remote MTU %@, Local MTU %@, Picked MTU %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v52);
  streamSession6 = [(HMDCameraLocalStreamControlManager *)v53 streamSession];
  protocolParameters3 = [streamSession6 protocolParameters];
  selectedStreamConfigurationWrite3 = [protocolParameters3 selectedStreamConfigurationWrite];
  videoParameters2 = [selectedStreamConfigurationWrite3 videoParameters];
  [videoParameters2 rtpParameters];
  v61 = v60 = v35;
  [v61 setMaxMTU:v51];

  [(HMDCameraLocalStreamControlManager *)v53 _startStreamManager];
  syncSource2 = v50;
  syncSource = v62;
  settingsCopy = v63;
LABEL_27:
}

- (BOOL)_isSetupEndPointConfigurationValid
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters = [streamSession protocolParameters];
  setupEndPointRead = [protocolParameters setupEndPointRead];

  streamSession2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  protocolParameters2 = [streamSession2 protocolParameters];
  setupEndPointWrite = [protocolParameters2 setupEndPointWrite];

  address = [setupEndPointWrite address];
  address2 = [setupEndPointRead address];
  v12 = [address isCompatibleWithRemoteEndPointAddress:address2];

  if ((v12 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v23;
    v24 = "%{public}@Setup endpoint configuration is invalid: Addresses are not compatible";
LABEL_11:
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, v24, &v28, 0xCu);

    goto LABEL_12;
  }

  videoSrtpParameters = [setupEndPointWrite videoSrtpParameters];
  videoSrtpParameters2 = [setupEndPointRead videoSrtpParameters];
  v15 = [videoSrtpParameters isCompatibleWithRemoteSRTPParameters:videoSrtpParameters2];

  if ((v15 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v23 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v23;
    v24 = "%{public}@Setup endpoint configuration is invalid: Video SRTP parameters are not compatible";
    goto LABEL_11;
  }

  audioSrtpParameters = [setupEndPointWrite audioSrtpParameters];
  audioSrtpParameters2 = [setupEndPointRead audioSrtpParameters];
  v18 = [audioSrtpParameters isCompatibleWithRemoteSRTPParameters:audioSrtpParameters2];

  if ((v18 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v23;
      v24 = "%{public}@Setup endpoint configuration is invalid: Audio SRTP parameters are not compatible";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v20);
    v19 = 0;
    goto LABEL_13;
  }

  v19 = 1;
LABEL_13:

  return v19;
}

- (void)_sendSetupEndPointReadRequest
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  [streamSession updateState:1];

  accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)self accessoryCommunicator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__HMDCameraLocalStreamControlManager__sendSetupEndPointReadRequest__block_invoke;
  v6[3] = &unk_27972B238;
  v6[4] = self;
  [accessoryCommunicator readSetupEndPointWithCompletion:v6];
}

void __67__HMDCameraLocalStreamControlManager__sendSetupEndPointReadRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) streamSession];

  if (v7)
  {
    if (v5)
    {
      v8 = [*(a1 + 32) streamSession];
      v9 = [v8 protocolParameters];
      [v9 setSetupEndPointRead:v5];

      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v13;
        v38 = 2112;
        v39 = v5;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received setup endpoint read response: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      if ([v5 responseStatus])
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v18 = HMDStreamControlPointResponseStatusAsString([v5 responseStatus]);
          v36 = 138543618;
          v37 = v17;
          v38 = 2112;
          v39 = v18;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Accessory setup endpoint read failed: %@", &v36, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [*(a1 + 32) _reportErrorCode:14];
      }

      else
      {
        v27 = [*(a1 + 32) _isSetupEndPointConfigurationValid];
        v28 = *(a1 + 32);
        if (v27)
        {
          v29 = [v28 streamSession];
          v30 = [v29 parameterSelection];
          v31 = [*(a1 + 32) streamSession];
          v32 = [v31 protocolParameters];
          [v30 setSelectedConfigParameters:v32];

          v33 = *(a1 + 32);
          v34 = [v33 streamSession];
          v35 = [v34 negotiatedParameters];
          [v33 _callStreamNegotiated:v35];
        }

        else
        {
          [v28 _reportInternalErrorCode:1043];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v26;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to read setup endpoint: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [*(a1 + 32) _cleanUpStreamSessionWithError:v6];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Session ended while reading setup endpoint", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)_sendSetupEndPointWriteRequest
{
  v59 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  localNetworkConfig = [streamSession localNetworkConfig];
  v6 = objc_msgSend_copy(localNetworkConfig);

  streamSession2 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  localNetworkConfig2 = [streamSession2 localNetworkConfig];
  v9 = objc_msgSend_copy(localNetworkConfig2);

  v10 = [HMDCameraStreamManager alloc];
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  streamSnapshotHandler = [(HMDCameraStreamControlManager *)self streamSnapshotHandler];
  workQueue2 = [(HMDCameraStreamControlManager *)self workQueue];
  streamSession3 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamSender = [streamSession3 streamSender];
  v16 = [(HMDCameraStreamManager *)v10 initWithSessionID:sessionID streamSnapshotHandler:streamSnapshotHandler workQueue:workQueue2 delegate:self localVideoNetworkConfig:v6 localAudioNetworkConfig:v9 sessionHandler:streamSender];
  streamSession4 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  [streamSession4 setStreamManager:v16];

  streamSession5 = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession5 streamManager];

  if (streamManager)
  {
    v54 = v9;
    v55 = v6;
    streamSession6 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    parameterSelection = [streamSession6 parameterSelection];
    streamSession7 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    protocolParameters = [streamSession7 protocolParameters];
    streamSession8 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    streamingCapabilities = [streamSession8 streamingCapabilities];
    streamSession9 = [(HMDCameraLocalStreamControlManager *)self streamSession];
    videoTierParameters = [streamSession9 videoTierParameters];
    v28 = [parameterSelection findBestMatchWithProtocolParameters:protocolParameters streamingCapabilities:streamingCapabilities videoTierParameters:videoTierParameters];

    if (v28)
    {
      streamSession10 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      parameterSelection2 = [streamSession10 parameterSelection];
      streamSession11 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      protocolParameters2 = [streamSession11 protocolParameters];
      [parameterSelection2 setSelectedEndPointSetupParameters:protocolParameters2 videoNetworkConfig:v55 audioNetworkConfig:v54];

      streamSession12 = [(HMDCameraLocalStreamControlManager *)self streamSession];
      protocolParameters3 = [streamSession12 protocolParameters];
      setupEndPointWrite = [protocolParameters3 setupEndPointWrite];

      if (setupEndPointWrite)
      {
        accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)self accessoryCommunicator];
        streamSession13 = [(HMDCameraLocalStreamControlManager *)self streamSession];
        protocolParameters4 = [streamSession13 protocolParameters];
        setupEndPointWrite2 = [protocolParameters4 setupEndPointWrite];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __68__HMDCameraLocalStreamControlManager__sendSetupEndPointWriteRequest__block_invoke;
        v56[3] = &unk_2797359D8;
        v56[4] = self;
        [accessoryCommunicator writeSetupEndPoint:setupEndPointWrite2 completion:v56];

LABEL_15:
        v9 = v54;
        v6 = v55;
        goto LABEL_16;
      }

      v50 = objc_autoreleasePoolPush();
      selfCopy = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v53;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Could not select the end point setup parameters", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v48 = selfCopy;
      v49 = 1041;
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v47;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find the right match in the supported list", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      v48 = selfCopy2;
      v49 = 1044;
    }

    [(HMDCameraStreamControlManager *)v48 _reportInternalErrorCode:v49];
    goto LABEL_15;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v43;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to create stream manager for local stream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  [(HMDCameraStreamControlManager *)selfCopy3 _reportInternalErrorCode:1015];
LABEL_16:
}

void __68__HMDCameraLocalStreamControlManager__sendSetupEndPointWriteRequest__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) streamSession];

  if (v4)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v8;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write setup endpoint: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) _cleanUpStreamSessionWithError:v3];
    }

    else
    {
      [*(a1 + 32) _sendSetupEndPointReadRequest];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Session ended while writing setup endpoint", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_getSupportedConfigurations
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Getting Supported Configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessoryCommunicator = [(HMDCameraLocalStreamControlManager *)selfCopy accessoryCommunicator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDCameraLocalStreamControlManager__getSupportedConfigurations__block_invoke;
  v9[3] = &unk_27972B210;
  v9[4] = selfCopy;
  [accessoryCommunicator readSupportedConfigurationsWithCompletion:v9];
}

void __65__HMDCameraLocalStreamControlManager__getSupportedConfigurations__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) streamSession];

  if (v13)
  {
    v14 = *(a1 + 32);
    if (v9 && v10 && v11)
    {
      v15 = [v14 streamSession];
      v16 = [v15 protocolParameters];
      [v16 setSupportedVideoStreamConfiguration:v9];

      v17 = [*(a1 + 32) supportedConfigCache];
      [v17 setSupportedVideoStreamConfiguration:v9];

      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v21;
        v42 = 2112;
        v43 = v9;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating supportedVideoStreamConfiguration: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [*(a1 + 32) streamSession];
      v23 = [v22 protocolParameters];
      [v23 setSupportedAudioStreamConfiguration:v10];

      v24 = [*(a1 + 32) supportedConfigCache];
      [v24 setSupportedAudioStreamConfiguration:v10];

      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v28;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supportedAudioStreamConfiguration: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [*(a1 + 32) streamSession];
      v30 = [v29 protocolParameters];
      [v30 setSupportedRTPConfiguration:v11];

      v31 = [*(a1 + 32) supportedConfigCache];
      [v31 setSupportedRTPConfiguration:v11];

      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v35;
        v42 = 2112;
        v43 = v11;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating supportedRTPConfiguration: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [*(a1 + 32) _sendSetupEndPointWriteRequest];
    }

    else
    {
      [v14 _cleanUpStreamSessionWithError:v12];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = *(a1 + 32);
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Session ended while getting supported configurations", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
  }
}

- (void)negotiateStream
{
  v54 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v50 = 138543362;
    v51 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received a request to negotiate video stream", &v50, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  accessory = [(HMDCameraStreamControlManager *)selfCopy accessory];
  if (accessory)
  {
    [(HMDCameraLocalStreamControlManager *)selfCopy _registerForHAPSessionRestore];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

    streamSession = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
    streamSender = [streamSession streamSender];
    [streamSender openRelaySession];

    supportedConfigCache = [(HMDCameraLocalStreamControlManager *)selfCopy supportedConfigCache];
    LODWORD(streamSender) = [supportedConfigCache isValid];

    if (streamSender)
    {
      supportedConfigCache2 = [(HMDCameraLocalStreamControlManager *)selfCopy supportedConfigCache];
      supportedVideoStreamConfiguration = [supportedConfigCache2 supportedVideoStreamConfiguration];
      streamSession2 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
      protocolParameters = [streamSession2 protocolParameters];
      [protocolParameters setSupportedVideoStreamConfiguration:supportedVideoStreamConfiguration];

      supportedConfigCache3 = [(HMDCameraLocalStreamControlManager *)selfCopy supportedConfigCache];
      supportedAudioStreamConfiguration = [supportedConfigCache3 supportedAudioStreamConfiguration];
      streamSession3 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
      protocolParameters2 = [streamSession3 protocolParameters];
      [protocolParameters2 setSupportedAudioStreamConfiguration:supportedAudioStreamConfiguration];

      supportedConfigCache4 = [(HMDCameraLocalStreamControlManager *)selfCopy supportedConfigCache];
      supportedRTPConfiguration = [supportedConfigCache4 supportedRTPConfiguration];
      streamSession4 = [(HMDCameraLocalStreamControlManager *)selfCopy streamSession];
      protocolParameters3 = [streamSession4 protocolParameters];
      [protocolParameters3 setSupportedRTPConfiguration:supportedRTPConfiguration];

      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        streamSession5 = [(HMDCameraLocalStreamControlManager *)v26 streamSession];
        protocolParameters4 = [streamSession5 protocolParameters];
        supportedVideoStreamConfiguration2 = [protocolParameters4 supportedVideoStreamConfiguration];
        v50 = 138543618;
        v51 = v28;
        v52 = 2112;
        v53 = supportedVideoStreamConfiguration2;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedVideoConfiguration: %@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v32 = objc_autoreleasePoolPush();
      v33 = v26;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        streamSession6 = [(HMDCameraLocalStreamControlManager *)v33 streamSession];
        protocolParameters5 = [streamSession6 protocolParameters];
        supportedAudioStreamConfiguration2 = [protocolParameters5 supportedAudioStreamConfiguration];
        v50 = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = supportedAudioStreamConfiguration2;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedAudioConfiguration: %@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v39 = objc_autoreleasePoolPush();
      v40 = v33;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        streamSession7 = [(HMDCameraLocalStreamControlManager *)v40 streamSession];
        protocolParameters6 = [streamSession7 protocolParameters];
        supportedRTPConfiguration2 = [protocolParameters6 supportedRTPConfiguration];
        v50 = 138543618;
        v51 = v42;
        v52 = 2112;
        v53 = supportedRTPConfiguration2;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Using cached supportedRTPConfiguration: %@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMDCameraLocalStreamControlManager *)v40 _sendSetupEndPointWriteRequest];
    }

    else
    {
      [(HMDCameraLocalStreamControlManager *)selfCopy _getSupportedConfigurations];
    }
  }

  else
  {
    v46 = objc_autoreleasePoolPush();
    v47 = selfCopy;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = HMFGetLogIdentifier();
      v50 = 138543362;
      v51 = v49;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Can't negotiate video stream: accessory reference is nil", &v50, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
  }
}

- (void)updateAudioVolume:(id)volume callback:(id)callback
{
  callbackCopy = callback;
  volumeCopy = volume;
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateAudioVolume:volumeCopy callback:callbackCopy];
}

- (void)updateAudioSetting:(unint64_t)setting
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  [streamManager updateAudioSetting:setting];
}

- (void)setUpRemoteConnectionWithDevice:(id)device
{
  deviceCopy = device;
  v4 = _HMFPreconditionFailure();
  [(HMDCameraLocalStreamControlManager *)v4 audioUplinkToken];
}

- (NSNumber)audioUplinkToken
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamInterface = [streamManager audioStreamInterface];
  uplinkToken = [audioStreamInterface uplinkToken];

  return uplinkToken;
}

- (NSNumber)audioDownlinkToken
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamInterface = [streamManager audioStreamInterface];
  downlinkToken = [audioStreamInterface downlinkToken];

  return downlinkToken;
}

- (NSDictionary)stateDump
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"State";
  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  stateDescription = [streamSession stateDescription];
  v7[0] = stateDescription;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (BOOL)isSendingStream
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamSender = [streamSession streamSender];
  LOBYTE(workQueue) = streamSender != 0;

  return workQueue;
}

- (NSNumber)aspectRatio
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  aspectRatio = [streamManager aspectRatio];

  return aspectRatio;
}

- (unint64_t)audioStreamSetting
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  audioStreamSetting = [streamManager audioStreamSetting];

  return audioStreamSetting;
}

- (NSNumber)slotIdentifier
{
  workQueue = [(HMDCameraStreamControlManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSession = [(HMDCameraLocalStreamControlManager *)self streamSession];
  streamManager = [streamSession streamManager];
  slotIdentifier = [streamManager slotIdentifier];

  return slotIdentifier;
}

- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)service supportedConfigCache:(id)cache streamSession:(id)self0 accessoryCommunicator:(id)self1 isRelayed:(BOOL)self2
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  serviceCopy = service;
  cacheCopy = cache;
  sessionCopy = session;
  communicatorCopy = communicator;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!queueCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!handlerCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!accessoryCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!serviceCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!cacheCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (sessionCopy)
  {
    v27 = communicatorCopy;
    v49.receiver = self;
    v49.super_class = HMDCameraLocalStreamControlManager;
    HIBYTE(v47) = relayed;
    LOBYTE(v47) = 1;
    v28 = [(HMDCameraStreamControlManager *)&v49 initWithSessionID:dCopy workQueue:queueCopy streamSnapshotHandler:handlerCopy delegate:delegateCopy accessory:accessoryCopy streamManagementService:serviceCopy isLocal:v47 isRelayed:?];
    v48 = dCopy;
    v29 = delegateCopy;
    supportedConfigCache = v28->_supportedConfigCache;
    v28->_supportedConfigCache = cacheCopy;
    v31 = cacheCopy;

    streamSession = v28->_streamSession;
    v28->_streamSession = sessionCopy;
    v33 = sessionCopy;

    accessoryCommunicator = v28->_accessoryCommunicator;
    v28->_accessoryCommunicator = v27;
    v35 = v27;

    v36 = objc_alloc_init(HMDCameraMediaConfigGenerator);
    configGenerator = v28->_configGenerator;
    v28->_configGenerator = v36;

    return v28;
  }

LABEL_15:
  v39 = _HMFPreconditionFailure();
  return [(HMDCameraLocalStreamControlManager *)v39 initWithSessionID:v40 workQueue:v41 streamSnapshotHandler:v42 reachabilityPath:v43 device:v44 delegate:v45 accessory:v46 streamManagementService:cache localNetworkConfig:session remoteCapabilities:communicator supportedConfigCache:relayed streamPreference:v50, v51];
}

- (HMDCameraLocalStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 localNetworkConfig:(id)self1 remoteCapabilities:(id)self2 supportedConfigCache:(id)self3 streamPreference:(id)self4
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  deviceCopy = device;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  serviceCopy = service;
  configCopy = config;
  capabilitiesCopy = capabilities;
  cacheCopy = cache;
  preferenceCopy = preference;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!queueCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!handlerCopy)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!path)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!accessoryCopy)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!serviceCopy)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  if (!capabilitiesCopy)
  {
LABEL_25:
    _HMFPreconditionFailure();
LABEL_26:
    _HMFPreconditionFailure();
  }

  if (!cacheCopy)
  {
    goto LABEL_26;
  }

  v46 = preferenceCopy;
  v47 = cacheCopy;
  v49 = delegateCopy;
  v26 = objc_autoreleasePoolPush();
  selfCopy = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v56 = v29;
    v57 = 2112;
    v58 = configCopy;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Local network config: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (deviceCopy)
  {
    v30 = +[HMDDeviceCapabilities deviceCapabilities];
    isResidentCapable = [v30 isResidentCapable];

    if (isResidentCapable)
    {
      v32 = capabilitiesCopy;
      v33 = serviceCopy;
      v34 = [[HMDCameraIDSSessionInitiator alloc] initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy localNetworkConfig:configCopy delegate:selfCopy];
    }

    else
    {
      v33 = serviceCopy;
      if (!isiOSDevice())
      {
        v43 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot relay stream from current device" userInfo:0];
        objc_exception_throw(v43);
      }

      v32 = capabilitiesCopy;
      v34 = [[HMDCameraIDSDeviceConnectionSender alloc] initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy delegate:selfCopy];
    }

    v35 = v34;
  }

  else
  {
    v32 = capabilitiesCopy;
    v33 = serviceCopy;
    v35 = 0;
  }

  v36 = dCopy;
  v45 = v32;
  v37 = [[HMDCameraLocalStreamSession alloc] initWithSessionID:dCopy reachabilityPath:path streamSender:v35 remoteCapabilities:v32 localNetworkConfig:configCopy streamPreference:v46];
  v38 = [HMDCameraLocalStreamAccessoryCommunicator alloc];
  v39 = dCopy;
  v40 = v33;
  v41 = [(HMDCameraLocalStreamAccessoryCommunicator *)v38 initWithWorkQueue:queueCopy sessionID:v39 accessory:accessoryCopy streamManagementService:v33];
  LOBYTE(v44) = v35 != 0;
  v52 = [(HMDCameraLocalStreamControlManager *)selfCopy initWithSessionID:v36 workQueue:queueCopy streamSnapshotHandler:handlerCopy delegate:v49 accessory:accessoryCopy streamManagementService:v40 supportedConfigCache:v47 streamSession:v37 accessoryCommunicator:v41 isRelayed:v44];

  return v52;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t56 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56, &__block_literal_global_110531);
  }

  v3 = logCategory__hmf_once_v57;

  return v3;
}

uint64_t __49__HMDCameraLocalStreamControlManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v57;
  logCategory__hmf_once_v57 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end