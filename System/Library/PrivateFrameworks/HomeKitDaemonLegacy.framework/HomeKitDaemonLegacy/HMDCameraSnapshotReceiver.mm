@interface HMDCameraSnapshotReceiver
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)device;
- (id)logIdentifier;
- (void)_sendConfirmationToResident:(id)resident;
- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler;
- (void)_sendRequestWithTierType:(unint64_t)type toResident:(id)resident;
@end

@implementation HMDCameraSnapshotReceiver

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  nameCopy = name;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  residentMessageHandler = [(HMDCameraSnapshotReceiver *)self residentMessageHandler];
  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
  uniqueIdentifier = [(HMDCameraSnapshotReceiver *)self uniqueIdentifier];
  remoteDevice = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  workQueue2 = [(HMDCameraSnapshotReceiver *)self workQueue];
  [residentMessageHandler sendMessageWithName:nameCopy cameraSessionID:sessionID payload:payloadCopy target:uniqueIdentifier device:remoteDevice responseQueue:workQueue2 responseHandler:handlerCopy];
}

- (void)_sendConfirmationToResident:(id)resident
{
  v20 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
    *buf = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = sessionID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Informing the resident that image download task is completed for session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sessionID2 = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
  v11SessionID = [sessionID2 sessionID];
  v15 = v11SessionID;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  [(HMDCameraSnapshotReceiver *)selfCopy _sendMessageWithName:@"kTakeSnapshotRemoteReceivedKey" payload:v13 responseHandler:residentCopy];
}

- (void)_sendRequestWithTierType:(unint64_t)type toResident:(id)resident
{
  v22 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Relaying request to resident to take image snapshot", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionID = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
  v13SessionID = [sessionID sessionID];
  [dictionary setObject:v13SessionID forKeyedSubscript:@"kCameraSessionID"];

  sessionID2 = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
  hostProcessBundleIdentifier = [sessionID2 hostProcessBundleIdentifier];
  [dictionary setObject:hostProcessBundleIdentifier forKeyedSubscript:@"kCameraSessionApplicationID"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [dictionary setObject:v17 forKeyedSubscript:@"kCameraStreamingTierType"];

  sessionID3 = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
  snapshotCharacteristicEventUUID = [sessionID3 snapshotCharacteristicEventUUID];
  [dictionary setObject:snapshotCharacteristicEventUUID forKeyedSubscript:@"kCameraProactiveSessionID"];

  [(HMDCameraSnapshotReceiver *)selfCopy _sendMessageWithName:@"kTakeSnapshotRemoteRequestKey" payload:dictionary responseHandler:residentCopy];
}

- (HMDCameraSnapshotReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)device
{
  dCopy = d;
  obj = queue;
  queueCopy = queue;
  accessoryCopy = accessory;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  handlerCopy = handler;
  handlerCopy2 = handler;
  messageHandlerCopy = messageHandler;
  messageHandlerCopy2 = messageHandler;
  deviceCopy = device;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!queueCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!accessoryCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!identifierCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!handlerCopy2)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!messageHandlerCopy2)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = deviceCopy;
  if (!deviceCopy)
  {
LABEL_17:
    v27 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotReceiver *)v27];
  }

  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotReceiver;
  v24 = [(HMDCameraSnapshotReceiver *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionID, d);
    objc_storeWeak(&v25->_accessory, accessoryCopy);
    objc_storeStrong(&v25->_workQueue, obj);
    objc_storeStrong(&v25->_uniqueIdentifier, identifierCopy);
    objc_storeStrong(&v25->_snapshotRequestHandler, handlerCopy);
    objc_storeStrong(&v25->_residentMessageHandler, messageHandlerCopy);
    objc_storeStrong(&v25->_remoteDevice, device);
  }

  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_122308 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_122308, &__block_literal_global_122309);
  }

  v3 = logCategory__hmf_once_v3_122310;

  return v3;
}

uint64_t __40__HMDCameraSnapshotReceiver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_122310;
  logCategory__hmf_once_v3_122310 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end