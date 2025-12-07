@interface HMDXPCEntitlementMessageFilter
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
@end

@implementation HMDXPCEntitlementMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_122655 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_122655, &__block_literal_global_122656);
  }

  v3 = logCategory__hmf_once_v3_122657;

  return v3;
}

uint64_t __45__HMDXPCEntitlementMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_122657;
  logCategory__hmf_once_v3_122657 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  if (messageCopy)
  {
    proxyConnection = [messageCopy proxyConnection];

    if (proxyConnection)
    {
      v11 = [self requiredPolicyOfClass:objc_opt_class() fromPolicies:policiesCopy error:0];
      v12 = v11;
      if (v11)
      {
        entitlements = [v11 entitlements];
        proxyConnection2 = [messageCopy proxyConnection];
        v15 = entitlements & ~[proxyConnection2 entitlements];

        if (!v15)
        {
          v22 = 1;
          goto LABEL_15;
        }

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          shortDescription = [messageCopy shortDescription];
          v21 = HMXPCClientEntitlementsToComponents(v15);
          v28 = 138543874;
          v29 = v19;
          v30 = 2112;
          v31 = shortDescription;
          v32 = 2112;
          v33 = v21;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message, %@, client is missing the following entitlements: %@", &v28, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:80];
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing XPC policy", &v28, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
      }

      v22 = -1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_16:

  return v22;
}

@end