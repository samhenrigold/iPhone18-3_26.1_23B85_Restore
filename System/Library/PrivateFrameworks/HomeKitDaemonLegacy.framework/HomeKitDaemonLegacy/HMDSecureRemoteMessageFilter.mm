@interface HMDSecureRemoteMessageFilter
+ (BOOL)isAllowedMessage:(id)message;
+ (id)logCategory;
- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason;
@end

@implementation HMDSecureRemoteMessageFilter

- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  if (([messageCopy isRemote] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v15 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v15;
    v27 = 2112;
    v28 = messageCopy;
    v16 = "%{public}@Accepting local message: %@";
LABEL_7:
    v17 = v14;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_8;
  }

  name = [messageCopy name];
  v11 = [HMDSecureRemoteMessageFilter isAllowedMessage:name];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = messageCopy;
      v16 = "%{public}@Accepting allowed message: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v17, v18, v16, &v25, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v12);
    v19 = 1;
    goto LABEL_10;
  }

  if ([messageCopy isSecureRemote])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v15 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v15;
    v27 = 2112;
    v28 = messageCopy;
    v16 = "%{public}@Accepting secure remote message: %@";
    goto LABEL_7;
  }

  if (reason)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v24;
      v27 = 2112;
      v28 = messageCopy;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Rejecting insecure remote message: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    *reason = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_10:

  return v19;
}

+ (BOOL)isAllowedMessage:(id)message
{
  v3 = isAllowedMessage__pred_468;
  messageCopy = message;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred_468, &__block_literal_global_471);
  }

  v5 = [isAllowedMessage___allowedMessages_469 containsObject:messageCopy];

  return v5;
}

void __49__HMDSecureRemoteMessageFilter_isAllowedMessage___block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"kAccessHomeInviteRequestKey";
  v4[1] = @"kUpdateHomeInvitationStateInternalRequestKey";
  v4[2] = @"kDismissBulletinInternalRequestKey";
  v4[3] = @"kDismissDialogInternalRequestKey";
  v4[4] = @"kElectDeviceForIDSSessionKey";
  v4[5] = @"kKeyTransferAgentKey";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = isAllowedMessage___allowedMessages_469;
  isAllowedMessage___allowedMessages_469 = v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t132 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t132, &__block_literal_global_460_86637);
  }

  v3 = logCategory__hmf_once_v133;

  return v3;
}

uint64_t __43__HMDSecureRemoteMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v133;
  logCategory__hmf_once_v133 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end