@interface HMDAppleAccountManager
+ (HMDAppleAccountManager)sharedManager;
+ (id)logCategory;
- (ACAccountStore)accountStore;
- (BOOL)isCurrentDeviceDataOwnerForDevice:(id)device;
- (BOOL)isDeviceLocallyPairedWatch:(id)watch;
- (BOOL)isModelCurrentAccount:(id)account;
- (BOOL)isServiceActive;
- (BOOL)maybeSkipUpdatesOfType:(unint64_t)type whileMigrating:(BOOL)migrating;
- (BOOL)shouldAccount:(id)account pushbackModel:(id)model actions:(id)actions;
- (BOOL)shouldCacheAccount:(id)account;
- (BOOL)shouldDevice:(id)device processModel:(id)model actions:(id)actions;
- (BOOL)shouldSyncAccount:(id)account;
- (BOOL)shouldSyncDevice:(id)device;
- (HMDAccount)account;
- (HMDAppleAccountContext)accountContext;
- (HMDAppleAccountManager)init;
- (HMDAppleAccountManager)initWithIDSService:(id)service activityBroadcaster:(id)broadcaster dataSource:(id)source;
- (HMDAppleAccountManager)initWithIDSServiceManager:(id)manager;
- (HMDBackingStore)backingStore;
- (HMDDevice)device;
- (id)primaryHandleForAccount:(id)account isForDisplay:(BOOL)display;
- (int64_t)IDSAccountRegistrationError;
- (int64_t)IDSAccountRegistrationStatus;
- (void)__deviceAddedToCurrentAccount:(id)account;
- (void)__deviceRemovedFromCurrentAccount:(id)account;
- (void)__handleAccountAddedOrModified:(BOOL)modified;
- (void)__handleMigrationUpdated:(id)updated;
- (void)__handleRemovedAccountWithCompletion:(id)completion;
- (void)__handleUpdatedName:(id)name;
- (void)__localDataReset:(id)reset;
- (void)__updateMergeIDOnAccount;
- (void)_deregisterForRapportNotifications;
- (void)_registerForRapportNotifications;
- (void)_updatePushToken:(id)token;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)accountChangeObserver:(id)observer observedAddedAccount:(id)account;
- (void)accountChangeObserver:(id)observer observedDeletedAccount:(id)account;
- (void)accountChangeObserver:(id)observer observedModifiedAccount:(id)account;
- (void)configureWithBackingStore:(id)store;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)processAccountModel:(id)model message:(id)message;
- (void)processAccountModelRemove:(id)remove message:(id)message;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
- (void)updateSenderCorrelationIdentifier:(id)identifier;
@end

@implementation HMDAppleAccountManager

- (void)accountChangeObserver:(id)observer observedDeletedAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = accountCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of removed account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke;
  v14[3] = &unk_2797359B0;
  v14[4] = selfCopy;
  v15 = accountCopy;
  v13 = accountCopy;
  dispatch_async(queue, v14);
}

void __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke_2;
  v2[3] = &unk_2797358C8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 __handleRemovedAccountWithCompletion:v2];
}

void __71__HMDAppleAccountManager_accountChangeObserver_observedDeletedAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed handling of removed account %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)accountChangeObserver:(id)observer observedModifiedAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = accountCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of modified account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAppleAccountManager_accountChangeObserver_observedModifiedAccount___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(queue, block);
}

- (void)accountChangeObserver:(id)observer observedAddedAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  accountCopy = account;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = accountCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification of added account %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAppleAccountManager_accountChangeObserver_observedAddedAccount___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(queue, block);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDAppleAccountManager *)self service];
  v9 = [serviceCopy isEqual:service];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification that devices changed on the current account", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    devicesChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy devicesChangeBackoffTimer];
    [devicesChangeBackoffTimer resume];
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v29 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDAppleAccountManager *)self service];
  v9 = [serviceCopy isEqual:service];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification that the current account changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    accounts = [serviceCopy accounts];
    v15 = [accounts countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(accounts);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          [v19 addDelegate:selfCopy queue:selfCopy->_queue];
          [v19 addRegistrationDelegate:selfCopy queue:selfCopy->_queue];
        }

        v16 = [accounts countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer resume];

    accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer2 reset];
  }
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  changedCopy = changed;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification that aliases changed", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
  [accountChangeBackoffTimer resume];

  accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
  [accountChangeBackoffTimer2 reset];
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  service = [(HMDAppleAccountManager *)self service];
  accounts = [service accounts];
  v8 = [accounts containsObject:accountCopy];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that account is active changed", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    accountChangeBackoffTimer = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer resume];

    accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)selfCopy accountChangeBackoffTimer];
    [accountChangeBackoffTimer2 reset];
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  accountChangeBackoffTimer = [(HMDAppleAccountManager *)self accountChangeBackoffTimer];
  v5 = [fireCopy isEqual:accountChangeBackoffTimer];

  if (v5)
  {
    __updateAccount(self, 1);
  }

  else
  {
    devicesChangeBackoffTimer = [(HMDAppleAccountManager *)self devicesChangeBackoffTimer];
    v7 = [fireCopy isEqual:devicesChangeBackoffTimer];

    if (v7)
    {
      __updateDevices(self, 1);
    }
  }
}

