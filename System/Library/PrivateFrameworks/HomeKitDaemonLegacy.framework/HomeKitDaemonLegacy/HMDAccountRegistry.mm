@interface HMDAccountRegistry
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (HMDAccountRegistry)sharedRegistry;
+ (id)logCategory;
- (BOOL)accountExistsForHandle:(id)handle;
- (BOOL)deviceExistsForDevice:(id)device;
- (BOOL)started;
- (HMDAccountRegistry)initWithAppleAccountManager:(id)manager remoteAccountManager:(id)accountManager;
- (HMDAppleAccountManager)appleAccountManager;
- (HMDRemoteAccountManager)remoteAccountManager;
- (NSArray)accounts;
- (id)accountForHandle:(id)handle exists:(BOOL *)exists;
- (id)attributeDescriptions;
- (id)deviceForAddress:(id)address;
- (id)deviceForDevice:(id)device exists:(BOOL *)exists;
- (id)deviceForHandle:(id)handle exists:(BOOL *)exists;
- (id)deviceForIDSIdentifier:(id)identifier;
- (id)deviceForIdentifier:(id)identifier;
- (id)deviceForPushToken:(id)token;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__handleAddedRemoteAccount:(id)account;
- (void)__handleAppleAccountDeviceAdded:(id)added;
- (void)__handleAppleAccountHandlesUpdated:(id)updated;
- (void)__handleAppleAccountUpdate:(id)update;
- (void)__handleRemovedRemoteAccount:(id)account;
- (void)_resolveAccountForHandle:(id)handle completionHandler:(id)handler;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation HMDAccountRegistry

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_41505 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_41505, &__block_literal_global_41506);
  }

  v3 = logCategory__hmf_once_v25_41507;

  return v3;
}

uint64_t __33__HMDAccountRegistry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_41507;
  logCategory__hmf_once_v25_41507 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMDAccountRegistry)sharedRegistry
{
  v2 = +[HMDRegistry shared];
  accountRegistry = [v2 accountRegistry];

  return accountRegistry;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_started);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___HMDAccountRegistry;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v7;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAccountManager);

  return WeakRetained;
}

- (HMDAppleAccountManager)appleAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appleAccountManager);

  return WeakRetained;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  accounts = [(HMDAccountRegistry *)self accounts];
  v9 = [accounts countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)_resolveAccountForHandle:(id)handle completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  handlerCopy = handler;
  if (handleCopy)
  {
    appleAccountManager = [(HMDAccountRegistry *)self appleAccountManager];
    account = [appleAccountManager account];

    handles = [account handles];
    v11 = [handles containsObject:handleCopy];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        shortDescription = [handleCopy shortDescription];
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = shortDescription;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not resolving handle, %@, on our account", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, account, 0);
      }
    }

    else
    {

      account = [(HMDAccountRegistry *)self remoteAccountManager];
      [account _resolveAccountForHandle:handleCopy completionHandler:handlerCopy];
    }
  }
}

- (void)__handleRemovedRemoteAccount:(id)account
{
  accountCopy = account;
  clientQueue = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(clientQueue, v7);
}

void __51__HMDAccountRegistry___handleRemovedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountRemoved(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAddedRemoteAccount:(id)account
{
  accountCopy = account;
  clientQueue = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(clientQueue, v7);
}

void __49__HMDAccountRegistry___handleAddedRemoteAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  if (v8)
  {
    v5 = [*(a1 + 40) appleAccountManager];
    v6 = [v5 account];
    v7 = [v8 isRelatedToAccount:v6];

    if ((v7 & 1) == 0)
    {
      __notifyDelegateAccountAdded(*(a1 + 40), v8);
    }
  }
}

- (void)__handleAppleAccountDeviceAdded:(id)added
{
  addedCopy = added;
  clientQueue = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(clientQueue, v7);
}

void __54__HMDAccountRegistry___handleAppleAccountDeviceAdded___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = [*(a1 + 40) appleAccountManager];
  v6 = [v5 account];
  v7 = [v4 isEqualToAccount:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v11 shortDescription];
        v21 = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification that device was added to our account: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = *(a1 + 40);
      v18 = MEMORY[0x277CBEB98];
      v19 = [v11 handles];
      v20 = [v18 setWithArray:v19];
      __cleanupRemoteDevicesWithHandles(v17, v20);
    }
  }
}

- (void)__handleAppleAccountHandlesUpdated:(id)updated
{
  updatedCopy = updated;
  clientQueue = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(clientQueue, v7);
}

