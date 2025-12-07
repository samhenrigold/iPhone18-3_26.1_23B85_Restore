@interface HMDAccountRegistry
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (HMDAccountRegistry)sharedRegistry;
+ (id)logCategory;
- (BOOL)accountExistsForHandle:(id)handle;
- (BOOL)deviceExistsForDevice:(id)device;
- (BOOL)started;
- (HMDAccountRegistry)initWithAppleAccountManager:(id)manager remoteAccountManager:(id)accountManager context:(id)context;
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
- (id)existingAccountWithMergeIdentifier:(id)identifier;
- (id)fetchAccountsWithLocalFlag:(BOOL)flag;
- (id)findBackingModelFromDevice:(id)device;
- (id)updateDevices:(id)devices onAccount:(id)account;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__handleAddedRemoteAccount:(id)account;
- (void)__handleAppleAccountDeviceAdded:(id)added;
- (void)__handleAppleAccountHandlesUpdated:(id)updated;
- (void)__handleAppleAccountUpdate:(id)update;
- (void)__handleRemovedRemoteAccount:(id)account;
- (void)_resolveAccountForHandle:(id)handle completionHandler:(id)handler;
- (void)accountInformationChanged:(id)changed;
- (void)addAccount:(id)account isLocal:(BOOL)local;
- (void)addDevice:(id)device toAccount:(id)account;
- (void)addHandle:(id)handle toAccount:(id)account;
- (void)removeAccount:(id)account;
- (void)removeDevice:(id)device fromAccount:(id)account;
- (void)removeHandle:(id)handle fromAccount:(id)account;
- (void)reset;
- (void)start;
- (void)stop;
- (void)updateAccount:(id)account;
- (void)updateDevice:(id)device toVersion:(id)version;
- (void)updateDevice:(id)device withDevice:(id)withDevice;
@end

@implementation HMDAccountRegistry

+ (HMDAccountRegistry)sharedRegistry
{
  v2 = +[HMDRegistry shared];
  accountRegistry = [v2 accountRegistry];

  return accountRegistry;
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

- (HMDAppleAccountManager)appleAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appleAccountManager);

  return WeakRetained;
}

- (HMDRemoteAccountManager)remoteAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAccountManager);

  return WeakRetained;
}

- (void)removeHandle:(id)handle fromAccount:(id)account
{
  handleCopy = handle;
  accountCopy = account;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HMDAccountRegistry_Roar__removeHandle_fromAccount___block_invoke;
  v10[3] = &unk_278672A70;
  v11 = handleCopy;
  selfCopy = self;
  v13 = accountCopy;
  v8 = accountCopy;
  v9 = handleCopy;
  [(HMCContextProvider *)self performBlock:v10];
}

void __53__HMDAccountRegistry_Roar__removeHandle_fromAccount___block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findAccountHandleWithModelID:v4];

  if (v5)
  {
    v6 = [v5 modelID];
    v7 = [a1[4] modelIdentifier];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 account];
      v9 = [v8 modelID];
      v10 = [a1[6] modelIdentifier];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        [v3 deleteObject:v5];
LABEL_12:
        [v3 save];
        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = objc_autoreleasePoolPush();
    v18 = a1[5];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v5 modelID];
      v22 = [a1[4] modelIdentifier];
      v23 = [v5 account];
      [v23 modelID];
      v24 = v26 = v17;
      v25 = [a1[6] modelIdentifier];
      *buf = 138544386;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Refusing to remove a handle which doesn't appear attached to the correct account (%@ != %@ || %@ != %@)", buf, 0x34u);

      v17 = v26;
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1[5];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [a1[6] modelIdentifier];
    *buf = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account handle with modelID %@ to remove.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
LABEL_13:
}