- (void)_updatePushToken:(id)token
{
  dispatch_assert_queue_V2(self->_queue);
  if (token)
  {
    updated = [(HMDAppleAccountManager *)self account];
    v6 = updated;
    if (updated)
    {
      v7 = updated;
      updated = __updateCurrentDevice(self, updated);
      v6 = v7;
    }

    MEMORY[0x2821F96F8](updated, v6);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
    v13 = [defaultFormatter privateStringForObjectValue:tokenCopy];
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received push token: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  queue = selfCopy->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HMDAppleAccountManager_connection_didReceivePublicToken___block_invoke;
  v16[3] = &unk_2797359B0;
  v16[4] = selfCopy;
  v17 = tokenCopy;
  v15 = tokenCopy;
  dispatch_async(queue, v16);
}

uint64_t __59__HMDAppleAccountManager_connection_didReceivePublicToken___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isMonitoring];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that the push token changed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) _updatePushToken:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) length];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@We got the push token before the apple account manager is started. Will process this token once it starts up. token length: %lu", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) setPendingPushToken:*(a1 + 40)];
  }
}

- (void)processAccountModelRemove:(id)remove message:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  messageCopy = message;
  account = [(HMDAppleAccountManager *)self account];

  if (!account)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object model received", buf, 0xCu);
LABEL_9:
    }

LABEL_10:

    objc_autoreleasePoolPop(v17);
    goto LABEL_11;
  }

  account2 = [(HMDAppleAccountManager *)self account];
  modelIdentifier = [account2 modelIdentifier];
  uuid = [removeCopy uuid];
  v12 = HMFEqualObjects();

  if ((v12 & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Account update does not match current account identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [[HMDAssertionLogEvent alloc] initWithReason:@"Account update does not match current account identifier"];
    v31 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v31 submitLogEvent:v30];
  }

  uuid2 = [removeCopy uuid];
  account3 = [(HMDAppleAccountManager *)self account];
  modelIdentifier2 = [account3 modelIdentifier];
  v16 = [uuid2 hmf_isEqualToUUID:modelIdentifier2];

  if ((v16 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      account4 = [(HMDAppleAccountManager *)selfCopy3 account];
      modelIdentifier3 = [account4 modelIdentifier];
      uUIDString = [modelIdentifier3 UUIDString];
      uuid3 = [removeCopy uuid];
      [uuid3 UUIDString];
      v25 = v32 = v17;
      *buf = 138543874;
      v34 = v20;
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Account update does not match current account identifier -- current identifier: %@, received identifier: %@", buf, 0x20u);

      v17 = v32;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __setAccount(self, 0, 1);
LABEL_11:
}

- (void)processAccountModel:(id)model message:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  account = [(HMDAppleAccountManager *)self account];

  if (account)
  {
    account2 = [(HMDAppleAccountManager *)self account];
    modelIdentifier = [account2 modelIdentifier];
    uuid = [modelCopy uuid];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Account update does not match current account identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [[HMDAssertionLogEvent alloc] initWithReason:@"Account update does not match current account identifier"];
      v33 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v33 submitLogEvent:v32];
    }

    uuid2 = [modelCopy uuid];
    account3 = [(HMDAppleAccountManager *)self account];
    modelIdentifier2 = [account3 modelIdentifier];
    v16 = [uuid2 hmf_isEqualToUUID:modelIdentifier2];

    if (v16)
    {
      account4 = [(HMDAppleAccountManager *)self account];
      [account4 transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        account5 = [(HMDAppleAccountManager *)selfCopy2 account];
        modelIdentifier3 = [account5 modelIdentifier];
        uUIDString = [modelIdentifier3 UUIDString];
        uuid3 = [modelCopy uuid];
        [uuid3 UUIDString];
        v27 = v34 = v19;
        *buf = 138543874;
        v36 = v22;
        v37 = 2112;
        v38 = uUIDString;
        v39 = 2112;
        v40 = v27;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Account update does not match current account identifier -- current identifier: %@, received identifier: %@", buf, 0x20u);

        v19 = v34;
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v18 = [[HMDAccount alloc] initWithObjectModel:modelCopy];
    if (v18)
    {
      __setAccount(self, v18, 1);
    }
  }
}

