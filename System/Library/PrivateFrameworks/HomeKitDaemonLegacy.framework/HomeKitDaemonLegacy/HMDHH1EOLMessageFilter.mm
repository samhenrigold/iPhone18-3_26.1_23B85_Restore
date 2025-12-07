@interface HMDHH1EOLMessageFilter
+ (BOOL)isAllowedMessage:(id)message;
+ (id)logCategory;
- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason;
@end

@implementation HMDHH1EOLMessageFilter

- (BOOL)acceptMessage:(id)message target:(id)target errorReason:(id *)reason
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  name = [messageCopy name];
  v11 = [HMDHH1EOLMessageFilter isAllowedMessage:name];

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = messageCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting message: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    *reason = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t139 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t139, &__block_literal_global_482);
  }

  v3 = logCategory__hmf_once_v140;

  return v3;
}

uint64_t __37__HMDHH1EOLMessageFilter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v140;
  logCategory__hmf_once_v140 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)isAllowedMessage:(id)message
{
  v3 = isAllowedMessage__pred_476;
  messageCopy = message;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred_476, &__block_literal_global_479);
  }

  v5 = [isAllowedMessage___allowedMessages_477 containsObject:messageCopy];

  return v5;
}

void __43__HMDHH1EOLMessageFilter_isAllowedMessage___block_invoke()
{
  v14[23] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD03B0];
  v14[0] = *MEMORY[0x277CD0090];
  v14[1] = v1;
  v2 = *MEMORY[0x277CD0348];
  v14[2] = *MEMORY[0x277CD01D8];
  v14[3] = v2;
  v3 = *MEMORY[0x277CD00F8];
  v14[4] = *MEMORY[0x277CD01D0];
  v14[5] = v3;
  v4 = *MEMORY[0x277CD03D0];
  v14[6] = *MEMORY[0x277CD03E0];
  v14[7] = v4;
  v5 = *MEMORY[0x277CD1080];
  v14[8] = *MEMORY[0x277CD1070];
  v14[9] = v5;
  v6 = *MEMORY[0x277CD1108];
  v14[10] = *MEMORY[0x277CD1158];
  v14[11] = v6;
  v7 = *MEMORY[0x277CD1180];
  v14[12] = *MEMORY[0x277CD1128];
  v14[13] = v7;
  v8 = *MEMORY[0x277CD1110];
  v14[14] = *MEMORY[0x277CD10F8];
  v14[15] = v8;
  v9 = *MEMORY[0x277CD13E8];
  v14[16] = *MEMORY[0x277CD1178];
  v14[17] = v9;
  v14[18] = *MEMORY[0x277CD1338];
  v14[19] = @"kResetConfigRequestKey";
  v10 = *MEMORY[0x277CD01E0];
  v14[20] = *MEMORY[0x277CCFEE0];
  v14[21] = v10;
  v14[22] = *MEMORY[0x277CD0228];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:23];
  v12 = [v0 setWithArray:v11];
  v13 = isAllowedMessage___allowedMessages_477;
  isAllowedMessage___allowedMessages_477 = v12;
}

@end