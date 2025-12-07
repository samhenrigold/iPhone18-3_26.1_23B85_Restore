@interface HMDCameraSnapshotSession
+ (id)logCategory;
- (HMDCameraSnapshotSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period streamingTierType:(unint64_t)type cameraLocallyReachable:(BOOL)reachable snapshotForNotification:(BOOL)self0;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)dealloc;
- (void)respondWithPayload:(id)payload error:(id)error;
@end

@implementation HMDCameraSnapshotSession

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  sessionID = [(HMDCameraSnapshotSession *)self sessionID];
  v5 = [v3 initWithName:@"ID" value:sessionID];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)respondWithPayload:(id)payload error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  errorCopy = error;
  sessionMessages = [(HMDCameraSnapshotSession *)self sessionMessages];
  v8 = [sessionMessages count];

  if (v8)
  {
    sessionID = [(HMDCameraSnapshotSession *)self sessionID];
    [sessionID markMilestoneFor:@"SentSnapshotResponse"];

    snapshotMetrics = [(HMDCameraSnapshotSession *)self snapshotMetrics];
    [snapshotMetrics setError:errorCopy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(HMDCameraSnapshotSession *)self sessionMessages];
    v11 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v23 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v19 = self;
            shortDescription = [v15 shortDescription];
            *buf = 138544130;
            v31 = v20;
            v32 = 2112;
            v33 = shortDescription;
            v34 = 2112;
            v35 = payloadCopy;
            v36 = 2112;
            v37 = errorCopy;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Responding to %@ with payload: %@, error: %@", buf, 0x2Au);

            self = v19;
            v13 = v23;
          }

          objc_autoreleasePoolPop(v16);
          [v15 respondWithPayload:payloadCopy error:errorCopy];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v12);
    }

    sessionMessages2 = [(HMDCameraSnapshotSession *)self sessionMessages];
    [sessionMessages2 removeAllObjects];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1039];
  [(HMDCameraSnapshotSession *)self respondWithPayload:0 error:v3];

  v4.receiver = self;
  v4.super_class = HMDCameraSnapshotSession;
  [(HMDCameraSnapshotSession *)&v4 dealloc];
}

- (HMDCameraSnapshotSession)initWithSessionID:(id)d accessory:(id)accessory snapshotGetter:(id)getter message:(id)message waitPeriod:(double)period streamingTierType:(unint64_t)type cameraLocallyReachable:(BOOL)reachable snapshotForNotification:(BOOL)self0
{
  reachableCopy = reachable;
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  accessoryCopy = accessory;
  getterCopy = getter;
  messageCopy = message;
  v32.receiver = self;
  v32.super_class = HMDCameraSnapshotSession;
  v22 = [(HMDCameraSnapshotSession *)&v32 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sessionID, d);
    objc_storeStrong(&v23->_snapshotGetter, getter);
    v33[0] = messageCopy;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v25 = [v24 mutableCopy];
    sessionMessages = v23->_sessionMessages;
    v23->_sessionMessages = v25;

    v27 = [[HMDCameraSnapshotCompletionTimer alloc] initWithSnapshotSession:v23 timeInterval:period];
    snapshotCompletionTimer = v23->_snapshotCompletionTimer;
    v23->_snapshotCompletionTimer = v27;

    v23->_streamingTierType = type;
    v29 = [[HMDCameraSnapshotMetrics alloc] initWithSessionID:dCopy cameraAccessory:accessoryCopy isLocal:reachableCopy snapshotForNotification:notification];
    snapshotMetrics = v23->_snapshotMetrics;
    v23->_snapshotMetrics = v29;
  }

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_118492 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_118492, &__block_literal_global_118493);
  }

  v3 = logCategory__hmf_once_v2_118494;

  return v3;
}

uint64_t __39__HMDCameraSnapshotSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_118494;
  logCategory__hmf_once_v2_118494 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end