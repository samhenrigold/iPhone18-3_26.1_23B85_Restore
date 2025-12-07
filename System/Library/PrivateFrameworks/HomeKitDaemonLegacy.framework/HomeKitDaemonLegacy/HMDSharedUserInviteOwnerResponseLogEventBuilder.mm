@interface HMDSharedUserInviteOwnerResponseLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDSharedUserInviteOwnerResponseLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source;
- (void)cancel;
- (void)markAddUserToHomeBegin;
- (void)markAddUserToHomeEnd;
- (void)markAuthenticateUserBegin;
- (void)markAuthenticateUserEnd;
- (void)markJoiningReverseShareBegin;
- (void)markJoiningReverseShareEnd;
- (void)submit;
@end

@implementation HMDSharedUserInviteOwnerResponseLogEventBuilder

- (void)submit
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (!self->super.submitted)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      Property = objc_getProperty(selfCopy, v7, 112, 1);
      v10 = [objc_getProperty(selfCopy v9];
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = Property;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user response latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v13.receiver = selfCopy;
    v13.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v13 submit];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeSharedUserResponseEventBuilder:selfCopy];
    }
  }
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v14.receiver = self;
  v14.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
  isReady = [(HMDSharedUserInviteLogEventBuilder *)&v14 isReady];
  if (isReady)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 112, 1);
    }

    else
    {
      Property = 0;
    }

    error = [Property error];

    LOBYTE(isReady) = error || (!self ? (v8 = 0) : (v8 = objc_getProperty(self, v7, 112, 1)), [v8 authenticateUserMS] >= 1 && (!self ? (v10 = 0) : (v10 = objc_getProperty(self, v9, 112, 1)), objc_msgSend(v10, "joiningReverseShareMS") >= 1 && (!self ? (v12 = 0) : (v12 = objc_getProperty(self, v11, 112, 1)), objc_msgSend(v12, "addUserToHomeMS") > 0)));
  }

  return isReady;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v5 cancel];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeSharedUserResponseEventBuilder:self];
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)markAddUserToHomeEnd
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserToHomeEnd", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->addUserToHomeBeginTime)
    {
      v8 = objc_getProperty(selfCopy, v7, 112, 1);
      v9 = [v8 addUserToHomeMS] == -1;

      if (v9)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v11 = currentUpTicksBlock[2]();
        addUserToHomeBeginTime = selfCopy->addUserToHomeBeginTime;
        v14 = objc_getProperty(selfCopy, v13, 112, 1);
        v15 = v14;
        if (v11 == addUserToHomeBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - addUserToHomeBeginTime;
        }

        [v14 setAddUserToHomeMS:v16];

        currentUpTicksBlock2 = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v18 = currentUpTicksBlock2[2]();
        eventCreatedTime = selfCopy->super.eventCreatedTime;
        v21 = objc_getProperty(selfCopy, v20, 112, 1);
        v22 = v21;
        if (v18 == eventCreatedTime)
        {
          v23 = 1;
        }

        else
        {
          v23 = v18 - eventCreatedTime;
        }

        [v21 setTotalOwnerResidentResponseMS:v23];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markAddUserToHomeBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserToHomeBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->addUserToHomeBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->addUserToHomeBeginTime = currentUpTicksBlock[2]();

    v9 = objc_getProperty(selfCopy, v8, 112, 1);
    [v9 setAddUserToHomeMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markJoiningReverseShareEnd
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoiningReverseShareEnd", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->joiningReverseShareBeginTime)
    {
      v8 = objc_getProperty(selfCopy, v7, 112, 1);
      v9 = [v8 joiningReverseShareMS] == -1;

      if (v9)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v11 = currentUpTicksBlock[2]();
        joiningReverseShareBeginTime = selfCopy->joiningReverseShareBeginTime;
        v14 = objc_getProperty(selfCopy, v13, 112, 1);
        v15 = v14;
        if (v11 == joiningReverseShareBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - joiningReverseShareBeginTime;
        }

        [v14 setJoiningReverseShareMS:v16];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markJoiningReverseShareBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoiningReverseShareBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->joiningReverseShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->joiningReverseShareBeginTime = currentUpTicksBlock[2]();

    v9 = objc_getProperty(selfCopy, v8, 112, 1);
    [v9 setJoiningReverseShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markAuthenticateUserEnd
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAuthenticateUserEnd", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->authenticateUserBeginTime)
    {
      v8 = objc_getProperty(selfCopy, v7, 112, 1);
      v9 = [v8 authenticateUserMS] == -1;

      if (v9)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v11 = currentUpTicksBlock[2]();
        authenticateUserBeginTime = selfCopy->authenticateUserBeginTime;
        v14 = objc_getProperty(selfCopy, v13, 112, 1);
        v15 = v14;
        if (v11 == authenticateUserBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - authenticateUserBeginTime;
        }

        [v14 setAuthenticateUserMS:v16];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markAuthenticateUserBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAuthenticateUserBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->authenticateUserBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->authenticateUserBeginTime = currentUpTicksBlock[2]();

    v9 = objc_getProperty(selfCopy, v8, 112, 1);
    [v9 setAuthenticateUserMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (HMDSharedUserInviteOwnerResponseLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source
{
  identifierCopy = identifier;
  homeCopy = home;
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  v15 = homeCopy;
  v16 = identifierCopy;
  v17 = v14;
  v18 = &__block_literal_global_181908;
  v19 = &__block_literal_global_4_181909;
  if (self)
  {
    v20 = [HMDSharedUserInviteOwnerResponseLogEvent alloc];
    uuid = [v15 uuid];
    v22 = [(HMDSharedUserInviteOwnerResponseLogEvent *)v20 initWithHomeUUID:uuid];

    if (v22)
    {
      homeManager = [v15 homeManager];
      wifiManager = [v15 wifiManager];
      sourceCopy = source;
      v26 = wifiManager;
      v30.receiver = self;
      v30.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
      v27 = [(HMDSharedUserInviteLogEventBuilder *)&v30 initWithLogEvent:v22 homeManager:homeManager sessionIdentifier:v16 invitationType:type invitationAge:sourceCopy invitationSource:v17 logEventSubmitter:age wifiManager:wifiManager currentUpTicksBlock:&__block_literal_global_181908 submissionTimerFactory:&__block_literal_global_4_181909];

      if (v27)
      {
        objc_storeWeak(&v27->_home, v15);
        objc_storeStrong(&v27->_responseLogEvent, v22);
      }

      self = v27;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __128__HMDSharedUserInviteOwnerResponseLogEventBuilder_initWithHome_sessionIdentifier_invitationType_invitationAge_invitationSource___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];

  return v0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_181920 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_181920, &__block_literal_global_14_181921);
  }

  v3 = logCategory__hmf_once_v14_181922;

  return v3;
}

uint64_t __62__HMDSharedUserInviteOwnerResponseLogEventBuilder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_181922;
  logCategory__hmf_once_v14_181922 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end