- (BOOL)isModelCurrentAccount:(id)account
{
  accountCopy = account;
  accountContext = [(HMDAppleAccountManager *)self accountContext];
  if (accountContext)
  {
    v6 = [HMDAccountIdentifier accountIdentifierForAppleAccountContext:accountContext];
    identifier = [accountCopy identifier];

    if (identifier)
    {
      identifier2 = [accountCopy identifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      identifier2 = [v6 identifier];
      uuid = [accountCopy uuid];
      v9 = HMFEqualObjects();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)primaryHandleForAccount:(id)account isForDisplay:(BOOL)display
{
  accountCopy = account;
  if (accountCopy)
  {
    account = [(HMDAppleAccountManager *)self account];
    if ([accountCopy isEqual:account])
    {
      service = [(HMDAppleAccountManager *)self service];
      v9 = service;
      if (display)
      {
        [service hmd_preferredDisplayHandle];
      }

      else
      {
        [service hmd_preferredHandle];
      }
      v11 = ;

      handles = [accountCopy handles];
      v13 = [handles containsObject:v11];

      if (v13)
      {
        v10 = v11;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isDeviceLocallyPairedWatch:(id)watch
{
  watchCopy = watch;
  watchManager = [(HMDAppleAccountManager *)self watchManager];
  connectedWatches = [watchManager connectedWatches];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HMDAppleAccountManager_isDeviceLocallyPairedWatch___block_invoke;
  v10[3] = &unk_27972B178;
  v11 = watchCopy;
  v7 = watchCopy;
  v8 = [connectedWatches na_any:v10];

  return v8;
}

uint64_t __53__HMDAppleAccountManager_isDeviceLocallyPairedWatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  if (v3)
  {
    v4 = [*(a1 + 32) idsIdentifier];
    v5 = [v3 hmf_isEqualToUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCurrentDeviceDataOwnerForDevice:(id)device
{
  deviceCopy = device;
  v5 = ([deviceCopy isCurrentDevice] & 1) != 0 || -[HMDAppleAccountManager isDeviceLocallyPairedWatch:](self, "isDeviceLocallyPairedWatch:", deviceCopy);

  return v5;
}

- (BOOL)shouldDevice:(id)device processModel:(id)model actions:(id)actions
{
  v32 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  modelCopy = model;
  actionsCopy = actions;
  if (deviceCopy && modelCopy)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() & 1;
    if (v11)
    {
      v12 = modelCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = modelCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (!v11 && (isKindOfClass & 1) == 0)
    {
      goto LABEL_25;
    }

    if ([actionsCopy source] == 2 && objc_msgSend(deviceCopy, "isCurrentDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = deviceCopy;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_24:

        objc_autoreleasePoolPop(v18);
LABEL_25:
        v27 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      v22 = "%{public}@The cloud updated our current device, dropping change.";
    }

    else
    {
      if ([actionsCopy source] || -[HMDAppleAccountManager isCurrentDeviceDataOwnerForDevice:](self, "isCurrentDeviceDataOwnerForDevice:", deviceCopy) || !objc_msgSend(deviceCopy, "isCloudTracked"))
      {
        v27 = 1;
        goto LABEL_27;
      }

      v18 = objc_autoreleasePoolPush();
      v28 = deviceCopy;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      v22 = "%{public}@This device is tracked by a cloud model, dropping change.";
    }

    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, v22, &v30, 0xCu);

    goto LABEL_24;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Manager cannot confirm account model process due to nil parameter.", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_28:

  return v27;
}

- (BOOL)shouldAccount:(id)account pushbackModel:(id)model actions:(id)actions
{
  v65 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  modelCopy = model;
  actionsCopy = actions;
  if (accountCopy && modelCopy)
  {
    if ([(HMDAppleAccountManager *)self shouldSyncAccount:accountCopy])
    {
      v11 = modelCopy;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v50 = v13;

      v14 = v11;
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v49 = v16;

      if (isKindOfClass)
      {
        if (![(HMDAppleAccountManager *)self isServiceActive])
        {
          v35 = objc_autoreleasePoolPush();
          selfCopy = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            v61 = v38;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Not pushing back account handles while inactive", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v35);
          goto LABEL_53;
        }

        if ([actionsCopy source] != 2)
        {
LABEL_53:
          v28 = 0;
          goto LABEL_54;
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = [accountCopy handles];
        v17 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v17)
        {
          v45 = actionsCopy;
          v18 = *v56;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v55 + 1) + 8 * i);
              modelIdentifier = [v20 modelIdentifier];
              uuid = [v50 uuid];
              v23 = [modelIdentifier hmf_isEqualToUUID:uuid];

              if (v23)
              {
                v17 = v20;
                goto LABEL_41;
              }
            }

            v17 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_41:
          actionsCopy = v45;
        }

        if ([v17 isLocallyTracked])
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v61 = v42;
            v62 = 2112;
            v63 = v17;
            v43 = "%{public}@This handle is locally tracked, pushing back -- accountHandle: %@";
LABEL_50:
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, v43, buf, 0x16u);

            goto LABEL_51;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if ((v15 & 1) == 0 || [actionsCopy source] != 2)
        {
          goto LABEL_53;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        obja = [accountCopy devices];
        v17 = [obja countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v17)
        {
          v46 = actionsCopy;
          v29 = *v52;
          while (2)
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v52 != v29)
              {
                objc_enumerationMutation(obja);
              }

              v31 = *(*(&v51 + 1) + 8 * j);
              modelIdentifier2 = [v31 modelIdentifier];
              uuid2 = [v49 uuid];
              v34 = [modelIdentifier2 hmf_isEqualToUUID:uuid2];

              if (v34)
              {
                v17 = v31;
                goto LABEL_46;
              }
            }

            v17 = [obja countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_46:
          actionsCopy = v46;
        }

        if ([v17 isCurrentDevice])
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v61 = v42;
            v62 = 2112;
            v63 = v17;
            v43 = "%{public}@This is our current device, pushing back -- device: %@";
            goto LABEL_50;
          }

LABEL_51:

          objc_autoreleasePoolPop(v39);
          v28 = 1;
LABEL_54:

          goto LABEL_55;
        }
      }

      goto LABEL_53;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Manager cannot confirm account model process due to nil parameter.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = 0;
LABEL_55:

  return v28;
}

- (BOOL)shouldSyncDevice:(id)device
{
  deviceCopy = device;
  v8 = deviceCopy && ([deviceCopy account], v6 = v5 = deviceCopy;

  return v8;
}

- (BOOL)shouldSyncAccount:(id)account
{
  accountCopy = account;
  v7 = 0;
  if (accountCopy)
  {
    account = [(HMDAppleAccountManager *)self account];
    v6 = HMFEqualObjects();

    if (v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)shouldCacheAccount:(id)account
{
  accountCopy = account;
  account = [(HMDAppleAccountManager *)self account];

  return account == accountCopy;
}

- (HMDDevice)device
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  account = [(HMDAppleAccountManager *)self account];
  devices = [account devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isCurrentDevice])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)__deviceRemovedFromCurrentAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDAppleAccountManager___deviceRemovedFromCurrentAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

void __60__HMDAppleAccountManager___deviceRemovedFromCurrentAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isCurrentDevice];
  if (v6)
  {
    v7 = [*(a1 + 40) device];

    if (!v7)
    {
      v8 = *(a1 + 40);

      __handleUpdatedDevice_109515(v8, 0);
    }
  }
}

- (void)__deviceAddedToCurrentAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDAppleAccountManager___deviceAddedToCurrentAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

void __56__HMDAppleAccountManager___deviceAddedToCurrentAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 isCurrentDevice];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v7 device];
    __handleUpdatedDevice_109515(v7, v8);
  }
}

- (int64_t)IDSAccountRegistrationError
{
  service = [(HMDAppleAccountManager *)self service];
  hmd_registrationError = [service hmd_registrationError];

  return hmd_registrationError;
}

- (int64_t)IDSAccountRegistrationStatus
{
  service = [(HMDAppleAccountManager *)self service];
  hmd_registrationStatus = [service hmd_registrationStatus];

  return hmd_registrationStatus;
}

- (BOOL)isServiceActive
{
  service = [(HMDAppleAccountManager *)self service];
  hmd_isActive = [service hmd_isActive];

  return hmd_isActive;
}

- (void)updateSenderCorrelationIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  account = [(HMDAppleAccountManager *)self account];
  v6 = account;
  if (account)
  {
    senderCorrelationIdentifier = [account senderCorrelationIdentifier];
    v8 = senderCorrelationIdentifier;
    if (senderCorrelationIdentifier && [senderCorrelationIdentifier isEqual:identifierCopy])
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@MergeID is the same, not updating", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      [v6 setSenderCorrelationIdentifier:identifierCopy];
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updated mergeID for currentAccount : %@. Also going to ask IDS about the mergeID.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      queue = selfCopy2->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDAppleAccountManager_updateSenderCorrelationIdentifier___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy2;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Current account went away, not updating", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

- (void)__updateMergeIDOnAccount
{
  v36 = *MEMORY[0x277D85DE8];
  account = [(HMDAppleAccountManager *)self account];
  handles = [account handles];
  firstObject = [handles firstObject];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (firstObject)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [account shortDescription];
      *buf = 138543618;
      v31 = v10;
      v32 = 2112;
      v33 = shortDescription;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Trying to update mergeID on currentAccount: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    value = [firstObject value];
    if ([value _appearsToBeEmail])
    {
      v13 = MEMORY[0x259C01FB0](value);
    }

    else if ([value _appearsToBeBusinessID])
    {
      v13 = MEMORY[0x259C01F90](value);
    }

    else
    {
      v13 = IDSCopyIDForPhoneNumber();
    }

    v15 = v13;

    if (v15)
    {
      mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
      v29 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v18 = +[HMDIDSServiceManager sharedIDSServiceName];
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      queue = selfCopy->_queue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke;
      v26[3] = &unk_27972B150;
      v26[4] = selfCopy;
      v27 = v15;
      v28 = account;
      [mEMORY[0x277D18728] currentRemoteDevicesForDestinations:v17 service:v18 listenerID:stringGUID queue:queue completionBlock:v26];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        value2 = [firstObject value];
        *buf = 138543874;
        v31 = v24;
        v32 = 2112;
        v33 = value2;
        v34 = 2112;
        v35 = firstObject;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine destination with handle value: %@, account handle: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    if (v9)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = account;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Account is missing a handle so cannot update mergeID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_2;
  v5[3] = &unk_27972B128;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_3;
  v8[3] = &unk_27972B100;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 48);
  v11 = a4;
  [a3 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __50__HMDAppleAccountManager___updateMergeIDOnAccount__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 senderCorrelationIdentifier];
  if (v7)
  {
    v8 = [*(a1 + 32) account];
    [v8 setSenderCorrelationIdentifier:v7];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) identifier];
      v20 = 138544130;
      v21 = v12;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Found mergeID %@ for destination %@, new attribute %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    *a4 = 1;
    **(a1 + 56) = 1;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) account];
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Did not get the mergeID after querying IDS: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (HMDAccount)account
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_account;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDAppleAccountContext)accountContext
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_accountContext;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)__handleMigrationUpdated:(id)updated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDAppleAccountManager___handleMigrationUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__HMDAppleAccountManager___handleMigrationUpdated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F910] systemInfo];
  v3 = [v2 isMigrating];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that migration completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) accountChangeBackoffTimer];
    [v8 resume];

    v9 = [*(a1 + 32) accountChangeBackoffTimer];
    [v9 reset];

    v10 = [*(a1 + 32) devicesChangeBackoffTimer];
    [v10 resume];
  }
}

