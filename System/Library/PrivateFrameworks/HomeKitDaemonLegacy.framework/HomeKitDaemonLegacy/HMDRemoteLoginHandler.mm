@interface HMDRemoteLoginHandler
+ (id)logCategory;
+ (id)remoteMessages;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginHandler)initWithAccessory:(id)accessory loggedInAccountData:(id)data;
- (HMDRemoteLoginHandler)initWithCoder:(id)coder;
- (HMDRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account;
- (HMDRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account accountStore:(id)store targetSupportsAccounts:(BOOL)accounts;
- (id)accountInfoForAccount:(id)account;
- (id)accountInfoFromLastEvent;
- (id)eventSource;
- (id)eventTopicForAccountInfo;
- (id)logIdentifier;
- (void)_handleRemoteLoginAccount:(id)account message:(id)message;
- (void)_handleUpdateLoggedInAccountMessage:(id)message;
- (void)_postAccountInfoFromAccountStore;
- (void)_postUpdatedAccountInfo:(id)info;
- (void)_registerForUsernameUpdates;
- (void)_sendAccountUpdateNotification:(id)notification;
- (void)_updateLoggedInAccount:(id)account;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher eventStoreReadHandle:(id)handle eventForwarder:(id)forwarder;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccountUsernameUpdatedOnCurrentDevice:(id)device;
- (void)registerForMessages;
- (void)stageLoggedInAccount:(id)account;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)updateFrameworkWithReason:(id)reason;
@end

@implementation HMDRemoteLoginHandler

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = expireValueCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Unstaging logged in account: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDRemoteLoginHandler *)selfCopy updateFrameworkWithReason:@"HMDRemoteLoginHandlerStagedLoggedInAccount"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDRemoteLoginHandler *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"kIdentifierKey"];

  accessory = [(HMDRemoteLoginHandler *)self accessory];
  [coderCopy encodeConditionalObject:accessory forKey:@"accessory"];

  loggedInAccount = [(HMDRemoteLoginHandler *)self loggedInAccount];
  [coderCopy encodeObject:loggedInAccount forKey:@"kRemoteLoginAccount"];

  if ([coderCopy hmd_isForXPCTransport])
  {
    initiator = [(HMDRemoteLoginHandler *)self initiator];
    anisetteProviderBridge = [initiator anisetteProviderBridge];
    [coderCopy encodeObject:anisetteProviderBridge forKey:@"kRemoteLoginAnisetterProviderBridge"];

    stagedLoggedInAccount = [(HMDRemoteLoginHandler *)self stagedLoggedInAccount];
    value = [stagedLoggedInAccount value];
    [coderCopy encodeObject:value forKey:@"kStagedRemoteLoginAccount"];
  }
}

- (HMDRemoteLoginHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAccount"];

  v8 = [(HMDRemoteLoginHandler *)self initWithUUID:v5 accessory:v6 loggedInAccount:v7];
  return v8;
}

- (void)handleAccountUsernameUpdatedOnCurrentDevice:(id)device
{
  workQueue = [(HMDRemoteLoginHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDRemoteLoginHandler_handleAccountUsernameUpdatedOnCurrentDevice___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __69__HMDRemoteLoginHandler_handleAccountUsernameUpdatedOnCurrentDevice___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[HMDRemoteLoginUtilities primaryITunesAccount];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v8 = [v7 privateStringForObjectValue:v2];
    v19 = 138543618;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@loggedInAccount On Update:%@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [*(a1 + 32) loggedInAccount];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) loggedInAccount];
    v12 = [v11 username];
    v13 = [v2 username];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account on username change", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) _updateLoggedInAccount:v2];
    }
  }
}

- (void)_registerForUsernameUpdates
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Register for username updates", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel_handleAccountUsernameUpdatedOnCurrentDevice_ name:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];

  [(HMDRemoteLoginHandler *)selfCopy handleAccountUsernameUpdatedOnCurrentDevice:0];
}

- (void)_updateLoggedInAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessory = [(HMDRemoteLoginHandler *)selfCopy accessory];
    [accessory supportsMessagedHomePodSettings];
    v10 = HMFBooleanToString();
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = accountCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account to: %@, supportsMessagedHomePodSettings: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  accessory2 = [(HMDRemoteLoginHandler *)selfCopy accessory];
  supportsMessagedHomePodSettings = [accessory2 supportsMessagedHomePodSettings];

  if (supportsMessagedHomePodSettings)
  {
    [(HMDRemoteLoginHandler *)selfCopy _postUpdatedAccountInfo:accountCopy];
  }

  else
  {
    v13 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kRemoteLoginAccountUpdatedNotificationKey" messagePayload:0];
    __updateLoggedInAccount(selfCopy, accountCopy, v13);
  }
}