- (void)addHandle:(id)handle toAccount:(id)account
{
  handleCopy = handle;
  accountCopy = account;
  modelIdentifier = [accountCopy modelIdentifier];
  [handleCopy setModelParentIdentifier:modelIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDAccountRegistry_Roar__addHandle_toAccount___block_invoke;
  v12[3] = &unk_278672A48;
  v13 = modelIdentifier;
  selfCopy = self;
  v15 = handleCopy;
  v16 = accountCopy;
  v9 = accountCopy;
  v10 = handleCopy;
  v11 = modelIdentifier;
  [(HMCContextProvider *)self performBlock:v12];
}

void __48__HMDAccountRegistry_Roar__addHandle_toAccount___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMCContext findAccountWithModelID:*(a1 + 32)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding account handle %@ to account %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [*(a1 + 48) modelIdentifier];
    v13 = [v4 materializeOrCreateHandlesRelationWithModelID:v12 createdNew:0];

    [*(a1 + 48) updateBackingModel:v13 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to add handle to.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)removeDevice:(id)device fromAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  accountCopy = account;
  if (deviceCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__HMDAccountRegistry_Roar__removeDevice_fromAccount___block_invoke;
    v12[3] = &unk_278672A70;
    v12[4] = self;
    v13 = deviceCopy;
    v14 = accountCopy;
    [(HMCContextProvider *)self performBlock:v12];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Requested to remove a nil device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __53__HMDAccountRegistry_Roar__removeDevice_fromAccount___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) findBackingModelFromDevice:*(a1 + 40)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing device model for device %@ from account %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [v3 deleteObject:v4];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) modelIdentifier];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device with modelID %@ to remove device", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)addDevice:(id)device toAccount:(id)account
{
  deviceCopy = device;
  accountCopy = account;
  account = [deviceCopy account];
  v9 = account;
  if (!account)
  {
    goto LABEL_4;
  }

  if (([account isEqual:accountCopy] & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_4:
    [deviceCopy setAccount:accountCopy];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDAccountRegistry_Roar__addDevice_toAccount___block_invoke;
  v12[3] = &unk_278672A70;
  v13 = accountCopy;
  selfCopy = self;
  v15 = deviceCopy;
  v10 = deviceCopy;
  v11 = accountCopy;
  [(HMCContextProvider *)self performBlock:v12];
}

void __48__HMDAccountRegistry_Roar__addDevice_toAccount___block_invoke(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findAccountWithModelID:v4];

  if (v5)
  {
    v25 = 0;
    v6 = [a1[6] modelIdentifier];
    v7 = [v5 materializeOrCreateDevicesRelationWithModelID:v6 createdNew:&v25];

    if ((v25 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = a1[5];
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = a1[6];
        v13 = a1[4];
        *buf = 138543874;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Requested to add device %@ to account %@, but it appears to already be there.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v14 = objc_autoreleasePoolPush();
    v15 = a1[5];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = a1[6];
      v19 = a1[4];
      *buf = 138543874;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Adding created device model for device %@ to account %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [a1[6] updateBackingModel:v7 error:0];
    [v3 save];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1[5];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [a1[4] modelIdentifier];
      *buf = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to add device to.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (void)updateDevice:(id)device withDevice:(id)withDevice
{
  deviceCopy = device;
  withDeviceCopy = withDevice;
  account = [withDeviceCopy account];
  account2 = [deviceCopy account];
  if (!account)
  {
    goto LABEL_4;
  }

  if (([account isEqual:account2] & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_4:
    [withDeviceCopy setAccount:account2];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HMDAccountRegistry_Roar__updateDevice_withDevice___block_invoke;
  v12[3] = &unk_278672A70;
  v13 = deviceCopy;
  selfCopy = self;
  v15 = withDeviceCopy;
  v10 = withDeviceCopy;
  v11 = deviceCopy;
  [(HMCContextProvider *)self performBlock:v12];
}

void __52__HMDAccountRegistry_Roar__updateDevice_withDevice___block_invoke(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v5 = [HMCContext findDeviceWithModelID:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = a1[5];
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = a1[4];
      v12 = a1[6];
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating device model from device %@ to device %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [a1[6] updateBackingModel:v5 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[4] modelIdentifier];
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device with modelID %@ to update device", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (id)findBackingModelFromDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  modelIdentifier = [deviceCopy modelIdentifier];

  if (modelIdentifier)
  {
    modelIdentifier2 = [deviceCopy modelIdentifier];
    modelIdentifier = [HMCContext findDeviceWithModelID:modelIdentifier2];

    if (!modelIdentifier)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v10;
        v14 = 2112;
        v15 = deviceCopy;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      modelIdentifier = 0;
    }
  }

  return modelIdentifier;
}

- (void)updateDevice:(id)device toVersion:(id)version
{
  deviceCopy = device;
  versionCopy = version;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDAccountRegistry_Roar__updateDevice_toVersion___block_invoke;
  v10[3] = &unk_278672A70;
  v10[4] = self;
  v11 = deviceCopy;
  v12 = versionCopy;
  v8 = versionCopy;
  v9 = deviceCopy;
  [(HMCContextProvider *)self performBlock:v10];
}

void __51__HMDAccountRegistry_Roar__updateDevice_toVersion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) findBackingModelFromDevice:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    [v4 setVersion:*(a1 + 48)];
    [v3 save];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch device %@ to update device version: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (id)updateDevices:(id)devices onAccount:(id)account
{
  devicesCopy = devices;
  accountCopy = account;
  v20 = 0;
  v8 = [MEMORY[0x277D0F7C0] futureWithPromise:&v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke;
  v18[3] = &unk_278672A20;
  v9 = accountCopy;
  v19 = v9;
  [devicesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_2;
  v13[3] = &unk_278672A48;
  v14 = v9;
  selfCopy = self;
  v16 = devicesCopy;
  v17 = v20;
  v10 = devicesCopy;
  v11 = v9;
  [(HMCContextProvider *)self performBlock:v13];

  return v8;
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 account];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    if ([v3 isEqual:v5])
    {
      goto LABEL_5;
    }

    _HMFPreconditionFailure();
  }

  [v6 setAccount:v5];
LABEL_5:
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_2(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] modelIdentifier];
  v22 = 0;
  v5 = [HMCContext findAccountWithModelID:v4 error:&v22];
  v6 = v22;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [a1[4] updateBackingModel:v5 error:0];
    v13 = [a1[6] allObjects];
    [v5 synchronizeDevicesRelationWith:v13];

    v14 = [v5 devices];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_22;
    v21[3] = &unk_278677358;
    v21[4] = a1[5];
    [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

    v15 = objc_autoreleasePoolPush();
    v16 = a1[5];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = a1[4];
      v20 = a1[6];
      *buf = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating account %@ with devices: %@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [v3 save];
    [a1[7] fulfillWithNoValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[4] modelIdentifier];
      *buf = 138543874;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ to update devices on account: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __52__HMDAccountRegistry_Roar__updateDevices_onAccount___block_invoke_22(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mediaRouteID];

  if (!v3)
  {
    v4 = [*(a1 + 32) context];
    v5 = [v4 backingStore];
    v6 = [v5 homeManager];
    v7 = [v9 identifier];
    v8 = [v6 updateMediaRouteIDOfDeviceWithIdentifier:v7];
  }
}

- (void)updateAccount:(id)account
{
  accountCopy = account;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDAccountRegistry_Roar__updateAccount___block_invoke;
  v6[3] = &unk_2786729F8;
  v7 = accountCopy;
  selfCopy = self;
  v5 = accountCopy;
  [(HMCContextProvider *)self performBlock:v6];
}

void __42__HMDAccountRegistry_Roar__updateAccount___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 findHomeManagerWithError:0];
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [*(a1 + 32) modelIdentifier];
  v7 = [v5 materializeOrCreateAccountsRelationWithModelID:v6 createdNew:0];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating account %@ in database.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) updateBackingModel:v7 error:0];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) modelIdentifier];
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine existance of account %@ in database.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)removeAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy && ([accountCopy modelIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__HMDAccountRegistry_Roar__removeAccount___block_invoke;
    v11[3] = &unk_2786729F8;
    v12 = v5;
    selfCopy = self;
    [(HMCContextProvider *)self performBlock:v11];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Requested to remove a nil account or an account without an identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __42__HMDAccountRegistry_Roar__removeAccount___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) modelIdentifier];
  v5 = [HMCContext findAccountWithModelID:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing account %@ from database.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v3 deleteObject:v5];
    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) modelIdentifier];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch account with modelID %@ for removal.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)addAccount:(id)account isLocal:(BOOL)local
{
  accountCopy = account;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HMDAccountRegistry_Roar__addAccount_isLocal___block_invoke;
  v8[3] = &unk_2786729D0;
  v9 = accountCopy;
  selfCopy = self;
  localCopy = local;
  v7 = accountCopy;
  [(HMCContextProvider *)self performBlock:v8];
}

