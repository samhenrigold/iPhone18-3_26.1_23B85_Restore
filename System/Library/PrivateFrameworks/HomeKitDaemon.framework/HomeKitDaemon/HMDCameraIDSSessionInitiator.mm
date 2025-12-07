@interface HMDCameraIDSSessionInitiator
+ (id)logCategory;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue device:(id)device localNetworkConfig:(id)config delegate:(id)delegate;
- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service device:(id)device localNetworkConfig:(id)config delegate:(id)delegate;
- (HMDCameraIDSSessionInitiatorDelegate)delegate;
- (NSNumber)mtu;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)error;
- (void)_callSessionStarted;
- (void)_sendInvitation;
- (void)_startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC;
- (void)dealloc;
- (void)openRelaySession;
- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error;
- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
- (void)startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC;
@end

@implementation HMDCameraIDSSessionInitiator

- (HMDCameraIDSSessionInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callSessionEndedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
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
  delegate = [(HMDCameraIDSSessionInitiator *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionInitiator:selfCopy didEndSessionWithError:errorCopy];
  }
}

- (void)_callSessionStarted
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didSetUp delegate", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraIDSSessionInitiator *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionInitiator:selfCopy didSetUpWithError:0];
  }
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138544130;
    v17 = v14;
    v18 = 2114;
    v19 = endedCopy;
    v20 = 1026;
    reasonCopy = reason;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has ended with reason: %{public}u and error %{public}@", &v16, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:errorCopy];
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:v15];
}

- (void)sessionStarted:(id)started
{
  v15 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = startedCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has started", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sessionID = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
  [sessionID markMilestoneFor:@"IDSSessionStartedOnInitiator"];

  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionStarted];
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v12;
    v15 = 2112;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:0];
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v12;
    v15 = 2112;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraIDSSessionInitiator *)selfCopy _callSessionEndedWithError:0];
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v12;
    v15 = 2114;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %{public}@ has been accepted by: %@, waiting for session to get started", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)packetRelay:(id)relay didStop:(BOOL)stop error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDCameraIDSSessionInitiator_packetRelay_didStop_error___block_invoke;
  block[3] = &unk_278688BD0;
  stopCopy = stop;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

void __58__HMDCameraIDSSessionInitiator_packetRelay_didStop_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay did stop: %@ error: %@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)packetRelay:(id)relay didStart:(BOOL)start error:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDCameraIDSSessionInitiator_packetRelay_didStart_error___block_invoke;
  block[3] = &unk_278688BD0;
  startCopy = start;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(workQueue, block);
}

