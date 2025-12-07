@interface MKFLocalBulletinCameraReachabilityRegistration
+ (id)fetchCameraReachabilityRegistrationForAccessoryUUID:(id)d managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinCameraReachabilityRegistration

+ (id)fetchCameraReachabilityRegistrationForAccessoryUUID:(id)d managedObjectContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = contextCopy;
  v9 = +[MKFLocalBulletinCameraReachabilityRegistration fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", dCopy];
  [v9 setPredicate:dCopy];

  v19 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v19];
  v12 = v19;
  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local camera reachability registration for accessoryUUID %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    firstObject = 0;
  }

  return firstObject;
}

@end