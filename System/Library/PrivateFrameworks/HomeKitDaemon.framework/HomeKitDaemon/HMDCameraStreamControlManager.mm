@interface HMDCameraStreamControlManager
+ (id)logCategory;
- (BOOL)_canReconfigureToHigherTier;
- (HMDCameraStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)service isLocal:(BOOL)local isRelayed:(BOOL)self0;
- (HMDCameraStreamControlManagerDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)logIdentifier;
- (id)managerProtocol;
- (void)_callStreamFirstFrameReceived;
- (void)_callStreamNegotiated:(id)negotiated;
- (void)_callStreamReconfigured;
- (void)_callStreamRemoteConnectionSetup;
- (void)_callStreamStarted;
- (void)_callStreamStoppedWithError:(id)error;
- (void)_cleanUpStreamSessionWithError:(id)error;
- (void)_reportErrorCode:(int64_t)code;
- (void)_reportInternalErrorCode:(int64_t)code;
@end

@implementation HMDCameraStreamControlManager

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraStreamControlManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)_canReconfigureToHigherTier
{
  accessory = [(HMDCameraStreamControlManager *)self accessory];
  manufacturer = [accessory manufacturer];
  v4 = [&unk_283E76598 objectForKeyedSubscript:manufacturer];
  model = [accessory model];
  v6 = [v4 containsObject:model];

  return v6 ^ 1;
}

- (void)_callStreamStoppedWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  sessionID = [(HMDCameraStreamControlManager *)self sessionID];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = sessionID;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stream with session ID %@ stopped with error %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManager:managerProtocol didStopStreamWithSessionID:sessionID error:errorCopy];
  }

  [(HMDCameraStreamControlManager *)selfCopy _cleanUpStreamSessionWithError:errorCopy];
}

- (void)_callStreamReconfigured
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream reconfigured", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManagerDidReconfigureStream:managerProtocol];
  }
}

- (void)_callStreamFirstFrameReceived
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@First frame received", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManagerDidReceiveFirstFrame:managerProtocol];
  }
}

- (void)_callStreamStarted
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream started", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManagerDidStartStream:managerProtocol];
  }
}

- (void)_callStreamRemoteConnectionSetup
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stream remote connection setup", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManagerDidSetUpRemoteConnection:managerProtocol];
  }
}

- (void)_callStreamNegotiated:(id)negotiated
{
  v13 = *MEMORY[0x277D85DE8];
  negotiatedCopy = negotiated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stream negotiated", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  managerProtocol = [(HMDCameraStreamControlManager *)selfCopy managerProtocol];
  delegate = [(HMDCameraStreamControlManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamControlManager:managerProtocol didNegotiateStreamWithSelectedParameters:negotiatedCopy];
  }
}

- (id)managerProtocol
{
  if ([(HMDCameraStreamControlManager *)self conformsToProtocol:&unk_283EE1F00])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_reportInternalErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:code];
  [(HMDCameraStreamControlManager *)self _cleanUpStreamSessionWithError:v4];
}

- (void)_reportErrorCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:code];
  [(HMDCameraStreamControlManager *)self _cleanUpStreamSessionWithError:v4];
}

- (void)_cleanUpStreamSessionWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDCameraStreamControlManager)initWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)service isLocal:(BOOL)local isRelayed:(BOOL)self0
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  serviceCopy = service;
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

  v22 = serviceCopy;
  if (!serviceCopy)
  {
LABEL_13:
    v28 = _HMFPreconditionFailure();
    return +[(HMDCameraStreamControlManager *)v28];
  }

  v31.receiver = self;
  v31.super_class = HMDCameraStreamControlManager;
  v23 = [(HMDCameraStreamControlManager *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_sessionID, d);
    objc_storeStrong(&v24->_streamSnapshotHandler, handler);
    objc_storeStrong(&v24->_workQueue, queue);
    objc_storeWeak(&v24->_delegate, delegateCopy);
    objc_storeWeak(&v24->_accessory, accessoryCopy);
    objc_storeStrong(&v24->_streamManagementService, service);
    v25 = [[HMDCameraStreamMetrics alloc] initWithSessionID:dCopy cameraAccessory:accessoryCopy isLocal:local isRelayed:relayed];
    streamMetrics = v24->_streamMetrics;
    v24->_streamMetrics = v25;
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_216780 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_216780, &__block_literal_global_216781);
  }

  v3 = logCategory__hmf_once_v7_216782;

  return v3;
}

void __44__HMDCameraStreamControlManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_216782;
  logCategory__hmf_once_v7_216782 = v0;
}

@end