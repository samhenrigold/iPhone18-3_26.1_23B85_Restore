@interface HMDSharedUserInviteAcceptLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDHomeManager)homeManager;
- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)d homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter wifiManager:(id)self0 currentUpTicksBlock:(id)self1 submissionTimerFactory:(id)self2;
- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)d homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source wifiManager:(id)wifiManager;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markCreateMKFCKSharedUserDataRootBegin;
- (void)markCreateMKFCKSharedUserDataRootEnd;
- (void)markCreateReverseShareBegin;
- (void)markCreateReverseShareEnd;
- (void)markCreatedHome;
- (void)markDiscoverPrimaryResidentBegin;
- (void)markDiscoverPrimaryResidentEnd;
- (void)markJoinOwnerShareBegin;
- (void)markJoinOwnerShareEnd;
- (void)markResidentSyncBegin;
- (void)markResidentSyncEnd;
- (void)markSendAcceptanceToOwnerBegin;
- (void)markSendAcceptanceToOwnerEnd;
- (void)submit;
@end

@implementation HMDSharedUserInviteAcceptLogEventBuilder

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

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
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      error = [acceptLogEvent2 error];
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = acceptLogEvent;
      v18 = 2112;
      v19 = error;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user accept latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v13.receiver = selfCopy;
    v13.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v13 submit];
    homeManager = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy homeManager];
    acceptLogEvent3 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    homeUUID = [acceptLogEvent3 homeUUID];
    [homeManager removeSharedUserAcceptEventBuilderForHomeUuid:homeUUID];
  }
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v18.receiver = self;
  v18.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
  isReady = [(HMDSharedUserInviteLogEventBuilder *)&v18 isReady];
  if (isReady)
  {
    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
    error = [acceptLogEvent error];

    if (error)
    {
LABEL_3:
      LOBYTE(isReady) = 1;
      return isReady;
    }

    acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
    if ([acceptLogEvent2 joinOwnerShareMS] >= 1)
    {
      acceptLogEvent3 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
      if ([acceptLogEvent3 createMKFCKSharedUserDataRootMS] >= 1)
      {
        acceptLogEvent4 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
        if ([acceptLogEvent4 createReverseShareMS] >= 1)
        {
          acceptLogEvent5 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
          if ([acceptLogEvent5 addUserToShareMS] >= 1)
          {
            acceptLogEvent6 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
            if ([acceptLogEvent6 sendAcceptanceToOwnerMS] >= 1)
            {
              acceptLogEvent7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
              if ([acceptLogEvent7 totalInvitationAcceptanceMS] >= 1)
              {
                acceptLogEvent8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                if ([acceptLogEvent8 createHomeMS] >= 1)
                {
                  acceptLogEvent9 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                  if ([acceptLogEvent9 discoverPrimaryResidentMS] >= 1)
                  {
                    acceptLogEvent10 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                    if ([acceptLogEvent10 residentSyncDataReceivedMS] >= 1)
                    {
                      acceptLogEvent11 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                      sharedUserTotalMS = [acceptLogEvent11 sharedUserTotalMS];

                      if (sharedUserTotalMS >= 1)
                      {
                        goto LABEL_3;
                      }

LABEL_24:
                      LOBYTE(isReady) = 0;
                      return isReady;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

  return isReady;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v6 cancel];
  homeManager = [(HMDSharedUserInviteAcceptLogEventBuilder *)self homeManager];
  acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
  homeUUID = [acceptLogEvent homeUUID];
  [homeManager removeSharedUserAcceptEventBuilderForHomeUuid:homeUUID];
}

- (void)markResidentSyncEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markResidentSyncEnd", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->residentSyncBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent residentSyncDataReceivedMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        residentSyncBeginTime = selfCopy->residentSyncBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == residentSyncBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - residentSyncBeginTime;
        }

        [acceptLogEvent2 setResidentSyncDataReceivedMS:v14];

        currentUpTicksBlock2 = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v16 = currentUpTicksBlock2[2]();
        eventCreatedTime = selfCopy->super.eventCreatedTime;
        acceptLogEvent3 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v19 = acceptLogEvent3;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [acceptLogEvent3 setSharedUserTotalMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markResidentSyncBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markResidentSyncBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->residentSyncBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->residentSyncBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setResidentSyncDataReceivedMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markDiscoverPrimaryResidentEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markDiscoverPrimaryResidentEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->discoverPrimaryResidentBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent discoverPrimaryResidentMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        discoverPrimaryResidentBeginTime = selfCopy->discoverPrimaryResidentBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == discoverPrimaryResidentBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - discoverPrimaryResidentBeginTime;
        }

        [acceptLogEvent2 setDiscoverPrimaryResidentMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markDiscoverPrimaryResidentBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markDiscoverPrimaryResidentBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->discoverPrimaryResidentBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->discoverPrimaryResidentBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setDiscoverPrimaryResidentMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreatedHome
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreatedHome", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    v8 = [acceptLogEvent createHomeMS] == 0;

    if (v8)
    {
      currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
      v10 = currentUpTicksBlock[2]();
      joinOwnerShareBeginTime = selfCopy->joinOwnerShareBeginTime;
      acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v13 = acceptLogEvent2;
      if (v10 == joinOwnerShareBeginTime)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10 - joinOwnerShareBeginTime;
      }

      [acceptLogEvent2 setCreateHomeMS:v14];

      [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markSendAcceptanceToOwnerEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendAcceptanceToOwnerEnd", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->sendAcceptanceToOwnerBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent sendAcceptanceToOwnerMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        sendAcceptanceToOwnerBeginTime = selfCopy->sendAcceptanceToOwnerBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == sendAcceptanceToOwnerBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - sendAcceptanceToOwnerBeginTime;
        }

        [acceptLogEvent2 setSendAcceptanceToOwnerMS:v14];

        currentUpTicksBlock2 = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v16 = currentUpTicksBlock2[2]();
        eventCreatedTime = selfCopy->super.eventCreatedTime;
        acceptLogEvent3 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v19 = acceptLogEvent3;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [acceptLogEvent3 setTotalInvitationAcceptanceMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markSendAcceptanceToOwnerBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendAcceptanceToOwnerBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->sendAcceptanceToOwnerBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->sendAcceptanceToOwnerBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setSendAcceptanceToOwnerMS:-1];
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
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent addUserToShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        addUserToShareBeginTime = selfCopy->addUserToShareBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == addUserToShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - addUserToShareBeginTime;
        }

        [acceptLogEvent2 setAddUserToShareMS:v14];

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

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setAddUserToShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateReverseShareEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateReverseShareEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->createReverseShareBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent createReverseShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        createReverseShareBeginTime = selfCopy->createReverseShareBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == createReverseShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createReverseShareBeginTime;
        }

        [acceptLogEvent2 setCreateReverseShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateReverseShareBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateReverseShareBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->createReverseShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->createReverseShareBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setCreateReverseShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateMKFCKSharedUserDataRootEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateMKFCKSharedUserDataRootEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->createMKFCKSharedUserDataRootBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent createMKFCKSharedUserDataRootMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        createMKFCKSharedUserDataRootBeginTime = selfCopy->createMKFCKSharedUserDataRootBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == createMKFCKSharedUserDataRootBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createMKFCKSharedUserDataRootBeginTime;
        }

        [acceptLogEvent2 setCreateMKFCKSharedUserDataRootMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markCreateMKFCKSharedUserDataRootBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateMKFCKSharedUserDataRootBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->createMKFCKSharedUserDataRootBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->createMKFCKSharedUserDataRootBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setCreateMKFCKSharedUserDataRootMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markJoinOwnerShareEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoinOwnerShareEnd", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->joinOwnerShareBeginTime)
    {
      acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
      v8 = [acceptLogEvent joinOwnerShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        joinOwnerShareBeginTime = selfCopy->joinOwnerShareBeginTime;
        acceptLogEvent2 = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
        v13 = acceptLogEvent2;
        if (v10 == joinOwnerShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - joinOwnerShareBeginTime;
        }

        [acceptLogEvent2 setJoinOwnerShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (void)markJoinOwnerShareBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoinOwnerShareBegin", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->joinOwnerShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->joinOwnerShareBeginTime = currentUpTicksBlock[2]();

    acceptLogEvent = [(HMDSharedUserInviteAcceptLogEventBuilder *)selfCopy acceptLogEvent];
    [acceptLogEvent setJoinOwnerShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
}

- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)d homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source wifiManager:(id)wifiManager
{
  wifiManagerCopy = wifiManager;
  identifierCopy = identifier;
  managerCopy = manager;
  dCopy = d;
  v20 = +[HMDMetricsManager sharedLogEventSubmitter];
  v21 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self initWithHomeUUID:dCopy homeManager:managerCopy sessionIdentifier:identifierCopy invitationType:type invitationAge:source invitationSource:v20 logEventSubmitter:age wifiManager:wifiManagerCopy currentUpTicksBlock:&__block_literal_global_256877 submissionTimerFactory:&__block_literal_global_4_256878];

  return v21;
}

id __149__HMDSharedUserInviteAcceptLogEventBuilder_initWithHomeUUID_homeManager_sessionIdentifier_invitationType_invitationAge_invitationSource_wifiManager___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:900.0];

  return v0;
}

- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)d homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter wifiManager:(id)self0 currentUpTicksBlock:(id)self1 submissionTimerFactory:(id)self2
{
  managerCopy = manager;
  identifierCopy = identifier;
  submitterCopy = submitter;
  wifiManagerCopy = wifiManager;
  blockCopy = block;
  factoryCopy = factory;
  dCopy = d;
  v24 = [[HMDSharedUserInviteAcceptLogEvent alloc] initWithHomeUUID:dCopy];

  if (v24)
  {
    v31.receiver = self;
    v31.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
    v25 = [(HMDSharedUserInviteLogEventBuilder *)&v31 initWithLogEvent:v24 homeManager:managerCopy sessionIdentifier:identifierCopy invitationType:type invitationAge:source invitationSource:submitterCopy logEventSubmitter:age wifiManager:wifiManagerCopy currentUpTicksBlock:blockCopy submissionTimerFactory:factoryCopy];
    p_isa = &v25->super.super.isa;
    if (v25)
    {
      objc_storeWeak(&v25->_homeManager, managerCopy);
      objc_storeStrong(p_isa + 18, v24);
    }

    self = p_isa;
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
  if (logCategory__hmf_once_t31_256888 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_256888, &__block_literal_global_14_256889);
  }

  v3 = logCategory__hmf_once_v32_256890;

  return v3;
}

void __55__HMDSharedUserInviteAcceptLogEventBuilder_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32_256890;
  logCategory__hmf_once_v32_256890 = v0;
}

@end