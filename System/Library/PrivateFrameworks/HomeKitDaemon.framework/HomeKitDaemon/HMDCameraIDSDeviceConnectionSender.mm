@interface HMDCameraIDSDeviceConnectionSender
+ (id)logCategory;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate;
- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate idsProxyStreamService:(id)service;
- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_socketOpenedWithError:(id)error;
- (void)_startAudioPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port;
- (void)_startVideoPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error;
- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error;
- (void)startPacketRelayWithIDSDestination:(id)destination cameraVideoSSRC:(unsigned int)c cameraAudioSSRC:(unsigned int)rC;
- (void)startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC;
@end

@implementation HMDCameraIDSDeviceConnectionSender

- (HMDCameraIDSDeviceConnectionSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error
{
  relayCopy = relay;
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDCameraIDSDeviceConnectionSender_packetRelay_didStop_error___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = relayCopy;
  stopCopy = stop;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = relayCopy;
  dispatch_async(workQueue, v13);
}

void __64__HMDCameraIDSDeviceConnectionSender_packetRelay_didStop_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 138544130;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did stop: %{BOOL}d error: %@", &v9, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error
{
  relayCopy = relay;
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDCameraIDSDeviceConnectionSender_packetRelay_didStart_error___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = relayCopy;
  startCopy = start;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = relayCopy;
  dispatch_async(workQueue, v13);
}

void __65__HMDCameraIDSDeviceConnectionSender_packetRelay_didStart_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 138544130;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = v6;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay %@ did start: %{BOOL}d error: %{public}@", &v9, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSDeviceConnection *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSDeviceConnectionSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionSender:selfCopy didEndSessionWithError:errorCopy];
  }
}

- (void)_socketOpenedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didSetup delegate with error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraIDSDeviceConnectionSender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate deviceConnectionSender:selfCopy didSetUpWithError:errorCopy];
  }
}

- (void)_startAudioPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port
{
  v47 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchAudioConnection = [(HMDCameraIDSDeviceConnection *)self watchAudioConnection];

  if (!watchAudioConnection)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    watchAudioConnection2 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchAudioConnection];
    *buf = 138544386;
    v38 = v14;
    v39 = 2112;
    v40 = addressCopy;
    v41 = 2048;
    portCopy = port;
    v43 = 1024;
    relayCopy = relay;
    v45 = 1024;
    socket = [watchAudioConnection2 socket];
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating audio relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:addressCopy];
  [v16 setPort:port];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:relay remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  watchAudioConnection3 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchAudioConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(watchAudioConnection3, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v36 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v36];
  v22 = v36;
  [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 setAudioPacketRelay:v21];

  audioPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 audioPacketRelay];

  v24 = objc_autoreleasePoolPush();
  selfCopy = selfCopy2;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!audioPacketRelay)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v35;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audio packet relay with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)selfCopy _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    audioPacketRelay2 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
    *buf = 138543618;
    v38 = v28;
    v39 = 2112;
    v40 = audioPacketRelay2;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for audio: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  audioPacketRelay3 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay3 setDelegate:selfCopy];

  audioPacketRelay4 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay4 start];

LABEL_15:
}

