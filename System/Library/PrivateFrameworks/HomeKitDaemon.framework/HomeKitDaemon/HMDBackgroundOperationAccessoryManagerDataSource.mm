@interface HMDBackgroundOperationAccessoryManagerDataSource
- (HMDBackgroundOperationAccessoryManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center;
- (id)values;
- (void)_handleAccessoryIsReachable:(id)reachable;
- (void)dealloc;
@end

@implementation HMDBackgroundOperationAccessoryManagerDataSource

- (void)_handleAccessoryIsReachable:(id)reachable
{
  v17 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  object = [reachableCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    shortDescription = [v7 shortDescription];
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = shortDescription;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory became reachable: %@.", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDBackgroundOperationManagerDataSource *)selfCopy notifyDataSourceChanged];
}

- (id)values
{
  v15[1] = *MEMORY[0x277D85DE8];
  owner = [(HMDBackgroundOperationManagerDataSource *)self owner];
  homeManager = [owner homeManager];
  pairedAccessories = [homeManager pairedAccessories];

  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(pairedAccessories, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __58__HMDBackgroundOperationAccessoryManagerDataSource_values__block_invoke;
  v12 = &unk_27867B478;
  v13 = v5;
  v6 = v5;
  [pairedAccessories hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];
  v14 = @"visibleAccessories";
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v9, v10, v11, v12}];

  return v7;
}

void __58__HMDBackgroundOperationAccessoryManagerDataSource_values__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isReachable])
  {
    v3 = *(a1 + 32);
    v4 = [v5 uuid];
    [v3 addObject:v4];
  }
}

- (void)dealloc
{
  notificationCenter = [(HMDBackgroundOperationManagerDataSource *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:0];

  v4.receiver = self;
  v4.super_class = HMDBackgroundOperationAccessoryManagerDataSource;
  [(HMDBackgroundOperationAccessoryManagerDataSource *)&v4 dealloc];
}

- (HMDBackgroundOperationAccessoryManagerDataSource)initWithOperationManager:(id)manager notificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = HMDBackgroundOperationAccessoryManagerDataSource;
  v7 = [(HMDBackgroundOperationManagerDataSource *)&v9 initWithOperationManager:manager notificationCenter:centerCopy];
  if (v7)
  {
    [centerCopy addObserver:v7 selector:sel__handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:0];
  }

  return v7;
}

@end