@interface HMDSharedUserInviteOwnerSendLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDHome)home;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter currentUpTicksBlock:(id)block submissionTimerFactory:(id)self0;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markCreateShareBegin;
- (void)markCreateShareEnd;
- (void)markSendInviteBegin;
- (void)markSendInviteEnd;
- (void)markUserAlreadyAddedToShare;
- (void)submit;
@end

@implementation HMDSharedUserInviteOwnerSendLogEventBuilder

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)submit
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (!self->super.submitted)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      error = [inviteLogEvent2 error];
      *buf = 138543874;
      v14 = v6;
      v15 = 2112;
      v16 = inviteLogEvent;
      v17 = 2112;
      v18 = error;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user send invite latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v12.receiver = selfCopy;
    v12.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v12 submit];
    home = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy home];
    v11 = home;
    if (home)
    {
      [home removeSharedUserEventBuilder:selfCopy];
    }
  }
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v12.receiver = self;
  v12.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  isReady = [(HMDSharedUserInviteLogEventBuilder *)&v12 isReady];
  if (isReady)
  {
    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    error = [inviteLogEvent error];

    if (error)
    {
LABEL_3:
      LOBYTE(isReady) = 1;
      return isReady;
    }

    inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    if ([inviteLogEvent2 createShareMS] >= 1)
    {
      inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
      if ([inviteLogEvent3 addUserToShareMS] >= 1)
      {
        inviteLogEvent4 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
        if ([inviteLogEvent4 sendInvitationMS] > 0)
        {
          inviteLogEvent5 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
          totalInvitationCreateAndSendMS = [inviteLogEvent5 totalInvitationCreateAndSendMS];

          if (totalInvitationCreateAndSendMS >= 1)
          {
            goto LABEL_3;
          }

LABEL_12:
          LOBYTE(isReady) = 0;
          return isReady;
        }
      }
    }

    goto LABEL_12;
  }

  return isReady;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v5 cancel];
  home = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self home];
  v4 = home;
  if (home)
  {
    [home removeSharedUserEventBuilder:self];
  }
}

- (void)markSendInviteEnd
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteEnd", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->sendInvitationBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent sendInvitationMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        sendInvitationBeginTime = selfCopy->sendInvitationBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == sendInvitationBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - sendInvitationBeginTime;
        }

        [inviteLogEvent2 setSendInvitationMS:v14];

        currentUpTicksBlock2 = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v16 = currentUpTicksBlock2[2]();
        eventCreatedTime = selfCopy->super.eventCreatedTime;
        inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v19 = inviteLogEvent3;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [inviteLogEvent3 setTotalInvitationCreateAndSendMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markSendInviteBegin
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->sendInvitationBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->sendInvitationBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setSendInvitationMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markUserAlreadyAddedToShare
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markUserAlreadyAddedToShare", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    userAlreadyAddedToShare = [inviteLogEvent userAlreadyAddedToShare];

    if ((userAlreadyAddedToShare & 1) == 0)
    {
      inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent2 setUserAlreadyAddedToShare:1];

      inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent3 setCreateShareMS:1];

      inviteLogEvent4 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent4 setAddUserToShareMS:1];

      [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markAddUserEnd
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->addUserToShareBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent addUserToShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        addUserToShareBeginTime = selfCopy->addUserToShareBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == addUserToShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - addUserToShareBeginTime;
        }

        [inviteLogEvent2 setAddUserToShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markAddUserBegin
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->addUserToShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->addUserToShareBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setAddUserToShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateShareEnd
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->createShareBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent createShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        createShareBeginTime = selfCopy->createShareBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == createShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createShareBeginTime;
        }

        [inviteLogEvent2 setCreateShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateShareBegin
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->createShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->createShareBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setCreateShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source
{
  identifierCopy = identifier;
  homeCopy = home;
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  v15 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self initWithHome:homeCopy sessionIdentifier:identifierCopy invitationType:type invitationAge:source invitationSource:v14 logEventSubmitter:&__block_literal_global_85747 currentUpTicksBlock:age submissionTimerFactory:&__block_literal_global_4];

  return v15;
}

id __124__HMDSharedUserInviteOwnerSendLogEventBuilder_initWithHome_sessionIdentifier_invitationType_invitationAge_invitationSource___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];

  return v0;
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter currentUpTicksBlock:(id)block submissionTimerFactory:(id)self0
{
  homeCopy = home;
  identifierCopy = identifier;
  submitterCopy = submitter;
  blockCopy = block;
  factoryCopy = factory;
  v22 = [HMDSharedUserInviteOwnerSendLogEvent alloc];
  uuid = [homeCopy uuid];
  v24 = [(HMDSharedUserInviteLogEvent *)v22 initWithHomeUUID:uuid];

  if (v24)
  {
    homeManager = [homeCopy homeManager];
    wifiManager = [homeCopy wifiManager];
    sourceCopy = source;
    v28 = wifiManager;
    v32.receiver = self;
    v32.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    v29 = [(HMDSharedUserInviteLogEventBuilder *)&v32 initWithLogEvent:v24 homeManager:homeManager sessionIdentifier:identifierCopy invitationType:type invitationAge:sourceCopy invitationSource:submitterCopy logEventSubmitter:age wifiManager:wifiManager currentUpTicksBlock:blockCopy submissionTimerFactory:factoryCopy];

    if (v29)
    {
      objc_storeWeak(&v29->_home, homeCopy);
      objc_storeStrong(&v29->_inviteLogEvent, v24);
    }

    self = v29;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_85757 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_85757, &__block_literal_global_14_85758);
  }

  v3 = logCategory__hmf_once_v16_85759;

  return v3;
}

void __58__HMDSharedUserInviteOwnerSendLogEventBuilder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16_85759;
  logCategory__hmf_once_v16_85759 = v0;
}

@end