- (void)_startVideoPacketRelay:(int)relay ipAddress:(id)address port:(unint64_t)port
{
  v47 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];

  if (!watchVideoConnection)
  {
    v17 = 0;
    v20 = 0;
LABEL_11:
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v22 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    watchVideoConnection2 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchVideoConnection];
    *buf = 138544386;
    v38 = v14;
    v39 = 2112;
    v40 = addressCopy;
    v41 = 2048;
    portCopy = port;
    v43 = 1024;
    relayCopy = relay;
    v45 = 1024;
    socket = [watchVideoConnection2 socket];
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating video relay between %@:%tu (%d,%d)", buf, 0x2Cu);
  }

  objc_autoreleasePoolPop(v11);
  v16 = objc_alloc_init(MEMORY[0x277CE5710]);
  [v16 setIp:addressCopy];
  [v16 setPort:port];
  v17 = [MEMORY[0x277CE5728] connectionWithSocket:relay remoteAddress:v16];
  v18 = MEMORY[0x277CE5728];
  watchVideoConnection3 = [(HMDCameraIDSDeviceConnection *)selfCopy2 watchVideoConnection];
  v20 = [v18 connectionWithSocket:{objc_msgSend(watchVideoConnection3, "socket")}];

  if (!v17 || !v20)
  {
    goto LABEL_11;
  }

  v36 = 0;
  v21 = [objc_alloc(MEMORY[0x277CE5720]) initWithConnection:v17 connection:v20 error:&v36];
  v22 = v36;
  [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 setVideoPacketRelay:v21];

  videoPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy2 videoPacketRelay];

  v24 = objc_autoreleasePoolPush();
  selfCopy = selfCopy2;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (!videoPacketRelay)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v35;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video packet relay with error %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_14:
    [(HMDCameraIDSDeviceConnectionSender *)selfCopy _callSessionEndedWithError:v22];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    videoPacketRelay2 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
    *buf = 138543618;
    v38 = v28;
    v39 = 2112;
    v40 = videoPacketRelay2;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay for video: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  videoPacketRelay3 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay3 setDelegate:selfCopy];

  videoPacketRelay4 = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay4 start];

LABEL_15:
}

- (void)startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC
{
  v8 = *&audioSocket;
  v10 = *&socket;
  networkConfigCopy = networkConfig;
  configCopy = config;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.packet-connection-relay"];
  [(HMDCameraIDSDeviceConnectionSender *)self setPacketRelayTransaction:v15];

  ipAddress = [configCopy ipAddress];
  rtpPort = [configCopy rtpPort];

  -[HMDCameraIDSDeviceConnectionSender _startVideoPacketRelay:ipAddress:port:](self, "_startVideoPacketRelay:ipAddress:port:", v10, ipAddress, [rtpPort unsignedIntegerValue]);
  ipAddress2 = [networkConfigCopy ipAddress];
  rtpPort2 = [networkConfigCopy rtpPort];

  -[HMDCameraIDSDeviceConnectionSender _startAudioPacketRelay:ipAddress:port:](self, "_startAudioPacketRelay:ipAddress:port:", v8, ipAddress2, [rtpPort2 unsignedIntegerValue]);
}

- (void)startPacketRelayWithIDSDestination:(id)destination cameraVideoSSRC:(unsigned int)c cameraAudioSSRC:(unsigned int)rC
{
  v5 = *&rC;
  v6 = *&c;
  v56[2] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.packet-relay"];
  [(HMDCameraIDSDeviceConnectionSender *)self setPacketRelayTransaction:v9];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@IDS Session is present", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [objc_alloc(MEMORY[0x277CE5718]) initWithIncomingSSRC:v6 acceptPacketType:0];
  v15 = MEMORY[0x277CE5728];
  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)selfCopy watchVideoConnection];
  v17 = [v15 connectionWithSocket:objc_msgSend(watchVideoConnection remoteAddress:"socket") packetFilter:{0, v14}];

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v21;
    v54 = 1024;
    LODWORD(v55) = v6;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Creating video relay connection with SSRC %08x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [objc_alloc(MEMORY[0x277CE5718]) initWithIncomingSSRC:v5 acceptPacketType:0];
  v23 = MEMORY[0x277CE5728];
  watchAudioConnection = [(HMDCameraIDSDeviceConnection *)v19 watchAudioConnection];
  v25 = [v23 connectionWithSocket:objc_msgSend(watchAudioConnection remoteAddress:"socket") packetFilter:{0, v22}];

  v26 = objc_autoreleasePoolPush();
  v27 = v19;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v29;
    v54 = 1024;
    LODWORD(v55) = v5;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Creating audio relay connection with SSRC %08x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = destinationCopy;
  v31 = [MEMORY[0x277CE5728] connectionWithIDSDestination:destinationCopy];
  v32 = v31;
  if (v17 && v25 && v31)
  {
    v33 = objc_alloc(MEMORY[0x277CE5720]);
    v56[0] = v17;
    v56[1] = v25;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v51 = 0;
    v35 = [v33 initWithConnections:v34 multiplexedConnection:v32 error:&v51];
    v36 = v51;
    [(HMDCameraIDSDeviceConnectionSender *)v27 setVideoPacketRelay:v35];

    videoPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)v27 videoPacketRelay];

    v38 = objc_autoreleasePoolPush();
    v39 = v27;
    v40 = HMFGetOSLogHandle();
    v41 = v40;
    if (videoPacketRelay)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v42;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      videoPacketRelay2 = [(HMDCameraIDSDeviceConnectionSender *)v39 videoPacketRelay];
      [videoPacketRelay2 setDelegate:v39];

      videoPacketRelay3 = [(HMDCameraIDSDeviceConnectionSender *)v39 videoPacketRelay];
      [videoPacketRelay3 start];
    }

    else
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v49;
        v54 = 2114;
        v55 = v36;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video packet relay with error %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      [(HMDCameraIDSDeviceConnectionSender *)v39 _callSessionEndedWithError:v36];
    }

    v30 = destinationCopy;
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v27;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v48;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to create relay objects", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
    v36 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    [(HMDCameraIDSDeviceConnectionSender *)v46 _callSessionEndedWithError:v36];
  }
}