void __59__HMDCameraIDSSessionInitiator_packetRelay_didStart_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Packet relay did start: %{public}@ error: %{public}@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC
{
  v8 = *&rC;
  audioSocketCopy = audioSocket;
  v11 = *&c;
  socketCopy = socket;
  v76 = *MEMORY[0x277D85DE8];
  configCopy = config;
  networkConfigCopy = networkConfig;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.packet-relay"];
  [(HMDCameraIDSSessionInitiator *)self setPacketRelayTransaction:v17];

  idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
  if (idsSession)
  {
    v18 = objc_alloc_init(MEMORY[0x277CE5710]);
    ipAddress = [configCopy ipAddress];
    [v18 setIp:ipAddress];

    [v18 setIsIPv6:{objc_msgSend(configCopy, "ipv6")}];
    rtpPort = [configCopy rtpPort];
    [v18 setPort:{objc_msgSend(rtpPort, "unsignedShortValue")}];

    v64 = [objc_alloc(MEMORY[0x277CE5718]) initWithIncomingSSRC:v11 acceptPacketType:0];
    v66 = [MEMORY[0x277CE5728] connectionWithSocket:socketCopy remoteAddress:v18 packetFilter:?];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v71 = v24;
      v72 = 1024;
      *v73 = v11;
      *&v73[4] = 2112;
      *&v73[6] = configCopy;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Created video relay connection with SSRC %08x and config: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = objc_alloc_init(MEMORY[0x277CE5710]);
    ipAddress2 = [networkConfigCopy ipAddress];
    [v25 setIp:ipAddress2];

    [v25 setIsIPv6:{objc_msgSend(networkConfigCopy, "ipv6")}];
    rtpPort2 = [networkConfigCopy rtpPort];
    [v25 setPort:{objc_msgSend(rtpPort2, "unsignedShortValue")}];

    v63 = [objc_alloc(MEMORY[0x277CE5718]) initWithIncomingSSRC:v8 acceptPacketType:0];
    v28 = [MEMORY[0x277CE5728] connectionWithSocket:audioSocketCopy remoteAddress:v25 packetFilter:?];
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v71 = v32;
      v72 = 1024;
      *v73 = v8;
      *&v73[4] = 2112;
      *&v73[6] = networkConfigCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Created audio relay connection with SSRC %08x and config: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = MEMORY[0x277CE5728];
    destination = [idsSession destination];
    v35 = [v33 connectionWithIDSDestination:destination];

    v36 = objc_autoreleasePoolPush();
    v37 = v30;
    v38 = HMFGetOSLogHandle();
    v65 = v28;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      destination2 = [idsSession destination];
      *buf = 138543618;
      v71 = v39;
      v72 = 2112;
      *v73 = destination2;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Created IDS relay connection with destination: %@", buf, 0x16u);

      v28 = v65;
    }

    objc_autoreleasePoolPop(v36);
    if (v66 && v28 && v35)
    {
      v41 = objc_alloc(MEMORY[0x277CE5720]);
      v69[0] = v66;
      v69[1] = v28;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      v68 = 0;
      v43 = [v41 initWithConnections:v42 multiplexedConnection:v35 error:&v68];
      v44 = v68;
      [(HMDCameraIDSSessionInitiator *)v37 setPacketRelay:v43];

      packetRelay = [(HMDCameraIDSSessionInitiator *)v37 packetRelay];

      v46 = objc_autoreleasePoolPush();
      v47 = v37;
      v48 = HMFGetOSLogHandle();
      v49 = v48;
      if (packetRelay)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v50;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Starting packet relay", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        packetRelay2 = [(HMDCameraIDSSessionInitiator *)v47 packetRelay];
        [packetRelay2 setDelegate:v47];

        packetRelay3 = [(HMDCameraIDSSessionInitiator *)v47 packetRelay];
        [packetRelay3 start];
      }

      else
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v62;
          v72 = 2112;
          *v73 = v44;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to create video packet relay: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        [(HMDCameraIDSSessionInitiator *)v47 _callSessionEndedWithError:v44];
      }

      v60 = v64;
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      v58 = v37;
      v59 = HMFGetOSLogHandle();
      v60 = v64;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138544130;
        v71 = v61;
        v72 = 2112;
        *v73 = v66;
        *&v73[8] = 2112;
        *&v73[10] = v65;
        v74 = 2112;
        v75 = v35;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to start packet relay with relayConnectionCameraVideo: %@, relayConnectionCameraAudio: %@, relayConnectionIDS: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v57);
      v44 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
      [(HMDCameraIDSSessionInitiator *)v58 _callSessionEndedWithError:v44];
    }
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v56;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot start packet relay because no IDS session exists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v53);
    v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1017];
    [(HMDCameraIDSSessionInitiator *)selfCopy2 _callSessionEndedWithError:v18];
  }
}

- (void)startPacketRelayWithVideoSocket:(int)socket videoNetworkConfig:(id)config cameraVideoSSRC:(unsigned int)c audioSocket:(int)audioSocket audioNetworkConfig:(id)networkConfig cameraAudioSSRC:(unsigned int)rC
{
  v8 = *&rC;
  v9 = *&audioSocket;
  v10 = *&c;
  v12 = *&socket;
  networkConfigCopy = networkConfig;
  configCopy = config;
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraIDSSessionInitiator *)self _startPacketRelayWithVideoSocket:v12 videoNetworkConfig:configCopy cameraVideoSSRC:v10 audioSocket:v9 audioNetworkConfig:networkConfigCopy cameraAudioSSRC:v8];
}

