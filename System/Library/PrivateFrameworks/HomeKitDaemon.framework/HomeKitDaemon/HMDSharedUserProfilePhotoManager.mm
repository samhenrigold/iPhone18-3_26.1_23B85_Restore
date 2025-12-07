@interface HMDSharedUserProfilePhotoManager
+ (id)logCategory;
- (HMDSharedUserProfilePhotoManager)initWithCloudTransform:(id)transform delegate:(id)delegate;
- (HMDSharedUserProfilePhotoManagerDelegate)delegate;
- (void)configure;
- (void)didInsertOrUpdateModel:(id)model changedProperties:(id)properties;
@end

@implementation HMDSharedUserProfilePhotoManager

- (HMDSharedUserProfilePhotoManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didInsertOrUpdateModel:(id)model changedProperties:(id)properties
{
  v33 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  v8 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification about modified shared profile photo: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    workingStoreHomeMember = [v10 workingStoreHomeMember];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = workingStoreHomeMember;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@updating member %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegate = [(HMDSharedUserProfilePhotoManager *)v17 delegate];
    idsMergeIdentifier = [workingStoreHomeMember idsMergeIdentifier];
    v22 = [delegate userWithMergeID:idsMergeIdentifier];

    if (!v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v17;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v26;
        v29 = 2112;
        v30 = 0;
        v31 = 2112;
        v32 = workingStoreHomeMember;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Found no user %@ for member: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
    }

    [v22 sendSharedUserProfileMetadataUpdatedMessage];
  }
}

- (void)configure
{
  v6[1] = *MEMORY[0x277D85DE8];
  cloudTransform = [(HMDSharedUserProfilePhotoManager *)self cloudTransform];
  v4 = +[MKFCKSharedUserPhoto entity];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [cloudTransform registerCloudChangeListener:self forEntities:v5];
}

- (HMDSharedUserProfilePhotoManager)initWithCloudTransform:(id)transform delegate:(id)delegate
{
  transformCopy = transform;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HMDSharedUserProfilePhotoManager;
  v9 = [(HMDSharedUserProfilePhotoManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudTransform, transform);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_127654 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_127654, &__block_literal_global_127655);
  }

  v3 = logCategory__hmf_once_v5_127656;

  return v3;
}

void __47__HMDSharedUserProfilePhotoManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_127656;
  logCategory__hmf_once_v5_127656 = v0;
}

@end