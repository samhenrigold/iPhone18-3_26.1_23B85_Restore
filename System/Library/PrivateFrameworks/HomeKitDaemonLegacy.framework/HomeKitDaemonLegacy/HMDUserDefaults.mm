@interface HMDUserDefaults
+ (id)logCategory;
+ (id)protectedUserDefaults;
- (HMDUserDefaults)initWithSuiteName:(id)name;
- (void)migrateProtectedKeys;
- (void)migrateProtectedKeys:(id)keys;
@end

@implementation HMDUserDefaults

- (void)migrateProtectedKeys:(id)keys
{
  v32 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = keysCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138543618;
    v20 = v7;
    v21 = standardUserDefaults;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [standardUserDefaults objectForKey:{v11, v20}];
        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v16 = v8;
            v17 = v9;
            v19 = v18 = self;
            *buf = v20;
            v28 = v19;
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Migrating key: %@", buf, 0x16u);

            self = v18;
            v9 = v17;
            v8 = v16;
            standardUserDefaults = v21;
          }

          objc_autoreleasePoolPop(v13);
          [standardUserDefaults removeObjectForKey:v11];
          [(HMDUserDefaults *)selfCopy setObject:v12 forKey:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)migrateProtectedKeys
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"HMDHomeManagerHomesAwaitingHH2AutoAcceptKey";
  v4[1] = @"HMDHomeManagerSharedHomesNotYetMigratedKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  [(HMDUserDefaults *)self migrateProtectedKeys:v3];
}

- (HMDUserDefaults)initWithSuiteName:(id)name
{
  v6.receiver = self;
  v6.super_class = HMDUserDefaults;
  v3 = [(HMDUserDefaults *)&v6 initWithSuiteName:name];
  v4 = v3;
  if (v3)
  {
    [(HMDUserDefaults *)v3 migrateProtectedKeys];
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_165299 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_165299, &__block_literal_global_11_165300);
  }

  v3 = logCategory__hmf_once_v4_165301;

  return v3;
}

uint64_t __30__HMDUserDefaults_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_165301;
  logCategory__hmf_once_v4_165301 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)protectedUserDefaults
{
  if (protectedUserDefaults__hmf_once_t0 != -1)
  {
    dispatch_once(&protectedUserDefaults__hmf_once_t0, &__block_literal_global_165306);
  }

  v3 = protectedUserDefaults__hmf_once_v1;

  return v3;
}

uint64_t __40__HMDUserDefaults_protectedUserDefaults__block_invoke()
{
  v0 = [[HMDUserDefaults alloc] initWithSuiteName:@"HomeKit"];
  v1 = protectedUserDefaults__hmf_once_v1;
  protectedUserDefaults__hmf_once_v1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end