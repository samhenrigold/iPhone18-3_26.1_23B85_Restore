@interface HMDCameraRemoteStreamSession
+ (id)logCategory;
- (HMDCameraRemoteStreamSession)initWithSessionID:(id)d reachabilityPath:(unint64_t)path streamSender:(id)sender streamReceiver:(id)receiver remoteCapabilities:(id)capabilities streamPreference:(id)preference;
- (NSString)stateDescription;
- (id)logIdentifier;
- (void)updateState:(int64_t)state;
@end

@implementation HMDCameraRemoteStreamSession

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (NSString)stateDescription
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = 1;
  do
  {
    if ([(HMDCameraRemoteStreamSession *)self containsState:v4])
    {
      v5 = HMDCameraRemoteStreamSessionStateAsString(v4);
      [array addObject:v5];
    }

    v6 = v4 >= 5;
    v4 *= 2;
  }

  while (!v6);
  v7 = [array componentsJoinedByString:{@", "}];

  return v7;
}

- (void)updateState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  [(HMDCameraRemoteStreamSession *)self setStreamState:[(HMDCameraRemoteStreamSession *)self streamState]| state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDCameraRemoteStreamSessionStateAsString(state);
    stateDescription = [(HMDCameraRemoteStreamSession *)selfCopy stateDescription];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = stateDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated with state %@ to %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

- (HMDCameraRemoteStreamSession)initWithSessionID:(id)d reachabilityPath:(unint64_t)path streamSender:(id)sender streamReceiver:(id)receiver remoteCapabilities:(id)capabilities streamPreference:(id)preference
{
  senderCopy = sender;
  receiverCopy = receiver;
  preferenceCopy = preference;
  capabilitiesCopy = capabilities;
  dCopy = d;
  v20 = isWatch();
  v21 = 4;
  if (path != 3)
  {
    v21 = 1;
  }

  if (path == 2)
  {
    v21 = 3;
  }

  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v25.receiver = self;
  v25.super_class = HMDCameraRemoteStreamSession;
  v23 = [(HMDCameraStreamSession *)&v25 initWithSessionID:dCopy streamingTierType:v22 remoteCapabilities:capabilitiesCopy streamPreference:preferenceCopy];

  if (v23)
  {
    objc_storeStrong(&v23->_streamSender, sender);
    objc_storeStrong(&v23->_streamReceiver, receiver);
    v23->_streamState = 0;
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_95188 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_95188, &__block_literal_global_95189);
  }

  v3 = logCategory__hmf_once_v2_95190;

  return v3;
}

uint64_t __43__HMDCameraRemoteStreamSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_95190;
  logCategory__hmf_once_v2_95190 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end