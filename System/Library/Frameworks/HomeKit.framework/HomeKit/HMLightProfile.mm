@interface HMLightProfile
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)object;
- (HMLightProfile)initWithLightProfile:(id)profile;
- (HMLightProfileDelegate)delegate;
- (HMLightProfileSettings)settings;
- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)setNaturalLightingEnabled:(BOOL)enabled shouldRetryOnFailure:(BOOL)failure completion:(id)completion;
- (void)updateSettings:(id)settings withReason:(id)reason;
@end

@implementation HMLightProfile

uint64_t __31___HMLightProfile_lightProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lightProfile];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (HMLightProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lightProfile = [(HMLightProfile *)self lightProfile];
  context = [lightProfile context];

  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchSettingsWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  if (context)
  {
    accessory = [(HMAccessoryProfile *)self accessory];
    home = [accessory home];

    if (home)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObject:self];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__HMLightProfile_fetchSettingsWithCompletion___block_invoke;
      v26[3] = &unk_1E754E280;
      v26[4] = self;
      v27 = context;
      v28 = completionCopy;
      [home fetchSettingsForLightProfiles:v9 withCompletion:v26];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v17;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home is not set on light profile accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      delegateCaller = [context delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [delegateCaller callCompletion:completionCopy obj:0 error:v19];

      home = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v13;
      v31 = 2080;
      v32 = "[HMLightProfile fetchSettingsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, home);
  }
}

void __46__HMLightProfile_fetchSettingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a3;
  v5 = [a2 objectForKey:*(a1 + 32)];
  v6 = [v5 settings];

  if (v6)
  {
    v7 = [*(a1 + 40) delegateCaller];
    v8 = *(a1 + 48);
    v9 = [v5 settings];
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = 0;
LABEL_5:
    [v10 callCompletion:v11 obj:v12 error:v13];

    goto LABEL_6;
  }

  v14 = [v5 error];

  v15 = [*(a1 + 40) delegateCaller];
  v7 = v15;
  v16 = *(a1 + 48);
  if (v14)
  {
    v9 = [v5 error];
    v10 = v7;
    v11 = v16;
    v12 = 0;
    v13 = v9;
    goto LABEL_5;
  }

  [v15 callCompletion:v16 obj:0 error:v17];
LABEL_6:
}

- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lightProfile = [(HMLightProfile *)self lightProfile];
  context = [lightProfile context];

  if (!completionCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v31;
      v40 = 2112;
      brightnessCopy = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  if (context)
  {
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    lightProfile2 = [(HMLightProfile *)self lightProfile];
    profileUniqueIdentifier = [lightProfile2 profileUniqueIdentifier];
    v12 = [v9 initWithTarget:profileUniqueIdentifier];

    v36 = @"HMLightProfile.bmk";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:brightness];
    v37 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMLightProfile.fnlctfbm" destination:v12 payload:v14];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v19;
      v40 = 2048;
      brightnessCopy = brightness;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching natural lighting color temperature for brightness: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __76__HMLightProfile_fetchNaturalLightColorTemperatureForBrightness_completion___block_invoke;
    v33[3] = &unk_1E754E480;
    v33[4] = selfCopy2;
    v34 = context;
    v35 = completionCopy;
    [v15 setResponseHandler:v33];
    lightProfile3 = [(HMLightProfile *)selfCopy2 lightProfile];
    context2 = [lightProfile3 context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v26;
      v40 = 2080;
      brightnessCopy = "[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

void __76__HMLightProfile_fetchNaturalLightColorTemperatureForBrightness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMLightProfile.ctmk"];
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch natural lighting color temperature %@:%@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [*(a1 + 40) delegateCaller];
  [v12 callCompletion:*(a1 + 48) obj:v7 error:v5];
}

- (HMLightProfileSettings)settings
{
  lightProfile = [(HMLightProfile *)self lightProfile];
  settings = [lightProfile settings];

  return settings;
}

- (void)setNaturalLightingEnabled:(BOOL)enabled shouldRetryOnFailure:(BOOL)failure completion:(id)completion
{
  failureCopy = failure;
  enabledCopy = enabled;
  v46 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lightProfile = [(HMLightProfile *)self lightProfile];
  context = [lightProfile context];

  if (!completionCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile setNaturalLightingEnabled:shouldRetryOnFailure:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  if (context)
  {
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    lightProfile2 = [(HMLightProfile *)self lightProfile];
    profileUniqueIdentifier = [lightProfile2 profileUniqueIdentifier];
    v14 = [v11 initWithTarget:profileUniqueIdentifier];

    v40[0] = @"HMLightProfile.snlemk";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v40[1] = @"HMLightProfile.snlesrofk";
    v41[0] = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithBool:failureCopy];
    v41[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v18 = [MEMORY[0x1E69A2A10] messageWithName:@"HMLightProfile.snlem" destination:v14 payload:v17];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFEnabledStatusToString();
      *buf = 138543618;
      v43 = v22;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Setting Natural Lighting to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __76__HMLightProfile_setNaturalLightingEnabled_shouldRetryOnFailure_completion___block_invoke;
    v37[3] = &unk_1E754E480;
    v37[4] = selfCopy2;
    v38 = context;
    v39 = completionCopy;
    [v18 setResponseHandler:v37];
    lightProfile3 = [(HMLightProfile *)selfCopy2 lightProfile];
    context2 = [lightProfile3 context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v18];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v30;
      v44 = 2080;
      v45 = "[HMLightProfile setNaturalLightingEnabled:shouldRetryOnFailure:completion:]";
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __76__HMLightProfile_setNaturalLightingEnabled_shouldRetryOnFailure_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_dataForKey:@"hmlp.sck"];
    v23 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v23];
    v10 = v23;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v15;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully updated settings to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 32) updateSettings:v9 withReason:@"HMLightProfile.snlem"];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode light profile settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v21 = v10;

      v5 = v21;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the natural light setting: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v22 = [*(a1 + 40) delegateCaller];
  [v22 callCompletion:*(a1 + 48) error:v5];
}