- (void)_sendInvitation
{
  v38 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsStreamService = [(HMDCameraIDSSessionHandler *)self idsStreamService];
  accounts = [idsStreamService accounts];
  anyObject = [accounts anyObject];

  if (anyObject)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:&unk_283E71CC0 forKeyedSubscript:*MEMORY[0x277D18958]];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18950]];
    localNetworkConfig = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
    ipv6 = [localNetworkConfig ipv6];

    if ((ipv6 & 1) == 0)
    {
      [dictionary setObject:&unk_283E71CD8 forKeyedSubscript:*MEMORY[0x277D18948]];
    }

    idsStreamService2 = [(HMDCameraIDSSessionHandler *)self idsStreamService];
    device = [(HMDCameraIDSSessionInitiator *)self device];
    v12 = [idsStreamService2 hmd_idsSessionWithAccount:anyObject device:device options:dictionary];
    [(HMDCameraIDSSessionHandler *)self setIdsSession:v12];

    idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
    workQueue2 = [(HMDCameraIDSSessionHandler *)self workQueue];
    [idsSession setDelegate:self queue:workQueue2];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      idsSession2 = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
      device2 = [(HMDCameraIDSSessionInitiator *)selfCopy device];
      shortDescription = [device2 shortDescription];
      *buf = 138544130;
      v31 = v18;
      v32 = 2112;
      v33 = idsSession2;
      v34 = 2112;
      v35 = shortDescription;
      v36 = 2112;
      v37 = dictionary;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    sessionID = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
    v22SessionID = [sessionID sessionID];
    v29 = v22SessionID;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v25 = encodeRootObject();
    idsSession3 = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
    [idsSession3 sendInvitationWithData:v25];

    sessionID2 = [(HMDCameraIDSSessionHandler *)selfCopy sessionID];
    [sessionID2 markMilestoneFor:@"IDSSessionInvitationSent"];
  }

  else
  {
    dictionary = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1024];
    [(HMDCameraIDSSessionInitiator *)self _callSessionEndedWithError:dictionary];
  }
}

- (void)openRelaySession
{
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraIDSSessionInitiator *)self _sendInvitation];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the IDS session initiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  packetRelay = [(HMDCameraIDSSessionInitiator *)selfCopy packetRelay];
  [packetRelay stop];

  idsSession = [(HMDCameraIDSSessionHandler *)selfCopy idsSession];
  [idsSession endSession];

  v9.receiver = selfCopy;
  v9.super_class = HMDCameraIDSSessionInitiator;
  [(HMDCameraIDSSessionHandler *)&v9 dealloc];
}

- (NSNumber)mtu
{
  workQueue = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localNetworkConfig = [(HMDCameraIDSSessionInitiator *)self localNetworkConfig];
  if ([localNetworkConfig ipv6])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277CCABB0];
  idsSession = [(HMDCameraIDSSessionHandler *)self idsSession];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(idsSession, "MTUForAddressFamily:", v5)}];

  return v8;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue idsStreamService:(id)service device:(id)device localNetworkConfig:(id)config delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  deviceCopy = device;
  configCopy = config;
  delegateCopy = delegate;
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

  if (!serviceCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!deviceCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!configCopy)
  {
LABEL_13:
    v25 = _HMFPreconditionFailure();
    return [(HMDCameraIDSSessionInitiator *)v25 initWithSessionID:v26 workQueue:v27 device:v28 localNetworkConfig:v29 delegate:v30, v31];
  }

  v20 = delegateCopy;
  v32.receiver = self;
  v32.super_class = HMDCameraIDSSessionInitiator;
  v21 = [(HMDCameraIDSSessionHandler *)&v32 initWithSessionID:dCopy workQueue:queueCopy idsStreamService:serviceCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, device);
    objc_storeWeak(&v22->_delegate, v20);
    objc_storeStrong(&v22->_localNetworkConfig, config);
    v23 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v23 registerRemoteRequestHandler:v22 forSessionID:dCopy];
  }

  return v22;
}

- (HMDCameraIDSSessionInitiator)initWithSessionID:(id)d workQueue:(id)queue device:(id)device localNetworkConfig:(id)config delegate:(id)delegate
{
  delegateCopy = delegate;
  configCopy = config;
  deviceCopy = device;
  queueCopy = queue;
  dCopy = d;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraIDSSessionInitiator *)self initWithSessionID:dCopy workQueue:queueCopy idsStreamService:v18 device:deviceCopy localNetworkConfig:configCopy delegate:delegateCopy];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_26670);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

void __43__HMDCameraIDSSessionInitiator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19;
  logCategory__hmf_once_v19 = v0;
}

@end