- (void)_postUpdatedAccountInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(HMDRemoteLoginHandler *)self targetSupportsAccounts])
  {
    [(HMDRemoteLoginHandler *)self setLoggedInAccount:infoCopy];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = infoCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting event to update logged in account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    workQueue = [(HMDRemoteLoginHandler *)selfCopy workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke;
    v14[3] = &unk_2797359B0;
    v14[4] = selfCopy;
    v15 = infoCopy;
    dispatch_async(workQueue, v14);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = infoCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to post account: %@ due to unsupported account target", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventTopicForAccountInfo];
  v3 = [*(a1 + 32) eventForwarder];
  v4 = [*(a1 + 32) eventSource];
  v5 = v4;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v4 == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138544386;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v2;
      v36 = 2112;
      v37 = v3;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to post event to update logged in account: %@ due to missing topic: %@ event forwarder: %@ event source: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = [*(a1 + 32) accountInfoForAccount:*(a1 + 40)];
    v14 = [*(a1 + 32) accountInfoFromLastEvent];
    v15 = v14;
    if (v14 && [v14 isEqual:v13])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Skip posting event to update logged in account as it matches account info from last event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v23;
        v32 = 2112;
        v33 = v2;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Forwarding account info event with topic: %@ for accountInfo: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = objc_alloc(MEMORY[0x277D174B0]);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v25 = [v24 initWithSource:v5 cachePolicy:2 combineType:2 timestamp:?];
      v26 = objc_alloc(MEMORY[0x277D174A0]);
      v27 = [v13 protoData];
      v28 = [v26 initWithEventData:v27 metadata:v25];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke_63;
      v29[3] = &unk_2797359D8;
      v29[4] = *(a1 + 32);
      [v3 forwardEvent:v28 topic:v2 completion:v29];
    }
  }
}