void __57__HMDAccountRegistry___handleAppleAccountHandlesUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v7 = v3;

  v4 = [*(a1 + 40) appleAccountManager];
  v5 = [v4 account];
  v6 = [v7 isEqualToAccount:v5];

  if (v6)
  {
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v7);
  }
}

- (void)__handleAppleAccountUpdate:(id)update
{
  updateCopy = update;
  clientQueue = [(HMDAccountRegistry *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(clientQueue, v7);
}

void __49__HMDAccountRegistry___handleAppleAccountUpdate___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"HMDPreviousAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification current account added", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    __registerForAccountUpdates(*(a1 + 40), v5);
    __cleanupRemoteAccountsRelatedToAccount(*(a1 + 40), v5);
    v14 = [v5 devices];
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v14, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * v20) handles];
          [v15 addObjectsFromArray:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    __cleanupRemoteDevicesWithHandles(*(a1 + 40), v15);
    __notifyDelegateAccountAdded(*(a1 + 40), v5);
  }

  else if (v9)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 40);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Received notification current account removed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    __registerForAccountUpdates(*(a1 + 40), 0);
    __notifyDelegateAccountRemoved(*(a1 + 40), v9);
  }
}

- (id)deviceForIDSIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  v6 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v24 = selfCopy;
    v22 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        devices = [v10 devices];
        v12 = [devices countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          v23 = v7;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(devices);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              idsIdentifier = [v16 idsIdentifier];
              if ([idsIdentifier isEqual:identifierCopy])
              {

LABEL_20:
                v20 = v16;

                selfCopy = v24;
                goto LABEL_21;
              }

              sharedUserIDSIdentifier = [v16 sharedUserIDSIdentifier];
              v19 = [sharedUserIDSIdentifier isEqual:identifierCopy];

              if (v19)
              {
                goto LABEL_20;
              }
            }

            v13 = [devices countByEnumeratingWithState:&v25 objects:v33 count:16];
            v7 = v23;
            selfCopy = v24;
            v8 = v22;
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
      v20 = 0;
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (id)deviceForPushToken:(id)token
{
  v42 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  v6 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = *v36;
    v26 = selfCopy;
    v23 = *v36;
    do
    {
      v8 = 0;
      v24 = v6;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          v25 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              globalHandles = [v15 globalHandles];
              v17 = [globalHandles countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v28;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v28 != v19)
                    {
                      objc_enumerationMutation(globalHandles);
                    }

                    if ([*(*(&v27 + 1) + 8 * j) matchesPushToken:tokenCopy])
                    {
                      v21 = v15;

                      selfCopy = v26;
                      goto LABEL_26;
                    }
                  }

                  v18 = [globalHandles countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v25;
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
            selfCopy = v26;
            v7 = v23;
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v24);
      v6 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
      v21 = 0;
    }

    while (v6);
  }

  else
  {
    v21 = 0;
  }

LABEL_26:

  return v21;
}