- (NSNumber)mtu
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = MEMORY[0x277CCABB0];
  watchVideoConnection = [(HMDCameraIDSDeviceConnection *)self watchVideoConnection];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(watchVideoConnection, "mtu")}];

  return v6;
}

- (void)openRelaySession
{
  workQueue = [(HMDCameraIDSDeviceConnection *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  device = [(HMDCameraIDSDeviceConnectionSender *)self device];
  [(HMDCameraIDSDeviceConnection *)self _createStreamSocketWithDevice:device];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS connection sender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  videoPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy videoPacketRelay];
  [videoPacketRelay stop];

  audioPacketRelay = [(HMDCameraIDSDeviceConnectionSender *)selfCopy audioPacketRelay];
  [audioPacketRelay stop];

  v9.receiver = selfCopy;
  v9.super_class = HMDCameraIDSDeviceConnectionSender;
  [(HMDCameraIDSDeviceConnection *)&v9 dealloc];
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate idsProxyStreamService:(id)service
{
  dCopy = d;
  queueCopy = queue;
  deviceCopy = device;
  delegateCopy = delegate;
  serviceCopy = service;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!queueCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!deviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = serviceCopy;
  if (!serviceCopy)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(HMDCameraIDSDeviceConnectionSender *)v22 initWithSessionID:v23 workQueue:v24 device:v25 delegate:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMDCameraIDSDeviceConnectionSender;
  v18 = [(HMDCameraIDSDeviceConnection *)&v28 initWithSessionID:dCopy workQueue:queueCopy idsProxyStreamService:serviceCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_device, device);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v20 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v20 registerRemoteRequestHandler:v19 forSessionID:dCopy];
  }

  return v19;
}

- (HMDCameraIDSDeviceConnectionSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device delegate:(id)delegate
{
  delegateCopy = delegate;
  deviceCopy = device;
  queueCopy = queue;
  dCopy = d;
  v14 = +[HMDIDSServiceManager sharedManager];
  v15 = [v14 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
  v16 = [(HMDCameraIDSDeviceConnectionSender *)self initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy delegate:delegateCopy idsProxyStreamService:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_161388 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_161388, &__block_literal_global_161389);
  }

  v3 = logCategory__hmf_once_v18_161390;

  return v3;
}

void __49__HMDCameraIDSDeviceConnectionSender_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v18_161390;
  logCategory__hmf_once_v18_161390 = v0;
}

@end