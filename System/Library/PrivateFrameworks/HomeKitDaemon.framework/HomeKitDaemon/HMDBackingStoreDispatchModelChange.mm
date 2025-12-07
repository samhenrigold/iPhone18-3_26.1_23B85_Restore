@interface HMDBackingStoreDispatchModelChange
- (HMDBackingStoreDispatchModelChange)initWithModelChange:(id)change;
- (void)main;
@end

@implementation HMDBackingStoreDispatchModelChange

- (void)main
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    modelChange = [(HMDBackingStoreDispatchModelChange *)selfCopy modelChange];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = modelChange;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@MODEL CHANGE: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
}

- (HMDBackingStoreDispatchModelChange)initWithModelChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = HMDBackingStoreDispatchModelChange;
  v6 = [(HMDBackingStoreDispatchModelChange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelChange, change);
    v8 = v7;
  }

  return v7;
}

@end