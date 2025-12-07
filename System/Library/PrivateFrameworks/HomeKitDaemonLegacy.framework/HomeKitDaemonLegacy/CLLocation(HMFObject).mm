@interface CLLocation(HMFObject)
+ (NSString)shortDescription;
+ (id)logCategory;
- (id)attributeDescriptions;
- (id)shortDescription;
- (uint64_t)isLocationSimulatedBasedOnCarPlay;
- (uint64_t)isSimulated;
@end

@implementation CLLocation(HMFObject)

- (uint64_t)isLocationSimulatedBasedOnCarPlay
{
  v35 = *MEMORY[0x277D85DE8];
  timestamp = [self timestamp];

  if (timestamp)
  {
    v3 = +[HMDLocation sharedManager];
    isCarPlayConnected = [v3 isCarPlayConnected];

    if (isCarPlayConnected)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@CarPlay session is connected right now. Trusting this location", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      return 0;
    }

    v14 = +[HMDLocation sharedManager];
    lastCarPlaySessionDisconnectionTimeStamp = [v14 lastCarPlaySessionDisconnectionTimeStamp];

    if (lastCarPlaySessionDisconnectionTimeStamp)
    {
      timestamp2 = [self timestamp];
      [timestamp2 timeIntervalSinceDate:lastCarPlaySessionDisconnectionTimeStamp];
      v18 = fabs(v17);

      if (v18 <= 300.0 || fabs(v18 + -300.0) < 2.22044605e-16)
      {
        v9 = 0;
LABEL_19:

        return v9;
      }

      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        timestamp3 = [selfCopy2 timestamp];
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v27 = 138544130;
        v28 = v22;
        v29 = 2112;
        v30 = lastCarPlaySessionDisconnectionTimeStamp;
        v31 = 2112;
        v32 = timestamp3;
        v33 = 2112;
        v34 = v24;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@It was a while between disconnecting the CarPlay session and when this location was determined. Considering this location as simulated. Last active CarPlay session: [%@], location timestamp: [%@], timeDiff: %@", &v27, 0x2Au);

LABEL_17:
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@We do not know whether there was any active car play session in the past from last homed boot. Considering this location as simulated", &v27, 0xCu);
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v19);
    v9 = 1;
    goto LABEL_19;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@CLLocation timestamp is nil. We don't know whether we can trust it. Considering this location as simulated", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  return 1;
}

- (uint64_t)isSimulated
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"allowLocationSimulation"];
  bOOLValue = [v3 BOOLValue];

  if (!bOOLValue)
  {
    sourceInformation = [self sourceInformation];
    v11 = objc_autoreleasePoolPush();
    if (sourceInformation)
    {
      if ([sourceInformation isSimulatedBySoftware])
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v20 = 138543362;
          v21 = v15;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@CLLocation is simulated by the software", &v20, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        isLocationSimulatedBasedOnCarPlay = 1;
        goto LABEL_15;
      }

      if ([sourceInformation isProducedByAccessory])
      {
        isLocationSimulatedBasedOnCarPlay = [self isLocationSimulatedBasedOnCarPlay];
LABEL_15:
        objc_autoreleasePoolPop(v11);
LABEL_17:

        return isLocationSimulatedBasedOnCarPlay;
      }
    }

    else
    {
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@CLLocation does not contain the location source information", &v20, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v11);
    isLocationSimulatedBasedOnCarPlay = 0;
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not checking for location simulation due to override", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

- (id)attributeDescriptions
{
  v24[5] = *MEMORY[0x277D85DE8];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [self coordinate];
  v23 = [v4 numberWithDouble:?];
  v22 = [v3 initWithName:@"Latitude" value:v23 options:0 formatter:defaultFormatter];
  v24[0] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [self coordinate];
  v8 = [v6 numberWithDouble:v7];
  v9 = [v5 initWithName:@"Longitude" value:v8 options:0 formatter:defaultFormatter];
  v24[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = MEMORY[0x277CCABB0];
  [self horizontalAccuracy];
  v12 = [v11 numberWithDouble:?];
  v13 = [v10 initWithName:@"Horizontal Accuracy" value:v12 options:0 formatter:defaultFormatter];
  v24[2] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  timestamp = [self timestamp];
  v16 = [v14 initWithName:@"Timestamp" value:timestamp options:0 formatter:defaultFormatter];
  v24[3] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isSimulated")}];
  v19 = [v17 initWithName:@"Simulated" value:v18 options:0 formatter:defaultFormatter];
  v24[4] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];

  return v20;
}

- (id)shortDescription
{
  v1 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v3 = [v1 stringWithFormat:@"<%@>", shortDescription];

  return v3;
}

+ (NSString)shortDescription
{
  v1 = objc_opt_class();

  return NSStringFromClass(v1);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_189039 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_189039, &__block_literal_global_189040);
  }

  v1 = logCategory__hmf_once_v1_189041;

  return v1;
}

@end