- (void)__handleUpdatedName:(id)name
{
  userInfo = [name userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D0F758]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__HMDAppleAccountManager___handleUpdatedName___block_invoke;
    v9[3] = &unk_2797359B0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(queue, v9);
  }
}

void __46__HMDAppleAccountManager___handleUpdatedName___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) device];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 name];
    v5 = HMFEqualObjects();

    if ((v5 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 40);
        v18 = 138543618;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updating name: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
      v12 = [*(a1 + 32) backingStore];
      v13 = [v12 transaction:@"Update Device Name" options:v11];

      v14 = [HMDDeviceModel alloc];
      v15 = [v3 modelIdentifier];
      v16 = [v3 modelParentIdentifier];
      v17 = [(HMDBackingStoreModelObject *)v14 initWithObjectChangeType:2 uuid:v15 parentUUID:v16];

      [(HMDDeviceModel *)v17 setName:*(a1 + 40)];
      [v13 add:v17];
      [v13 run];
    }
  }
}

- (void)__handleRemovedAccountWithCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  isMonitoring = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isMonitoring)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was removed", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    if (aa_primaryAppleAccount)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_FAULT, "%{public}@Got primary iCloud account removed notification even though user is still signed in", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = objc_autoreleasePoolPush();
      v18 = v14;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Got primary iCloud account removed notification even though user is still signed in", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2721];
      completionCopy[2](completionCopy, v21);
    }

    else
    {
      [HMDPersistentStore resetConfiguration:2];
      os_unfair_recursive_lock_lock_with_options();
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        account = v25->_account;
        v38 = 138543618;
        v39 = v27;
        v40 = 2112;
        v41 = account;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Current account: %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      accountContext = v25->_accountContext;
      v25->_accountContext = 0;

      v25->_loggedIn = 0;
      v30 = v25->_account;
      if (v30)
      {
        __removeAccount(v25, v25->_account);
      }

      v31 = objc_autoreleasePoolPush();
      v32 = v25;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Primary apple account is removed & logged out", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      os_unfair_recursive_lock_unlock();
      if (!v30)
      {
        v35 = +[HMDMainDriver driver];
        homeManager = [v35 homeManager];
        [homeManager _eraseLocalHomeConfigurationAfterSignOut];
      }

      settings = [(HMDAppleAccountManager *)v32 settings];
      [settings synchronize];

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v22;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring account notification", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy[2](completionCopy, v23);
  }
}