void __47__HMDAccountRegistry_Roar__addAccount_isLocal___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 findHomeManagerWithError:0];
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [*(a1 + 32) modelIdentifier];
  v7 = [v5 materializeOrCreateAccountsRelationWithModelID:v6 createdNew:0];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding account %@ to database.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) updateBackingModel:v7 error:0];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    [v7 setLocal:v14];

    [v3 save];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) modelIdentifier];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine existence of account %@ in database.", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)fetchAccountsWithLocalFlag:(BOOL)flag
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__39842;
  v13[4] = __Block_byref_object_dispose__39843;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__39842;
  v11 = __Block_byref_object_dispose__39843;
  v12 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke;
  v5[3] = &unk_2786729A8;
  flagCopy = flag;
  v5[4] = self;
  v5[5] = v13;
  v5[6] = &v7;
  [(HMCContextProvider *)self unsafeSynchronousBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v3;
}

void __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    v24 = 0;
    v5 = [v3 findLocalAccountWithError:&v24];
    v6 = v24;
    if (v5)
    {
      v31[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  else
  {
    v23 = 0;
    v10 = [v3 findRemoteAccountsWithError:&v23];
    v6 = v23;
    v11 = *(*(a1 + 40) + 8);
    v5 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = *(a1 + 56);
    *buf = 138543874;
    v26 = v15;
    if (v16)
    {
      v17 = @"the local account";
    }

    else
    {
      v17 = @"remote accounts";
    }

    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_12:
    v18 = [MEMORY[0x277CBEB18] array];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(*(*(a1 + 40) + 8) + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke_8;
    v22[3] = &unk_278672980;
    v22[4] = *(a1 + 48);
    [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
  }
}

void __55__HMDAccountRegistry_Roar__fetchAccountsWithLocalFlag___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HMDAccount alloc] initWithBackingModel:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (void)accountInformationChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy dumpForLoggingWithPrefix:@"Account Registry" logType:0];
  updates = [changedCopy updates];
  __sendChangeNotifications(self, updates, 4);

  inserts = [changedCopy inserts];
  __sendChangeNotifications(self, inserts, 1);

  deletes = [changedCopy deletes];

  __sendChangeNotifications(self, deletes, 2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_63425 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_63425, &__block_literal_global_63426);
  }

  v3 = logCategory__hmf_once_v27_63427;

  return v3;
}

