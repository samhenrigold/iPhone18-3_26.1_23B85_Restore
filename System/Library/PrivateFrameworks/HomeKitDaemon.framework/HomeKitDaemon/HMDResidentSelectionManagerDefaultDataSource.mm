@interface HMDResidentSelectionManagerDefaultDataSource
- (HMDResidentSelectionManagerDefaultDataSource)init;
- (NSBackgroundActivityScheduler)autoModeEvaluationScheduler;
- (id)createCoordinationElectionModeWithContext:(id)context;
- (id)createResidentSelectionModeWithType:(unint64_t)type context:(id)context;
- (id)idsServerBagForHome:(id)home;
@end

@implementation HMDResidentSelectionManagerDefaultDataSource

- (id)idsServerBagForHome:(id)home
{
  homeManager = [home homeManager];
  idsServerBag = [homeManager idsServerBag];

  return idsServerBag;
}

- (NSBackgroundActivityScheduler)autoModeEvaluationScheduler
{
  v2 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.homed.HMDResidentSelectionManager"];

  return v2;
}

- (id)createCoordinationElectionModeWithContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v8;
    v13 = 1024;
    residentCapable = [contextCopy residentCapable];
    v15 = 1024;
    isActingAsResident = [contextCopy isActingAsResident];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Current Device resident capable: %d, acting as a resident: %d", &v11, 0x18u);
  }

  objc_autoreleasePoolPop(v5);
  if ([contextCopy residentCapable] && objc_msgSend(contextCopy, "isActingAsResident"))
  {
    v9 = [[HMDResidentSelectionCoordinationElection alloc] initWithContext:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createResidentSelectionModeWithType:(unint64_t)type context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = 0;
  if (type > 1)
  {
    if (type == 3)
    {
      v9 = HMDResidentSelectionAutoMode;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_14;
      }

      v9 = HMDResidentSelectionManualMode;
    }

    v8 = [[v9 alloc] initWithContext:contextCopy];
    goto LABEL_13;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_14;
    }

    v8 = [(HMDResidentSelectionManagerDefaultDataSource *)self createCoordinationElectionModeWithContext:contextCopy];
LABEL_13:
    v7 = v8;
    goto LABEL_14;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = @"unknown";
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = @"unknown";
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@ is not supported.", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v7 = 0;
LABEL_14:

  return v7;
}

- (HMDResidentSelectionManagerDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDResidentSelectionManagerDefaultDataSource;
  return [(HMDResidentSelectionManagerDefaultDataSource *)&v3 init];
}

@end