@interface HMDAudioStreamInterfaceDataSource
+ (id)logCategory;
- (BOOL)isMuted;
- (void)createPHASEEngineAndControllerForStreamToken:(int64_t)token completion:(id)completion;
- (void)setAudioSessionPropertiesWithShouldAllowSystemSounds:(BOOL)sounds hostProcessBundleIdentifier:(id)identifier;
- (void)setMuted:(BOOL)muted;
@end

@implementation HMDAudioStreamInterfaceDataSource

+ (id)logCategory
{
  if (logCategory__hmf_once_t5 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5, &__block_literal_global_3010);
  }

  v3 = logCategory__hmf_once_v6;

  return v3;
}

uint64_t __48__HMDAudioStreamInterfaceDataSource_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6;
  logCategory__hmf_once_v6 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)createPHASEEngineAndControllerForStreamToken:(int64_t)token completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot create PHASE engine and controller on unsupported platform", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(completionCopy + 2))(completionCopy, 0, 0, v10);
}

- (void)setAudioSessionPropertiesWithShouldAllowSystemSounds:(BOOL)sounds hostProcessBundleIdentifier:(id)identifier
{
  soundsCopy = sounds;
  v31[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (isAppleTV())
  {
    v8 = @"MediaPlayback";
  }

  else
  {
    v8 = *MEMORY[0x277D27078];
  }

  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277D271A8]];
  if (isAppleTV())
  {
    v9 = @"Default";
  }

  else
  {
    v9 = *MEMORY[0x277D270C8];
  }

  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D271B0]];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:soundsCopy];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D271A0]];

  processInfo = [MEMORY[0x277D0F8E0] processInfo];
  v12 = processInfo;
  if (processInfo)
  {
    objc_msgSend_auditToken(processInfo);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:32];
  v14 = *MEMORY[0x277D27380];
  v29[0] = *MEMORY[0x277D27378];
  v29[1] = v14;
  v30[0] = v13;
  v30[1] = identifierCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v31[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D27270]];

  v27[0] = @"kAUVoiceIOProperty_OperationMode";
  v27[1] = @"AVAudioClientBatchMXPropertiesKey";
  v28[0] = &unk_286627448;
  v28[1] = dictionary;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v21;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Setting audio session properties: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [MEMORY[0x277CE56E0] setAudioSessionProperties:v17];
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v32 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMFBooleanToString();
      *buf = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting AVAudioClient audio muted to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [MEMORY[0x277CE56E0] setMicrophoneMuted:mutedCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMFBooleanToString();
      *buf = 138543618;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting AVSystemController audio muted to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:mutedCopy];
    v17 = *MEMORY[0x277D26DF0];
    v25 = 0;
    v18 = [mEMORY[0x277D26E58] setAttribute:v16 forKey:v17 error:&v25];
    v19 = v25;

    if ((v18 & 1) == 0)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy2;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMFBooleanToString();
        *buf = 138543874;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to set AVSystemController audio muted to %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }
}

- (BOOL)isMuted
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v2 = MEMORY[0x277CE56E0];

    return [v2 isMicrophoneMuted];
  }

  else
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v5 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26DF0]];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }
}

@end