- (id)deviceForDevice:(id)device exists:(BOOL *)exists
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (exists)
  {
    *exists = 0;
  }

  if (deviceCopy)
  {
    v8 = __deviceForDevice(self, deviceCopy);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    if (v8 && exists)
    {
      *exists = 1;
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)deviceExistsForDevice:(id)device
{
  if (!device)
  {
    return 0;
  }

  v3 = __deviceForDevice(self, device);
  v4 = v3 != 0;

  return v4;
}

- (id)deviceForHandle:(id)handle exists:(BOOL *)exists
{
  v15[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = handleCopy;
  if (exists)
  {
    *exists = 0;
  }

  if (handleCopy)
  {
    v8 = __deviceForHandle(self, handleCopy);
    v9 = v8;
    if (v8)
    {
      if (exists)
      {
        *exists = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDDevice alloc];
      identifier = [v7 identifier];
      v15[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v10 = [(HMDDevice *)v11 initWithIdentifier:identifier handles:v13 name:0 productInfo:0 version:0 capabilities:0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)deviceForAddress:(id)address
{
  v24 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    idsIdentifier = [addressCopy idsIdentifier];
    v7 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:idsIdentifier];

    v8 = __deviceForHandle(self, v7);
    if (v8)
    {
      v9 = v8;
      v10 = v9;
    }

    else
    {
      idsDestination = [v5 idsDestination];
      v12 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];

      v13 = __deviceForHandle(self, v12);
      v9 = v13;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v18;
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Synthesizing HMDDevice for %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v14 = [[HMDDevice alloc] initWithDeviceAddress:v5];
      }

      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)deviceForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    selfCopy = self;
    v6 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(selfCopy);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) deviceForIdentifier:{identifierCopy, v13}];
          if (v10)
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(HMDAccountRegistry *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)accountForHandle:(id)handle exists:(BOOL *)exists
{
  v15[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = handleCopy;
  if (exists)
  {
    *exists = 0;
  }

  if (handleCopy)
  {
    v8 = __accountForHandle(self, handleCopy);
    v9 = v8;
    if (v8)
    {
      if (exists)
      {
        *exists = 1;
      }

      v10 = v8;
    }

    else
    {
      v11 = [HMDAccount alloc];
      v12 = [HMDAccountIdentifier accountIdentifierForAccountHandle:v7];
      v15[0] = v7;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v10 = [(HMDAccount *)v11 initWithIdentifier:v12 handles:v13 devices:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)accountExistsForHandle:(id)handle
{
  if (!handle)
  {
    return 0;
  }

  v3 = __accountForHandle(self, handle);
  v4 = v3 != 0;

  return v4;
}

- (NSArray)accounts
{
  v3 = [MEMORY[0x277CBEB58] set];
  appleAccountManager = [(HMDAccountRegistry *)self appleAccountManager];
  account = [appleAccountManager account];

  if (account)
  {
    [v3 addObject:account];
  }

  remoteAccountManager = [(HMDAccountRegistry *)self remoteAccountManager];
  accounts = [remoteAccountManager accounts];
  [v3 addObjectsFromArray:accounts];

  v8 = objc_msgSend_copy(v3);

  return v8;
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  remoteAccountManager = [(HMDAccountRegistry *)selfCopy remoteAccountManager];
  [remoteAccountManager reset];
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  __registerForAccountUpdates(selfCopy, 0);
  v7 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)selfCopy willChangeValueForKey:v7];

  os_unfair_lock_lock_with_options();
  selfCopy->_started = 0;
  os_unfair_lock_unlock(&selfCopy->_lock);
  v8 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)selfCopy didChangeValueForKey:v8];
}

- (void)start
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  appleAccountManager = [(HMDAccountRegistry *)selfCopy appleAccountManager];
  account = [appleAccountManager account];
  if (account)
  {
    __registerForAccountUpdates(selfCopy, account);
    clientQueue = [(HMDAccountRegistry *)selfCopy clientQueue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __27__HMDAccountRegistry_start__block_invoke;
    v16 = &unk_2797359B0;
    v17 = selfCopy;
    v18 = account;
    dispatch_async(clientQueue, &v13);
  }

  [appleAccountManager start];
  remoteAccountManager = [(HMDAccountRegistry *)selfCopy remoteAccountManager];
  [remoteAccountManager start];

  v11 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)selfCopy willChangeValueForKey:v11];

  os_unfair_lock_lock_with_options();
  selfCopy->_started = 1;
  os_unfair_lock_unlock(&selfCopy->_lock);
  v12 = NSStringFromSelector(sel_started);
  [(HMDAccountRegistry *)selfCopy didChangeValueForKey:v12];
}

void __27__HMDAccountRegistry_start__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  __cleanupRemoteAccountsRelatedToAccount(*(a1 + 32), *(a1 + 40));
  v2 = [*(a1 + 40) devices];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{2 * objc_msgSend(v2, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) handles];
        [v3 addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  __cleanupRemoteDevicesWithHandles(*(a1 + 32), v3);
}

- (BOOL)started
{
  os_unfair_lock_lock_with_options();
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accounts = [(HMDAccountRegistry *)self accounts];
  v5 = [v3 initWithName:@"AC" value:accounts];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (HMDAccountRegistry)initWithAppleAccountManager:(id)manager remoteAccountManager:(id)accountManager
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  v19.receiver = self;
  v19.super_class = HMDAccountRegistry;
  v8 = [(HMDAccountRegistry *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = HMDispatchQueueNameString();
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    clientQueue = v9->_clientQueue;
    v9->_clientQueue = v13;

    objc_storeWeak(&v9->_appleAccountManager, managerCopy);
    objc_storeWeak(&v9->_remoteAccountManager, accountManagerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel___handleAppleAccountUpdate_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:managerCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel___handleAddedRemoteAccount_ name:@"HMDRemoteAccountManagerAddedAccountNotification" object:accountManagerCopy];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel___handleRemovedRemoteAccount_ name:@"HMDRemoteAccountManagerRemovedAccountNotification" object:accountManagerCopy];
  }

  return v9;
}

@end