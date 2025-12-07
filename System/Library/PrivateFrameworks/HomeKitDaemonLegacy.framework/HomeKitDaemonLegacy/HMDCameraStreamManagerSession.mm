@interface HMDCameraStreamManagerSession
+ (id)logCategory;
- (BOOL)canStartWithError:(id *)error;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period;
- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager streamSetupTimer:(id)timer;
- (id)logIdentifier;
@end

@implementation HMDCameraStreamManagerSession

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamManagerSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)canStartWithError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  destinationID = [(HMDCameraStreamManagerSession *)self destinationID];

  if (!destinationID)
  {
    return 1;
  }

  v6 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v6 isResidentCapable];

  if (!isResidentCapable)
  {
    return 1;
  }

  v8 = +[HMDCameraRemoteStreamTracker sharedTracker];
  v9 = [v8 startTrackingStreamSession:self];

  if (v9)
  {
    return 1;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = selfCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream tracker cannot start stream session: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (!error)
  {
    return 0;
  }

  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1018];
  v16 = v15;
  result = 0;
  *error = v15;
  return result;
}

- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager streamSetupTimer:(id)timer
{
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  managerCopy = manager;
  timerCopy = timer;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!managerCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v17 = timerCopy;
  if (timerCopy)
  {
    v36.receiver = self;
    v36.super_class = HMDCameraStreamManagerSession;
    v18 = [(HMDCameraStreamManagerSession *)&v36 init];
    sessionID = v18->_sessionID;
    v18->_sessionID = dCopy;
    v20 = dCopy;

    v21 = objc_msgSend_copy(iDCopy);
    destinationID = v18->_destinationID;
    v18->_destinationID = v21;

    streamClientConnection = v18->_streamClientConnection;
    v18->_streamClientConnection = connectionCopy;
    v24 = connectionCopy;

    streamControlManager = v18->_streamControlManager;
    v18->_streamControlManager = managerCopy;
    v26 = managerCopy;

    streamSetupTimer = v18->_streamSetupTimer;
    v18->_streamSetupTimer = v17;

    return v18;
  }

LABEL_7:
  v29 = _HMFPreconditionFailure();
  return [(HMDCameraStreamManagerSession *)v29 initWithSessionID:v30 destinationID:v31 streamClientConnection:v32 streamControlManager:v33 setupWaitPeriod:v34, v35];
}

- (HMDCameraStreamManagerSession)initWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period
{
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  managerCopy = manager;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  v16 = managerCopy;
  if (!managerCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (period > 0.0)
  {
    v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:period];
    v18 = [(HMDCameraStreamManagerSession *)self initWithSessionID:dCopy destinationID:iDCopy streamClientConnection:connectionCopy streamControlManager:v16 streamSetupTimer:v17];

    return v18;
  }

LABEL_7:
  v20 = _HMFPreconditionFailure();
  return +[(HMDCameraStreamManagerSession *)v20];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_6046 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_6046, &__block_literal_global_6047);
  }

  v3 = logCategory__hmf_once_v2_6048;

  return v3;
}

uint64_t __44__HMDCameraStreamManagerSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_6048;
  logCategory__hmf_once_v2_6048 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end