- (void)__handleAccountAddedOrModified:(BOOL)modified
{
  modifiedCopy = modified;
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  isMonitoring = [(HMDAppleAccountManager *)self isMonitoring];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isMonitoring)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification account was modified", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    __updateAccountContext(selfCopy);
    settings = [(HMDAppleAccountManager *)selfCopy settings];
    [settings synchronize];

    if (modifiedCopy)
    {
      account = [(HMDAppleAccountManager *)selfCopy account];

      if (!account)
      {
        v13 = __createAccount(selfCopy);
        if (v13)
        {
          __addAccount(selfCopy, v13, 0);
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            v20 = 138543362;
            v21 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to create account", &v20, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
        }
      }
    }

    notificationCenter = [(HMDAppleAccountManager *)selfCopy notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleAccountManagerAccountModifiedNotification" object:selfCopy];

    [(HMDAppleAccountManager *)selfCopy __updateMergeIDOnAccount];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring account notification", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)__localDataReset:(id)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDAppleAccountManager___localDataReset___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__HMDAppleAccountManager___localDataReset___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Repushing account transactions", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [*(a1 + 32) account];
    if (v6 || (__createAccount(*(a1 + 32)), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [*(a1 + 32) accountContext];

      if (v8)
      {
        __addAccount(*(a1 + 32), v7, 1);
LABEL_14:

        return;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-create account", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v7 = 0;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot add account after local reset", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_14;
  }
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMDAppleAccountManager_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__HMDAppleAccountManager_stop__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:0];
    [*(a1 + 32) _deregisterForRapportNotifications];
    v6 = [*(a1 + 32) service];
    [v6 removeDelegate:*(a1 + 32)];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [*(a1 + 32) service];
    v8 = [v7 accounts];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          [v13 removeDelegate:*(a1 + 32)];
          [v13 removeRegistrationDelegate:*(a1 + 32)];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)start
{
  [(HMDAppleAccountManager *)self backingStore];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDAppleAccountManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDAppleAccountManager_start__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isMonitoring] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:1];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 notificationCenter];
      v9 = *MEMORY[0x277D0F760];
      v10 = [MEMORY[0x277D0F910] systemInfo];
      [v8 addObserver:v7 selector:sel___handleUpdatedName_ name:v9 object:v10];

      v11 = [v7 notificationCenter];
      v12 = *MEMORY[0x277D0F750];
      v13 = [MEMORY[0x277D0F910] systemInfo];
      [v11 addObserver:v7 selector:sel___handleMigrationUpdated_ name:v12 object:v13];

      v14 = [v7 notificationCenter];
      [v14 addObserver:v7 selector:sel___localDataReset_ name:@"HMDBackingStoreLocalDataReset" object:0];

      v15 = *(a1 + 32);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 service];
    [v16 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];

    v17 = [*(a1 + 32) activityBroadcaster];
    [v17 configureWithQueue:*(*(a1 + 32) + 16)];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [*(a1 + 32) service];
    v19 = [v18 accounts];

    v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v43 + 1) + 8 * i);
          [v24 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
          [v24 addRegistrationDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
        }

        v21 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v21);
    }

    __updateAccountContext(*(a1 + 32));
    v25 = [*(a1 + 32) account];
    v26 = [*(a1 + 32) accountContext];

    if (v26)
    {
      v27 = *(a1 + 32);
      if (v25)
      {
        __updateAccount(v27, 0);
        __updateDevices(*(a1 + 32), 0);
      }

      else
      {
        v28 = __createAccount(v27);
        if (v28)
        {
          __addAccount(*(a1 + 32), v28, 0);
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = *(a1 + 32);
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v49 = v32;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create account", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
        }
      }
    }

    else if (v25)
    {
      __removeAccount(*(a1 + 32), v25);
    }

    v33 = [*(a1 + 32) pendingPushToken];

    if (v33)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 32);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v37;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@We might have a missed the didReceivePublicToken earlier. Let's set the token first.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v38 = *(a1 + 32);
      v39 = [v38 pendingPushToken];
      [v38 _updatePushToken:v39];

      [*(a1 + 32) setPendingPushToken:0];
    }

    [*(a1 + 32) __updateMergeIDOnAccount];
    v40 = [*(a1 + 32) notificationCenter];
    [v40 postNotificationName:@"HMDAppleAccountManagerResolved" object:*(a1 + 32)];

    [*(a1 + 32) _registerForRapportNotifications];
    v41 = *(a1 + 32);
    v42 = [v41 accountChangeObserver];
    [v42 setDelegate:v41];
  }
}