void __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke_63(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward account info event with error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_postAccountInfoFromAccountStore
{
  v19 = *MEMORY[0x277D85DE8];
  accessory = [(HMDRemoteLoginHandler *)self accessory];
  v4 = accessory;
  if (accessory)
  {
    if ([accessory supportsMessagedHomePodSettings] && objc_msgSend(v4, "isCurrentAccessory"))
    {
      accountStore = [(HMDRemoteLoginHandler *)self accountStore];
      hmd_ams_activeiTunesAccount = [accountStore hmd_ams_activeiTunesAccount];

      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = hmd_ams_activeiTunesAccount;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Posting account store account: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDRemoteLoginHandler *)selfCopy _postUpdatedAccountInfo:hmd_ams_activeiTunesAccount];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to post account info from account store due to missing accessory", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (id)eventTopicForAccountInfo
{
  v19 = *MEMORY[0x277D85DE8];
  accessory = [(HMDRemoteLoginHandler *)self accessory];
  uuid = [accessory uuid];
  home = [accessory home];
  uuid2 = [home uuid];

  if (uuid && uuid2)
  {
    v7 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA58] homeUUID:uuid2 accessoryUUID:uuid];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = uuid;
      v17 = 2112;
      v18 = uuid2;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get account info event topic due to missing accessory uuid: %@ home uuid: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)accountInfoForAccount:(id)account
{
  v3 = MEMORY[0x277CD16F8];
  accountCopy = account;
  v5 = [v3 alloc];
  username = [accountCopy username];
  hmd_aa_altDSID = [accountCopy hmd_aa_altDSID];
  hmd_ams_altDSID = [accountCopy hmd_ams_altDSID];

  v9 = [v5 initWithUsername:username aaAltDSID:hmd_aa_altDSID amsAltDSID:hmd_ams_altDSID signedIn:accountCopy != 0];

  return v9;
}

- (id)accountInfoFromLastEvent
{
  v26 = *MEMORY[0x277D85DE8];
  eventTopicForAccountInfo = [(HMDRemoteLoginHandler *)self eventTopicForAccountInfo];
  if (eventTopicForAccountInfo)
  {
    eventStoreReadHandle = [(HMDRemoteLoginHandler *)self eventStoreReadHandle];
    if (eventStoreReadHandle)
    {
      eventStoreReadHandle2 = [(HMDRemoteLoginHandler *)self eventStoreReadHandle];
      v6 = [eventStoreReadHandle2 lastEventForTopic:eventTopicForAccountInfo];

      if (v6)
      {
        v7 = objc_alloc(MEMORY[0x277CD16F8]);
        encodedData = [v6 encodedData];
        v9 = [v7 initWithProtoData:encodedData];

        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v24 = 138543362;
            v25 = v22;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due invalid stored event data", &v24, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due to no event store read handle", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v9 = 0;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due to no topic", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9 = 0;
  }

  return v9;
}

- (id)eventSource
{
  accessory = [(HMDRemoteLoginHandler *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)updateFrameworkWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  accessory = [(HMDRemoteLoginHandler *)self accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    uuid = [(HMDRemoteLoginHandler *)self uuid];
    [homeManager updateGenerationCounterWithReason:reasonCopy sourceUUID:uuid shouldNotifyClients:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = reasonCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update home graph without a home manager for reason: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)stageLoggedInAccount:(id)account
{
  v14 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = accountCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging logged in account: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  stagedLoggedInAccount = [(HMDRemoteLoginHandler *)selfCopy stagedLoggedInAccount];
  [stagedLoggedInAccount stageValue:accountCopy withTimeout:600.0];

  [(HMDRemoteLoginHandler *)selfCopy updateFrameworkWithReason:@"HMDRemoteLoginHandlerStagedLoggedInAccount"];
}

- (void)_handleUpdateLoggedInAccountMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v40 = 138543618;
    v41 = v8;
    v42 = 2112;
    v43 = shortDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update logged in account message: %@", &v40, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [messageCopy dataForKey:@"kRemoteLoginAccount"];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v10 allowedClass:objc_opt_class() frameworkClasses:MEMORY[0x277CBEBF8]];
    loggedInAccount = [(HMDRemoteLoginHandler *)selfCopy loggedInAccount];
    if (loggedInAccount && (v13 = loggedInAccount, [v11 aa_altDSID], v14 = objc_claimAutoreleasedReturnValue(), -[HMDRemoteLoginHandler loggedInAccount](selfCopy, "loggedInAccount"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "aa_altDSID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = HMFEqualObjects(), v16, v15, v14, v13, v17))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v21;
        v42 = 2112;
        v43 = v11;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updated account matches the currently logged in account: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      responseHandler = [messageCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_25;
      }
    }

    else
    {
      loggedInAccount2 = [(HMDRemoteLoginHandler *)selfCopy loggedInAccount];

      if (loggedInAccount2)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          v40 = 138543362;
          v41 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update account, existing account present", &v40, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        responseHandler2 = [messageCopy responseHandler];

        if (!responseHandler2)
        {
          goto LABEL_25;
        }

        responseHandler4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Existing account present." suggestion:0];
        responseHandler3 = [messageCopy responseHandler];
        (responseHandler3)[2](responseHandler3, responseHandler4, 0);

        goto LABEL_24;
      }

      accessory = [(HMDRemoteLoginHandler *)selfCopy accessory];
      supportsMessagedHomePodSettings = [accessory supportsMessagedHomePodSettings];

      if (supportsMessagedHomePodSettings)
      {
        [(HMDRemoteLoginHandler *)selfCopy stageLoggedInAccount:v11];
      }

      else
      {
        __updateLoggedInAccount(selfCopy, v11, messageCopy);
      }
    }

    responseHandler4 = [messageCopy responseHandler];
    v37 = responseHandler4[2];
LABEL_23:
    v37();
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    v40 = 138543618;
    v41 = v34;
    v42 = 2112;
    v43 = messagePayload;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Missing serialized account in message payload: %@", &v40, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  responseHandler5 = [messageCopy responseHandler];

  if (responseHandler5)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    responseHandler4 = [messageCopy responseHandler];
    v37 = responseHandler4[2];
    goto LABEL_23;
  }

LABEL_26:
}

- (void)_sendAccountUpdateNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending account update notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v17 = @"kRemoteLoginAccount";
    v9 = encodeRootObject();
    v18 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v10 = 0;
  }

  initiator = [(HMDRemoteLoginHandler *)self initiator];
  workQueue = [initiator workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMDRemoteLoginHandler__sendAccountUpdateNotification___block_invoke;
  v14[3] = &unk_2797359B0;
  v15 = v10;
  selfCopy2 = self;
  v13 = v10;
  dispatch_async(workQueue, v14);
}

void __56__HMDRemoteLoginHandler__sendAccountUpdateNotification___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kRemoteLoginAccountUpdatedNotificationKey" messagePayload:*(a1 + 32)];
  v2 = [*(a1 + 40) initiator];
  v3 = [v2 msgDispatcher];
  v4 = [*(a1 + 40) uuid];
  [v3 sendMessage:v5 target:v4];
}

- (void)_handleRemoteLoginAccount:(id)account message:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  messageCopy = message;
  loggedInAccount = [accountCopy loggedInAccount];
  if (loggedInAccount)
  {
    v38 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:loggedInAccount error:&v38];
    v10 = v38;
    if (!v9)
    {
      v11 = loggedInAccount;
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v16 = v15 = accountCopy;
        *buf = 138543618;
        v40 = v16;
        v41 = 2112;
        v42 = v10;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);

        accountCopy = v15;
      }

      objc_autoreleasePoolPop(v12);
      loggedInAccount = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  [(HMDRemoteLoginHandler *)self setLoggedInAccount:v9];
  loggedInAccount2 = [(HMDRemoteLoginHandler *)self loggedInAccount];
  aa_altDSID = [loggedInAccount2 aa_altDSID];
  aa_altDSID2 = [v9 aa_altDSID];
  if (HMFEqualObjects())
  {
    [(HMDRemoteLoginHandler *)self loggedInAccount];
    v20 = v37 = loggedInAccount;
    [v20 username];
    selfCopy2 = self;
    v22 = messageCopy;
    v24 = v23 = accountCopy;
    username = [v9 username];
    v36 = HMFEqualObjects();

    accountCopy = v23;
    messageCopy = v22;
    self = selfCopy2;

    loggedInAccount = v37;
    if (v36)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy2;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        loggedInAccount3 = [(HMDRemoteLoginHandler *)v27 loggedInAccount];
        *buf = 138543874;
        v40 = v29;
        v41 = 2112;
        v42 = loggedInAccount3;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Not updating logged in account from %@ to %@, as they are equal", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    loggedInAccount4 = [(HMDRemoteLoginHandler *)selfCopy3 loggedInAccount];
    *buf = 138543874;
    v40 = v34;
    v41 = 2112;
    v42 = loggedInAccount4;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account from %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  [(HMDRemoteLoginHandler *)selfCopy3 setLoggedInAccount:v9];
  [(HMDRemoteLoginHandler *)selfCopy3 _sendAccountUpdateNotification:v9];
LABEL_17:
}

- (void)registerForMessages
{
  v10[1] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDRemoteLoginHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD0C98];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:33];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handleUpdateLoggedInAccountMessage_];

  initiator = [(HMDRemoteLoginHandler *)self initiator];
  [initiator registerForMessages];

  receiver = [(HMDRemoteLoginHandler *)self receiver];
  [receiver registerForMessages];

  anisetteDataHandler = [(HMDRemoteLoginHandler *)self anisetteDataHandler];
  [anisetteDataHandler registerForMessages];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher eventStoreReadHandle:(id)handle eventForwarder:(id)forwarder
{
  forwarderCopy = forwarder;
  handleCopy = handle;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  [(HMDRemoteLoginHandler *)self setWorkQueue:queueCopy];
  [(HMDRemoteLoginHandler *)self setMsgDispatcher:dispatcherCopy];
  [(HMDRemoteLoginHandler *)self setEventStoreReadHandle:handleCopy];

  [(HMDRemoteLoginHandler *)self setEventForwarder:forwarderCopy];
  initiator = [(HMDRemoteLoginHandler *)self initiator];
  [initiator configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy];

  receiver = [(HMDRemoteLoginHandler *)self receiver];
  [receiver configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy];

  anisetteDataHandler = [(HMDRemoteLoginHandler *)self anisetteDataHandler];
  [anisetteDataHandler configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy];

  [(HMDRemoteLoginHandler *)self registerForMessages];

  [(HMDRemoteLoginHandler *)self _postAccountInfoFromAccountStore];
}

