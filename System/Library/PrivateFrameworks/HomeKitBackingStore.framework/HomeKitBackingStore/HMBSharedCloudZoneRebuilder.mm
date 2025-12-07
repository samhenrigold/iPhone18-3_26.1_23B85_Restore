@interface HMBSharedCloudZoneRebuilder
+ (id)logCategory;
- (HMBCloudZone)cloudZone;
- (HMBSharedCloudZoneRebuilder)initWithCloudZone:(id)zone;
- (id)logIdentifier;
- (void)handleIdentityLost;
- (void)rebuild;
@end

@implementation HMBSharedCloudZoneRebuilder

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (id)logIdentifier
{
  cloudZone = [(HMBSharedCloudZoneRebuilder *)self cloudZone];
  zoneID = [cloudZone zoneID];
  name = [zoneID name];

  return name;
}

- (void)handleIdentityLost
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HMBSharedCloudZoneRebuilder *)self setRebuildCompleteFuture:v3];

  rebuilderStatus = [(HMBSharedCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState = [rebuilderStatus rebuildState];

  v6 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:1 message:@"Lost key on shared zone."];
  [(HMBSharedCloudZoneRebuilder *)self setRebuilderStatus:v6];

  cloudZone = [(HMBSharedCloudZoneRebuilder *)self cloudZone];
  rebuilderStatus2 = [(HMBSharedCloudZoneRebuilder *)self rebuilderStatus];
  rebuildState2 = [rebuilderStatus2 rebuildState];

  if (rebuildState != rebuildState2)
  {
    delegate = [cloudZone delegate];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Informing delegate we have lost our identity.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (objc_opt_respondsToSelector())
    {
      rebuilderStatus3 = [(HMBSharedCloudZoneRebuilder *)selfCopy rebuilderStatus];
      [delegate cloudZone:cloudZone didChangeRebuildStatus:rebuilderStatus3];
    }
  }

  v16 = [cloudZone leaveCloudShareRequestingNewInvitationToken:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke;
  v21[3] = &unk_2786E13C0;
  v21[4] = self;
  v22 = cloudZone;
  v17 = cloudZone;
  v18 = [v16 addSuccessBlock:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke_10;
  v20[3] = &unk_2786E13E8;
  v20[4] = self;
  v19 = [v16 addFailureBlock:v20];
}

void __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed ourself from share.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 40) cloudDatabase];
  v9 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 40) cloudZoneID];
    [v9 cloudDatabase:v8 didChangeManateeKeysForZoneWithID:v10];
  }
}

void __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke_10(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove self from the share: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)rebuild
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unable to rebuild a shared zone.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (HMBSharedCloudZoneRebuilder)initWithCloudZone:(id)zone
{
  zoneCopy = zone;
  v13.receiver = self;
  v13.super_class = HMBSharedCloudZoneRebuilder;
  v5 = [(HMBSharedCloudZoneRebuilder *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudZone, zoneCopy);
    v7 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:7 message:@"Zone believed to be functional."];
    rebuilderStatus = v6->_rebuilderStatus;
    v6->_rebuilderStatus = v7;
    v9 = v7;

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    rebuildCompleteFuture = v6->_rebuildCompleteFuture;
    v6->_rebuildCompleteFuture = futureWithNoResult;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_3099);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

uint64_t __42__HMBSharedCloudZoneRebuilder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5;
  logCategory__hmf_once_v5 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end