- (HMDBackingStore)backingStore
{
  os_unfair_recursive_lock_lock_with_options();
  backingStore = self->_backingStore;
  if (backingStore)
  {
    v4 = backingStore;
    os_unfair_recursive_lock_unlock();

    return v4;
  }

  else
  {
    result = _HMFPreconditionFailure();
    __break(1u);
  }

  return result;
}

- (void)configureWithBackingStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = storeCopy;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_backingStore)
  {
LABEL_7:
    _HMFPreconditionFailure();
    __break(1u);
    return;
  }

  self->_backingStore = v5;

  os_unfair_recursive_lock_unlock();
}

- (ACAccountStore)accountStore
{
  v2 = self->_accountStore;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_deregisterForRapportNotifications
{
  if ([(HMDAppleAccountManager *)self isRapportIdentitiesChangedNotificationTokenValid])
  {
    notify_cancel([(HMDAppleAccountManager *)self rapportIdentitiesChangedNotificationToken]);

    [(HMDAppleAccountManager *)self setRapportIdentitiesChangedNotificationTokenValid:0];
  }
}

- (void)_registerForRapportNotifications
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(HMDAppleAccountManager *)self isRapportIdentitiesChangedNotificationTokenValid])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __58__HMDAppleAccountManager__registerForRapportNotifications__block_invoke;
    v12 = &unk_27972FE68;
    objc_copyWeak(&v13, &location);
    v4 = notify_register_dispatch("com.apple.rapport.identitiesChanged", &self->_rapportIdentitiesChangedNotificationToken, queue, &v9);
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543874;
        v16 = v8;
        v17 = 2080;
        v18 = "com.apple.rapport.identitiesChanged";
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for %s: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      [(HMDAppleAccountManager *)self setRapportIdentitiesChangedNotificationTokenValid:1, v9, v10, v11, v12];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __58__HMDAppleAccountManager__registerForRapportNotifications__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that rapport identity changed, update current device", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [v3 account];
    if (v6)
    {
      __updateCurrentDevice(v3, v6);
    }
  }
}