- (id)logIdentifier
{
  uuid = [(HMDRemoteLoginHandler *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (HMDRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account accountStore:(id)store targetSupportsAccounts:(BOOL)accounts
{
  dCopy = d;
  accessoryCopy = accessory;
  accountCopy = account;
  storeCopy = store;
  v28.receiver = self;
  v28.super_class = HMDRemoteLoginHandler;
  v17 = [(HMDRemoteLoginHandler *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, accessoryCopy);
    objc_storeStrong(&v18->_uuid, d);
    objc_storeStrong(&v18->_loggedInAccount, account);
    v19 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:0];
    stagedLoggedInAccount = v18->_stagedLoggedInAccount;
    v18->_stagedLoggedInAccount = v19;

    [(HMFStagedValue *)v18->_stagedLoggedInAccount setDelegate:v18];
    v21 = [[HMDRemoteLoginInitiator alloc] initWithUUID:dCopy accessory:accessoryCopy remoteLoginHandler:v18];
    initiator = v18->_initiator;
    v18->_initiator = v21;

    v23 = [(HMDRemoteLoginBase *)[HMDRemoteLoginReceiver alloc] initWithUUID:dCopy accessory:accessoryCopy remoteLoginHandler:v18];
    receiver = v18->_receiver;
    v18->_receiver = v23;

    v25 = [[HMDRemoteLoginAnisetteDataHandler alloc] initWithUUID:dCopy accessory:accessoryCopy];
    anisetteDataHandler = v18->_anisetteDataHandler;
    v18->_anisetteDataHandler = v25;

    objc_storeStrong(&v18->_accountStore, store);
    v18->_targetSupportsAccounts = accounts;
  }

  return v18;
}

- (HMDRemoteLoginHandler)initWithUUID:(id)d accessory:(id)accessory loggedInAccount:(id)account
{
  accountCopy = account;
  accessoryCopy = accessory;
  dCopy = d;
  v11 = +[HMDAppleAccountManager sharedManager];
  accountStore = [v11 accountStore];

  v13 = [(HMDRemoteLoginHandler *)self initWithUUID:dCopy accessory:accessoryCopy loggedInAccount:accountCopy accountStore:accountStore targetSupportsAccounts:1];
  return v13;
}

- (HMDRemoteLoginHandler)initWithAccessory:(id)accessory loggedInAccountData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dataCopy = data;
  if (dataCopy)
  {
    v20 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v20];
    v9 = v20;
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v14 = MEMORY[0x277CCAD78];
  uuid = [accessoryCopy uuid];
  v21 = @"HMDRemoteLoginHandler";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v17 = [v14 hm_deriveUUIDFromBaseUUID:uuid withSalts:v16];
  v18 = [(HMDRemoteLoginHandler *)self initWithUUID:v17 accessory:accessoryCopy loggedInAccount:v8];

  return v18;
}

+ (id)remoteMessages
{
  v9[16] = *MEMORY[0x277D85DE8];
  v9[0] = @"kHMDRemoteLoginCompanionAuthenticationRequest";
  v9[1] = @"kHMDRemoteLoginProxyAuthenticationRequest";
  v9[2] = @"kHMDRemoteLoginAuthenticationResponse";
  v9[3] = @"kHMDRemoteLoginProxyDeviceRequest";
  v9[4] = @"kHMDRemoteLoginProxyDeviceResponse";
  v9[5] = @"kHMDRemoteLoginSignoutRequest";
  v2 = *MEMORY[0x277CD23B0];
  v9[6] = *MEMORY[0x277CD23A8];
  v9[7] = v2;
  v3 = *MEMORY[0x277CD23C0];
  v9[8] = *MEMORY[0x277CD23B8];
  v9[9] = v3;
  v4 = *MEMORY[0x277CD2380];
  v9[10] = *MEMORY[0x277CD2378];
  v9[11] = v4;
  v5 = *MEMORY[0x277CD2390];
  v9[12] = *MEMORY[0x277CD2388];
  v9[13] = v5;
  v6 = *MEMORY[0x277CD23A0];
  v9[14] = *MEMORY[0x277CD2398];
  v9[15] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:16];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_193942 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_193942, &__block_literal_global_193943);
  }

  v3 = logCategory__hmf_once_v2_193944;

  return v3;
}

uint64_t __36__HMDRemoteLoginHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_193944;
  logCategory__hmf_once_v2_193944 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end