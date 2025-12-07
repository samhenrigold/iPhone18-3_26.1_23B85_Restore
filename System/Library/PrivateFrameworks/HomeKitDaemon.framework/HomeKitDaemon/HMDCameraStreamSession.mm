@interface HMDCameraStreamSession
+ (id)logCategory;
- (HMDCameraStreamSession)initWithSessionID:(id)d streamingTierType:(unint64_t)type remoteCapabilities:(id)capabilities streamPreference:(id)preference;
- (id)logIdentifier;
- (id)negotiatedParameters;
@end

@implementation HMDCameraStreamSession

- (id)logIdentifier
{
  sessionID = [(HMDCameraStreamSession *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (id)negotiatedParameters
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  protocolParameters = [(HMDCameraStreamSession *)self protocolParameters];
  v5 = [v3 archivedDataWithRootObject:protocolParameters requiringSecureCoding:1 error:0];

  v6 = MEMORY[0x277CCAAB0];
  videoTierParameters = [(HMDCameraStreamSession *)self videoTierParameters];
  v8 = [v6 archivedDataWithRootObject:videoTierParameters requiringSecureCoding:1 error:0];

  v9 = 0;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12[0] = @"kSelectedStreamParameters";
    v12[1] = @"kVideoTierParameters";
    v13[0] = v5;
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  return v9;
}

- (HMDCameraStreamSession)initWithSessionID:(id)d streamingTierType:(unint64_t)type remoteCapabilities:(id)capabilities streamPreference:(id)preference
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  capabilitiesCopy = capabilities;
  preferenceCopy = preference;
  v41.receiver = self;
  v41.super_class = HMDCameraStreamSession;
  v14 = [(HMDCameraStreamSession *)&v41 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionID, d);
    v16 = objc_alloc_init(HMDCameraProtocolParameters);
    protocolParameters = v15->_protocolParameters;
    v15->_protocolParameters = v16;

    v18 = [[HMDStreamingCapabilities alloc] initWithStreamPreference:preferenceCopy];
    streamingCapabilities = v15->_streamingCapabilities;
    v15->_streamingCapabilities = v18;

    [(HMDStreamingCapabilities *)v15->_streamingCapabilities setStreamingTierType:type];
    v20 = [capabilitiesCopy hmf_dataForKey:@"kRemoteStreamCapabilities"];
    if (v20)
    {
      v40 = 0;
      v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v20 error:&v40];
      v22 = v40;
      if (v21)
      {
        [(HMDStreamingCapabilities *)v15->_streamingCapabilities updateWithRemoteSettings:v21];
      }

      else
      {
        v39 = dCopy;
        v23 = objc_autoreleasePoolPush();
        v24 = v15;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v26 = v38 = v23;
          *buf = 138543618;
          v43 = v26;
          v44 = 2112;
          v45 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive remote streaming capabilities from remote capabilities data: %@", buf, 0x16u);

          v23 = v38;
        }

        objc_autoreleasePoolPop(v23);
        dCopy = v39;
      }
    }

    videoPreferences = [preferenceCopy videoPreferences];

    if (videoPreferences)
    {
      videoPreferences2 = [preferenceCopy videoPreferences];
      maximumQuality = [videoPreferences2 maximumQuality];
    }

    else
    {
      maximumQuality = 5;
    }

    v30 = [[HMDCameraVideoTierParameters alloc] initWithSessionID:dCopy streamingTierType:[(HMDStreamingCapabilities *)v15->_streamingCapabilities streamingTierType] maximumQuality:maximumQuality];
    videoTierParameters = v15->_videoTierParameters;
    v15->_videoTierParameters = v30;

    v32 = objc_autoreleasePoolPush();
    v33 = v15;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = v15->_streamingCapabilities;
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Initialized stream session with capabilities: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_258435 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_258435, &__block_literal_global_258436);
  }

  v3 = logCategory__hmf_once_v3_258437;

  return v3;
}

void __37__HMDCameraStreamSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_258437;
  logCategory__hmf_once_v3_258437 = v0;
}

@end