- (BOOL)maybeSkipUpdatesOfType:(unint64_t)type whileMigrating:(BOOL)migrating
{
  migratingCopy = migrating;
  v22 = *MEMORY[0x277D85DE8];
  v6 = @"devices";
  if (type != 1)
  {
    v6 = 0;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"account";
  }

  isServiceActive = [(HMDAppleAccountManager *)self isServiceActive];
  if (!isServiceActive)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping update of %{public}@ while the service is inactive, will try again later", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  if (!migratingCopy)
  {
    return !isServiceActive;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping update of %{public}@ during migration, will try again later", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  return 1;
}

- (HMDAppleAccountManager)initWithIDSService:(id)service activityBroadcaster:(id)broadcaster dataSource:(id)source
{
  v47 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  broadcasterCopy = broadcaster;
  sourceCopy = source;
  if (serviceCopy)
  {
    v44.receiver = self;
    v44.super_class = HMDAppleAccountManager;
    v12 = [(HMDAppleAccountManager *)&v44 init];
    if (v12)
    {
      v13 = HMFGetOSLogHandle();
      logger = v12->_logger;
      v12->_logger = v13;

      v12->_loggedIn = 0;
      queue = [sourceCopy queue];
      queue = v12->_queue;
      v12->_queue = queue;

      objc_storeStrong(&v12->_service, service);
      objc_storeStrong(&v12->_activityBroadcaster, broadcaster);
      accountChangeObserver = [sourceCopy accountChangeObserver];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = accountChangeObserver;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      accountChangeObserver = v12->_accountChangeObserver;
      v12->_accountChangeObserver = v19;
      v21 = v19;

      apsConnection = [sourceCopy apsConnection];
      pushConnection = v12->_pushConnection;
      v12->_pushConnection = apsConnection;

      [(HMDAPSConnection *)v12->_pushConnection setDelegate:v12];
      notificationCenter = [sourceCopy notificationCenter];
      notificationCenter = v12->_notificationCenter;
      v12->_notificationCenter = notificationCenter;

      accountStore = [sourceCopy accountStore];
      accountStore = v12->_accountStore;
      v12->_accountStore = accountStore;

      v28 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:3 maximumTimeInterval:1 exponentialFactor:1.0 options:86400.0];
      accountChangeBackoffTimer = v12->_accountChangeBackoffTimer;
      v12->_accountChangeBackoffTimer = v28;

      accountChangeBackoffTimer = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [accountChangeBackoffTimer setDelegate:v12];

      accountChangeBackoffTimer2 = [(HMDAppleAccountManager *)v12 accountChangeBackoffTimer];
      [accountChangeBackoffTimer2 setDelegateQueue:v12->_queue];

      v32 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:15.0];
      devicesChangeBackoffTimer = v12->_devicesChangeBackoffTimer;
      v12->_devicesChangeBackoffTimer = v32;

      v34 = +[HMDWatchManager sharedManager];
      watchManager = v12->_watchManager;
      v12->_watchManager = v34;

      devicesChangeBackoffTimer = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [devicesChangeBackoffTimer setDelegate:v12];

      devicesChangeBackoffTimer2 = [(HMDAppleAccountManager *)v12 devicesChangeBackoffTimer];
      [devicesChangeBackoffTimer2 setDelegateQueue:v12->_queue];

      __updateAccountContext(v12);
    }

    selfCopy = v12;
    v39 = selfCopy;
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v42;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Service is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    v39 = 0;
  }

  return v39;
}

- (HMDAppleAccountManager)initWithIDSServiceManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating an HMDAppleAccountManager", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = HMDispatchQueueNameString();
  uTF8String = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(uTF8String, v11);

  v13 = +[HMDDeviceCapabilities deviceCapabilities];
  LODWORD(v11) = [v13 isResidentCapable];

  activityBroadcaster = 0;
  if (v11)
  {
    activityBroadcaster = [managerCopy activityBroadcaster];
  }

  service = [managerCopy service];
  v16 = [[HMDAppleAccountManagerDefaultDataSource alloc] initWithQueue:v12];
  v17 = [(HMDAppleAccountManager *)selfCopy initWithIDSService:service activityBroadcaster:activityBroadcaster dataSource:v16];

  return v17;
}

- (HMDAppleAccountManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t104 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t104, &__block_literal_global_109650);
  }

  v3 = logCategory__hmf_once_v105;

  return v3;
}

uint64_t __37__HMDAppleAccountManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v105;
  logCategory__hmf_once_v105 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMDAppleAccountManager)sharedManager
{
  v2 = +[HMDRegistry shared];
  appleAccountManager = [v2 appleAccountManager];

  return appleAccountManager;
}

@end