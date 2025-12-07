@interface HMDXPCiCloudSwitchMessageFilter
+ (BOOL)isHomeiCloudSwitchEnabled;
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
+ (void)setHomeiCloudSwitchEnabledOverride:(BOOL)override;
+ (void)stopOverridingHomeiCloudSwitchEnabled;
@end

@implementation HMDXPCiCloudSwitchMessageFilter

+ (BOOL)isHomeiCloudSwitchEnabled
{
  v2 = +[HMDDemoModeManagerDataSource defaultDataSource];
  isDemoModeV2WithoutCKEnabled = [v2 isDemoModeV2WithoutCKEnabled];

  if (isDemoModeV2WithoutCKEnabled)
  {
    return 1;
  }

  v5 = homeiCloudSwitchEnabledOverrideNumber;
  if (homeiCloudSwitchEnabledOverrideNumber)
  {

    return [v5 BOOLValue];
  }

  else
  {
    v6 = +[HMDAppleAccountSettings sharedSettings];
    isHomeEnabled = [v6 isHomeEnabled];

    return isHomeEnabled;
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_115329 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_115329, &__block_literal_global_115330);
  }

  v3 = logCategory__hmf_once_v7_115331;

  return v3;
}

void __46__HMDXPCiCloudSwitchMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_115331;
  logCategory__hmf_once_v7_115331 = v0;
}

+ (void)stopOverridingHomeiCloudSwitchEnabled
{
  v2 = homeiCloudSwitchEnabledOverrideNumber;
  homeiCloudSwitchEnabledOverrideNumber = 0;
}

+ (void)setHomeiCloudSwitchEnabledOverride:(BOOL)override
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:override];
  v4 = homeiCloudSwitchEnabledOverrideNumber;
  homeiCloudSwitchEnabledOverrideNumber = v3;
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  if (!messageCopy)
  {
    _HMFPreconditionFailure();
LABEL_28:
    _HMFPreconditionFailure();
  }

  v10 = policiesCopy;
  if (!policiesCopy)
  {
    goto LABEL_28;
  }

  proxyConnection = [messageCopy proxyConnection];

  if (!proxyConnection)
  {
    v12 = 0;
    goto LABEL_26;
  }

  if (([self isHomeiCloudSwitchEnabled] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CD00D8];
    v46[0] = &unk_283E72B90;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v15 = [v13 hmPrivateErrorWithCode:2013 userInfo:v14];

    v16 = [self requiredPolicyOfClass:objc_opt_class() fromPolicies:v10 error:0];
    if (!v16)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v40 = v25;
        v41 = 2112;
        v42 = shortDescription;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Rejecting message because iCloud switch is disabled and no explicit policy exists: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      if (error)
      {
        v27 = v15;
        *error = v15;
      }

      v12 = -1;
      goto LABEL_25;
    }

    proxyConnection2 = [messageCopy proxyConnection];
    processInfo = [proxyConnection2 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifiers = [v16 bundleIdentifiers];
      v21 = [bundleIdentifiers containsObject:bundleIdentifier];

      if (v21)
      {
        v12 = 1;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [messageCopy shortDescription];
        v32 = v38 = v28;
        *buf = 138543874;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        v43 = 2112;
        v44 = bundleIdentifier;
        v33 = "%{public}@Rejecting message because iCloud switch is disabled and bundle identifier is not allowed: %@ / %@";
        v34 = v30;
        v35 = 32;
        goto LABEL_20;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [messageCopy shortDescription];
        v32 = v38 = v28;
        *buf = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        v33 = "%{public}@Rejecting message because iCloud switch is disabled and no bundle identifier was found: %@";
        v34 = v30;
        v35 = 22;
LABEL_20:
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);

        v28 = v38;
      }
    }

    objc_autoreleasePoolPop(v28);
    if (error)
    {
      v36 = v15;
      *error = v15;
    }

    v12 = -1;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_26:

  return v12;
}

@end