void __33__HMDAccountRegistry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v27_63427;
  logCategory__hmf_once_v27_63427 = v0;
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not resolving handle, %@, on our account", &v17, 0x16u);
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
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification that device was added to our account: %@", &v21, 0x16u);
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
  v7[3] = &unk_27868A750;
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
  v7[3] = &unk_27868A750;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received notification current account added", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Received notification current account removed", buf, 0xCu);
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
  v38 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if (!addressCopy)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v5 = +[HMDDemoModeManagerDataSource defaultDataSource];
  [v5 isDemoModeMadeForDemoBundle];

  idsIdentifier = [addressCopy idsIdentifier];
  v7 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:idsIdentifier];

  v8 = __deviceForHandle(self, v7);
  if (!v8)
  {
    idsDestination = [addressCopy idsDestination];
    v12 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];

    v13 = __deviceForHandle(self, v12);
    v9 = v13;
    if (!v13)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = addressCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Synthesizing HMDDevice for %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [[HMDDevice alloc] initWithDeviceAddress:addressCopy];
      goto LABEL_16;
    }

    idsIdentifier2 = [(HMDDevice *)v13 idsIdentifier];

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (idsIdentifier2)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = HMFGetLogIdentifier();
        idsIdentifier3 = [(HMDDevice *)v9 idsIdentifier];
        idsIdentifier4 = [addressCopy idsIdentifier];
        v28 = 138544386;
        v29 = v19;
        v30 = 2160;
        v31 = 1752392040;
        v32 = 2112;
        v33 = idsIdentifier3;
        v34 = 2160;
        v35 = 1752392040;
        v36 = 2112;
        v37 = idsIdentifier4;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_FAULT, "%{public}@IDS identifier mismatch %{mask.hash}@ != %{mask.hash}@", &v28, 0x34u);

LABEL_14:
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v19;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding local handle %@ to %@", &v28, 0x20u);
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v15);
    [(HMDDevice *)v9 addHandle:v7];
    v26 = v9;
LABEL_16:
    v10 = v26;

    goto LABEL_17;
  }

  v9 = v8;
  v10 = v9;
LABEL_17:

LABEL_18:

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

- (id)existingAccountWithMergeIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    accounts = [(HMDAccountRegistry *)self accounts];
    v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(accounts);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          senderCorrelationIdentifier = [v9 senderCorrelationIdentifier];
          v11 = [senderCorrelationIdentifier isEqual:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", &v8, 0xCu);
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v9, 0xCu);
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAccountRegistry *)selfCopy registerForDatabaseChanges];
  appleAccountManager = [(HMDAccountRegistry *)selfCopy appleAccountManager];
  account = [appleAccountManager account];
  if (account)
  {
    __registerForAccountUpdates(selfCopy, account);
    clientQueue = [(HMDAccountRegistry *)selfCopy clientQueue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __27__HMDAccountRegistry_start__block_invoke;
    v16 = &unk_27868A750;
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

- (HMDAccountRegistry)initWithAppleAccountManager:(id)manager remoteAccountManager:(id)accountManager context:(id)context
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  v21.receiver = self;
  v21.super_class = HMDAccountRegistry;
  v10 = [(HMCContextProvider *)&v21 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = HMDispatchQueueNameString();
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    clientQueue = v11->_clientQueue;
    v11->_clientQueue = v15;

    objc_storeWeak(&v11->_appleAccountManager, managerCopy);
    objc_storeWeak(&v11->_remoteAccountManager, accountManagerCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel___handleAppleAccountUpdate_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:managerCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel___handleAddedRemoteAccount_ name:@"HMDRemoteAccountManagerAddedAccountNotification" object:accountManagerCopy];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v11 selector:sel___handleRemovedRemoteAccount_ name:@"HMDRemoteAccountManagerRemovedAccountNotification" object:accountManagerCopy];

    [managerCopy configureWithAccountRegistry:v11];
    [accountManagerCopy configureWithAccountRegistry:v11];
  }

  return v11;
}

@end