- (void)updateSettings:(id)settings withReason:(id)reason
{
  v30 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  reasonCopy = reason;
  lightProfile = [(HMLightProfile *)self lightProfile];
  settings = [lightProfile settings];
  v10 = [settings isEqual:settingsCopy];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      settings2 = [(HMLightProfile *)selfCopy settings];
      *buf = 138544130;
      v23 = v14;
      v24 = 2112;
      v25 = reasonCopy;
      v26 = 2112;
      v27 = settings2;
      v28 = 2112;
      v29 = settingsCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating settings with reason: %@ (%@:%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    lightProfile2 = [(HMLightProfile *)selfCopy lightProfile];
    [lightProfile2 setSettings:settingsCopy];

    lightProfile3 = [(HMLightProfile *)selfCopy lightProfile];
    context = [lightProfile3 context];
    delegateCaller = [context delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__HMLightProfile_updateSettings_withReason___block_invoke;
    v20[3] = &unk_1E754E5C0;
    v20[4] = selfCopy;
    v21 = settingsCopy;
    [delegateCaller invokeBlock:v20];
  }
}

void __44__HMLightProfile_updateSettings_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightProfile:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    settings = [v6 settings];
    settings2 = [(HMLightProfile *)self settings];
    v9 = [settings2 isEqual:settings];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        lightProfile = [(HMLightProfile *)selfCopy lightProfile];
        settings3 = [lightProfile settings];
        [v6 settings];
        v16 = v23 = v10;
        *buf = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = settings3;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating settings because of merge: %@ to %@ ", buf, 0x20u);

        v10 = v23;
      }

      objc_autoreleasePoolPop(v10);
      lightProfile2 = [(HMLightProfile *)selfCopy lightProfile];
      [lightProfile2 setSettings:settings];

      lightProfile3 = [(HMLightProfile *)selfCopy lightProfile];
      context = [lightProfile3 context];
      delegateCaller = [context delegateCaller];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __37__HMLightProfile_mergeFromNewObject___block_invoke;
      v24[3] = &unk_1E754E5C0;
      v24[4] = selfCopy;
      v25 = settings;
      [delegateCaller invokeBlock:v24];
    }

    v21 = v9 ^ 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __37__HMLightProfile_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightProfile:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
}

- (HMLightProfile)initWithLightProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HMLightProfile;
  v5 = [(HMAccessoryProfile *)&v10 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    profileUniqueIdentifier = [profileCopy profileUniqueIdentifier];
    uUIDString = [profileUniqueIdentifier UUIDString];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = uUIDString;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_65266 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_65266, &__block_literal_global_65267);
  }

  v3 = logCategory__hmf_once_v17_65268;

  return v3;
}

uint64_t __29__HMLightProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_65268;
  logCategory__hmf_once_v17_65268 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end