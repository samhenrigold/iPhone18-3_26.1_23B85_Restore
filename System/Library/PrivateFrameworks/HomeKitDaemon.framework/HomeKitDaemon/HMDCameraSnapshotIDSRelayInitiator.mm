@interface HMDCameraSnapshotIDSRelayInitiator
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue device:(id)device delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service device:(id)device delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate;
- (void)_callFileTransferFailed:(id)failed;
- (void)_sendData;
- (void)_startDataTransfer;
- (void)dealloc;
- (void)sendData:(id)data;
- (void)sendIDSInvitation;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation HMDCameraSnapshotIDSRelayInitiator

- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_callFileTransferFailed:(id)failed
{
  failedCopy = failed;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];
    dispatch_source_cancel(socketSource2);

    [(HMDCameraSnapshotIDSRelayInitiator *)self setSocketSource:0];
  }

  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [delegate relayInitiator:self didEndIDSSessionWithError:failedCopy];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
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
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v15];
}

- (void)sessionStarted:(id)started
{
  v15 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
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
  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy delegate];
  [delegate relayInitiatorIDSSessionDidStart:selfCopy];

  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy setIdsSessionStarted:1];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _sendData];
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1029];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v13];
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1028];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v13];
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
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

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSRelayInitiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
  [idsSession endSession];

  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
    dispatch_source_cancel(socketSource2);
  }

  v10.receiver = selfCopy;
  v10.super_class = HMDCameraSnapshotIDSRelayInitiator;
  [(HMDCameraSnapshotIDSRelay *)&v10 dealloc];
}

- (void)_startDataTransfer
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [delegate relayInitiatorDidStartDataSend:self];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    data = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy data];
    *buf = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = [data length];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Total number of bytes to send: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
  socket = [idsSession socket];
  workQueue2 = [(HMDCameraSnapshotIDSRelay *)selfCopy workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, workQueue2);
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy setSocketSource:v13];

  objc_initWeak(buf, selfCopy);
  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__HMDCameraSnapshotIDSRelayInitiator__startDataTransfer__block_invoke;
  handler[3] = &unk_278686B80;
  objc_copyWeak(&v17, buf);
  dispatch_source_set_event_handler(socketSource, handler);

  socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
  dispatch_resume(socketSource2);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __56__HMDCameraSnapshotIDSRelayInitiator__startDataTransfer__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained data];
    if ([v3 length] > 0x3FF)
    {
      v5 = 1024;
    }

    else
    {
      v4 = [v2 data];
      v5 = [v4 length];
    }

    v6 = [v2 idsSession];
    v7 = [v6 socket];
    v8 = [v2 data];
    v9 = send(v7, [v8 bytes], v5, 0);

    v10 = objc_autoreleasePoolPush();
    v11 = v2;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9 == -1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v24;
        v28 = 2048;
        v29 = v5;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send the data of size %tu", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v25 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1025];
      [v11 _callFileTransferFailed:v25];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v14;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sent %lu bytes", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [v11 data];
      [v15 replaceBytesInRange:0 withBytes:v9 length:{0, 0}];

      v16 = [v11 data];
      v17 = [v16 length];

      if (!v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v11;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@File transfer is complete with total transferred bytes", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [v19 delegate];
        [v22 relayInitiatorDidSendDataSuccessfully:v19];

        v23 = [v19 socketSource];
        dispatch_source_cancel(v23);

        [v19 setSocketSource:0];
      }
    }
  }
}

- (void)sendIDSInvitation
{
  v39[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsStreamService = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
  accounts = [idsStreamService accounts];

  if ([accounts count] && (objc_msgSend(accounts, "anyObject"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *MEMORY[0x277D18950];
    v38[0] = *MEMORY[0x277D18958];
    v38[1] = v8;
    v39[0] = &unk_283E74E58;
    v39[1] = MEMORY[0x277CBEC28];
    v38[2] = *MEMORY[0x277D18940];
    v39[2] = &unk_283E74E70;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    idsStreamService2 = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
    device = [(HMDCameraSnapshotIDSRelayInitiator *)self device];
    v12 = [idsStreamService2 hmd_idsSessionWithAccount:v7 device:device options:v9];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setIdsSession:v12];

    idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)self idsSession];
    workQueue2 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
    [idsSession setDelegate:self queue:workQueue2];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      idsSession2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
      device2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy device];
      shortDescription = [device2 shortDescription];
      *buf = 138544130;
      v31 = v18;
      v32 = 2112;
      v33 = idsSession2;
      v34 = 2112;
      v35 = shortDescription;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    sessionID = [(HMDCameraSnapshotIDSRelay *)selfCopy sessionID];
    uUIDString = [sessionID UUIDString];
    v29 = uUIDString;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v25 = encodeRootObject();
    idsSession3 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
    [idsSession3 sendInvitationWithData:v25];

    delegate = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy delegate];
    [delegate relayInitiatorDidSendIDSInvitation:selfCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1024];
    [(HMDCameraSnapshotIDSRelayInitiator *)self _callFileTransferFailed:v7];
  }
}

- (void)_sendData
{
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraSnapshotIDSRelayInitiator *)self idsSessionStarted])
  {
    data = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

    if (data)
    {

      [(HMDCameraSnapshotIDSRelayInitiator *)self _startDataTransfer];
    }
  }
}

- (void)sendData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  data = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

  if (data)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *v14 = 138543362;
      *&v14[4] = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Data send already in progress", v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    *v14 = [dataCopy length];
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:8];
    v12 = [v11 mutableCopy];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setData:v12];

    data2 = [(HMDCameraSnapshotIDSRelayInitiator *)self data];
    [data2 appendData:dataCopy];

    [(HMDCameraSnapshotIDSRelayInitiator *)self _sendData];
  }
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service device:(id)device delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HMDCameraSnapshotIDSRelayInitiator;
  v17 = [(HMDCameraSnapshotIDSRelay *)&v20 initWithSessionID:d logIdentifier:identifier workQueue:queue idsStreamService:service];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_device, device);
  }

  return v18;
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue device:(id)device delegate:(id)delegate
{
  delegateCopy = delegate;
  deviceCopy = device;
  queueCopy = queue;
  identifierCopy = identifier;
  dCopy = d;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraSnapshotIDSRelayInitiator *)self initWithSessionID:dCopy logIdentifier:identifierCopy workQueue:queueCopy idsStreamService:v18 device:deviceCopy delegate:delegateCopy];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_252099 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_252099, &__block_literal_global_252100);
  }

  v3 = logCategory__hmf_once_v1_252101;

  return v3;
}

void __49__HMDCameraSnapshotIDSRelayInitiator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_252101;
  logCategory__hmf_once_v1_252101 = v0;
}

@end