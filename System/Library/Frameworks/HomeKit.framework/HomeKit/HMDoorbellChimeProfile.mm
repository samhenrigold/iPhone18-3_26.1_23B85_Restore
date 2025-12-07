@interface HMDoorbellChimeProfile
+ (id)logCategory;
- (HMDoorbellChimeProfile)initWithDoorbellChimeProfile:(id)profile;
- (HMDoorbellChimeProfileDelegate)delegate;
- (void)didReceiveDoorbellChimeMessage:(id)message;
- (void)setDelegate:(id)delegate;
@end

@implementation HMDoorbellChimeProfile

uint64_t __38___HMDoorbellChimeProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3;
  logCategory__hmf_once_v3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)didReceiveDoorbellChimeMessage:(id)message
{
  v64 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = messagePayload;
  if (messagePayload)
  {
    v7 = [messagePayload hmf_numberForKey:@"HM.doorbell.chime.mode"];
    v8 = [v6 hmf_dateForKey:@"HM.doorbell.chime.date"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v7 && v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v59 = v13;
        v60 = 2048;
        integerValue = [v7 integerValue];
        v62 = 2112;
        v63 = v8;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Received message to chime (mode %ld) on %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      integerValue2 = [v7 integerValue];
      delegate = [(HMDoorbellChimeProfile *)selfCopy delegate];
      if ((integerValue2 - 2) >= 2)
      {
        if (integerValue2 == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              *buf = 138543618;
              v59 = v29;
              v60 = 2112;
              integerValue = delegate;
              _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate: %@ of chime", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v26);
            accessoryProfile = [(HMAccessoryProfile *)v27 accessoryProfile];
            context = [accessoryProfile context];
            delegateCaller = [context delegateCaller];
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __57__HMDoorbellChimeProfile_didReceiveDoorbellChimeMessage___block_invoke;
            v53[3] = &unk_1E754A938;
            v54 = delegate;
            v55 = v27;
            v57 = 1;
            v56 = v8;
            [delegateCaller invokeBlock:v53];
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            integerValue3 = [v7 integerValue];
            *buf = 138543618;
            v59 = v36;
            v60 = 2048;
            integerValue = integerValue3;
            _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unknown chime mode (%ld)", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
        }
      }

      else
      {
        v16 = [v6 hmf_stringForKey:@"HM.doorbell.chime.personText"];
        if (v16)
        {
          if (objc_opt_respondsToSelector())
          {
            context = objc_autoreleasePoolPush();
            v17 = selfCopy;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543874;
              v59 = v42;
              v60 = 2112;
              integerValue = delegate;
              v62 = 2048;
              v63 = v7;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate: %@ of chime (%ld) with person identification text", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            contexta = [(HMAccessoryProfile *)v17 accessoryProfile];
            context2 = [contexta context];
            delegateCaller2 = [context2 delegateCaller];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __57__HMDoorbellChimeProfile_didReceiveDoorbellChimeMessage___block_invoke_82;
            v46[3] = &unk_1E7546DF8;
            v47 = delegate;
            v48 = v17;
            v52 = integerValue2;
            v49 = v8;
            v50 = v16;
            v51 = v7;
            [delegateCaller2 invokeBlock:v46];
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          v39 = selfCopy;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v41 = contextb = v38;
            *buf = 138543874;
            v59 = v41;
            v60 = 2048;
            integerValue = v7;
            v62 = 2112;
            v63 = v8;
            _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@No person identification text in spoken message, mode: %ld, date: %@", buf, 0x20u);

            v38 = contextb;
          }

          objc_autoreleasePoolPop(v38);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v59 = v25;
        v60 = 2048;
        integerValue = [v7 integerValue];
        v62 = 2112;
        v63 = v8;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@No chime mode (%ld) or date (%@) in chime message", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@No message payload for chime message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

void __57__HMDoorbellChimeProfile_didReceiveDoorbellChimeMessage___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) doorbellChimeProfile:*(a1 + 40) didChimeWithMode:*(a1 + 56) chimeDate:*(a1 + 48)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notified delegate: %@ of chime", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

void __57__HMDoorbellChimeProfile_didReceiveDoorbellChimeMessage___block_invoke_82(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) doorbellChimeProfile:*(a1 + 40) didChimeWithMode:*(a1 + 72) chimeDate:*(a1 + 48) personIdentificationText:*(a1 + 56)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v7 = *(a1 + 64);
    v8 = 138543874;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notified delegate: %@ of chime (%ld) with person identification text", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDoorbellChimeProfileDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDoorbellChimeProfile)initWithDoorbellChimeProfile:(id)profile
{
  profileCopy = profile;
  v7.receiver = self;
  v7.super_class = HMDoorbellChimeProfile;
  v5 = [(HMAccessoryProfile *)&v7 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    [profileCopy setDelegate:v5];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15, &__block_literal_global_84);
  }

  v3 = logCategory__hmf_once_v16;

  return v3;
}

uint64_t __37__HMDoorbellChimeProfile_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16;
  logCategory__hmf_once_v16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end