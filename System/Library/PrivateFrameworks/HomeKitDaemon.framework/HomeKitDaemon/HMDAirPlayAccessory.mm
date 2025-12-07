@interface HMDAirPlayAccessory
+ (id)logCategory;
+ (void)initialize;
- (HMDAirPlayAccessory)initWithCoder:(id)coder;
- (HMDAirPlayAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMFPairingIdentity)pairingIdentity;
- (NSString)password;
- (id)advertisement;
- (id)backingStoreObjects:(int64_t)objects;
- (id)logIdentifier;
- (id)messageSendPolicy;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)minimumUserPriviledge;
- (void)_handleUpdatedName:(id)name;
- (void)addUser:(id)user completionHandler:(id)handler;
- (void)addUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler;
- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration;
- (void)disassociatePairingIdentity:(id)identity completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)handleUpdatedAdvertisement:(id)advertisement;
- (void)handleUpdatedMinimumUserPrivilege:(int64_t)privilege;
- (void)handleUpdatedPassword:(id)password;
- (void)pairingsWithCompletionHandler:(id)handler;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)removeUser:(id)user completionHandler:(id)handler;
- (void)removeUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler;
- (void)setAdvertisement:(id)advertisement;
- (void)setMinimumUserPriviledge:(int64_t)priviledge;
- (void)setPairingIdentity:(id)identity;
- (void)setPassword:(id)password;
- (void)timerDidFire:(id)fire;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAirPlayAccessory

- (id)logIdentifier
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v11 encodeWithCoder:coderCopy];
  pairingIdentity = [(HMDAirPlayAccessory *)self pairingIdentity];
  v8 = pairingIdentity;
  if ((hmd_isForXPCTransport & 1) == 0)
  {
    if (hmd_isForLocalStore)
    {
      [coderCopy encodeObject:pairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }

    else if (pairingIdentity)
    {
      publicPairingIdentity = [pairingIdentity publicPairingIdentity];
      [coderCopy encodeObject:publicPairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }
  }

  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
  {
    password = [(HMDAirPlayAccessory *)self password];
    [coderCopy encodeObject:password forKey:@"HM.password"];

    [coderCopy encodeInteger:-[HMDAirPlayAccessory minimumUserPriviledge](self forKey:{"minimumUserPriviledge"), @"HM.minimumUserPriviledge"}];
  }
}

- (HMDAirPlayAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDAirPlayAccessory;
  v5 = [(HMDMediaAccessory *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.password"];
    password = v5->_password;
    v5->_password = v8;

    v5->_minimumUserPriviledge = [coderCopy decodeIntegerForKey:@"HM.minimumUserPriviledge"];
  }

  return v5;
}

- (void)timerDidFire:(id)fire
{
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Retrying configuration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) advertisement];
  if (v6)
  {
    v7 = [*(a1 + 32) home];
    if ([v7 hasAnyResident] && objc_msgSend(v7, "isCurrentDevicePrimaryResident"))
    {
      __updateAccessoryInformation(*(a1 + 32), v6);
    }

    v8 = [*(a1 + 32) configurationRetryTimer];
    [v8 suspend];

    v9 = __configurationFromAdvertisement(*(a1 + 32), v6);
    v10 = [v9 count] == 0;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v21;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory no longer out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      __stopConfigurationRetryTimer(*(a1 + 32));
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(buf, *(a1 + 32));
      v16 = *(a1 + 32);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __36__HMDAirPlayAccessory_timerDidFire___block_invoke_64;
      v22[3] = &unk_278688A18;
      objc_copyWeak(&v23, buf);
      __updateConfiguration(v16, v9, v22);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing advertisement, continuing configuration retries", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __36__HMDAirPlayAccessory_timerDidFire___block_invoke_64(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v10 = "%{public}@Failed to update accessory configuration with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    v10 = "%{public}@Successfully updated accessory configuration";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v51 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v37 = updatedCopy;
  if (v13)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__136270;
    v45 = __Block_byref_object_dispose__136271;
    v46 = 0;
    responseHandler = [messageCopy responseHandler];
    if (responseHandler)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HMDAirPlayAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27867ADD0;
      aBlock[4] = &v41;
      v15 = _Block_copy(aBlock);
      [messageCopy setResponseHandler:v15];
    }

    v39.receiver = self;
    v39.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v39 transactionObjectUpdated:0 newValues:v11 message:messageCopy];
    selfCopy = self;
    v17 = v13;
    v18 = messageCopy;
    transactionResult = [v18 transactionResult];
    pairingIdentity = [v17 pairingIdentity];

    if (pairingIdentity)
    {
      pairingIdentity2 = [v17 pairingIdentity];
      pairingIdentity3 = [(HMDAirPlayAccessory *)selfCopy pairingIdentity];
      v22 = [pairingIdentity2 isEqual:pairingIdentity3];

      if ((v22 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v34 = HMFGetLogIdentifier();
          pairingIdentity4 = [v17 pairingIdentity];
          *buf = 138543618;
          v48 = v34;
          v49 = 2112;
          v50 = pairingIdentity4;
          v33 = pairingIdentity4;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        pairingIdentity5 = [v17 pairingIdentity];
        [(HMDAirPlayAccessory *)v23 setPairingIdentity:pairingIdentity5];

        [transactionResult markChanged];
      }
    }

    if ([v17 propertyWasSet:{@"password", v33}])
    {
      password = [v17 password];
      password2 = [(HMDAirPlayAccessory *)selfCopy password];
      v29 = HMFEqualObjects();

      if ((v29 & 1) == 0)
      {
        password3 = [v17 password];
        [(HMDAirPlayAccessory *)selfCopy setPassword:password3];

        [transactionResult markChanged];
      }
    }

    if ([v17 propertyWasSet:@"minimumUserPriviledge"])
    {
      minimumUserPriviledge = [v17 minimumUserPriviledge];
      integerValue = [minimumUserPriviledge integerValue];

      if ([(HMDAirPlayAccessory *)selfCopy minimumUserPriviledge]!= integerValue)
      {
        [(HMDAirPlayAccessory *)selfCopy setMinimumUserPriviledge:integerValue];
        [transactionResult markChanged];
      }
    }

    [v18 respondWithPayload:0];

    if (responseHandler)
    {
      responseHandler[2](responseHandler, v42[5], 0);
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v38.receiver = self;
    v38.super_class = HMDAirPlayAccessory;
    [(HMDMediaAccessory *)&v38 transactionObjectUpdated:updatedCopy newValues:v11 message:messageCopy];
  }
}

void __66__HMDAirPlayAccessory_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)pairingsWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    advertisement = [(HMDAirPlayAccessory *)selfCopy advertisement];
    outputDevice = [advertisement outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      objc_initWeak(buf, selfCopy);
      v14 = __outputDeviceConfigurationOptions();
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __53__HMDAirPlayAccessory_pairingsWithCompletionHandler___block_invoke_2;
      v24[3] = &unk_27867A4F0;
      v25 = advertisement;
      objc_copyWeak(&v27, buf);
      v26 = handlerCopy;
      [av_OutputDevice configureUsingBlock:&__block_literal_global_136277 options:v14 completionHandler:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(handlerCopy + 2))(handlerCopy, 0, v23);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Only owner can remove users", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    advertisement = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(handlerCopy + 2))(handlerCopy, 0, advertisement);
  }
}

void __53__HMDAirPlayAccessory_pairingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    v32 = v9;
    v12 = MEMORY[0x277CBEB18];
    v13 = [v8 peersInHomeGroup];
    v14 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [v8 peersInHomeGroup];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        v19 = 0;
        do
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v33 + 1) + 8 * v19) hmd_pairingIdentity];
          [v14 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v21 = objc_msgSend_copy(v14);
    v22 = objc_autoreleasePoolPush();
    v23 = WeakRetained;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully requested pairing identities: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = 0;
    v9 = v32;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = WeakRetained;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v30;
      v40 = 2112;
      v41 = v10;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get peers with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to get configuration." suggestion:0 underlyingError:v10];
    v21 = 0;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, v21, v26);
  }
}

- (void)removeUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler
{
  ownerCopy = owner;
  v34 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  handlerCopy = handler;
  if (ownerCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@User is the owner, disassociating from device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAirPlayAccessory *)selfCopy disassociatePairingIdentity:identityCopy completionHandler:handlerCopy];
  }

  else
  {
    advertisement = [(HMDAirPlayAccessory *)self advertisement];
    outputDevice = [advertisement outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke;
      aBlock[3] = &unk_27867A4C8;
      v17 = identityCopy;
      v31 = v17;
      v18 = _Block_copy(aBlock);
      objc_initWeak(buf, self);
      v19 = __outputDeviceConfigurationOptions();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke_2;
      v25[3] = &unk_27867A518;
      v26 = advertisement;
      objc_copyWeak(&v29, buf);
      v27 = v17;
      v28 = handlerCopy;
      [av_OutputDevice configureUsingBlock:v18 options:v19 completionHandler:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);

      v20 = v31;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(handlerCopy + 2))(handlerCopy, v20);
    }
  }
}

void __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  [v3 removePeerWithIDFromHomeGroup:v4];
}

void __75__HMDAirPlayAccessory_removeUserPairingIdentity_isOwner_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v8)
  {
    v34 = v9;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [v8 peersInHomeGroup];
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v35 + 1) + 8 * v16) peerID];
          v18 = [*(a1 + 40) identifier];

          if (v17 == v18)
          {
            v24 = objc_autoreleasePoolPush();
            v25 = WeakRetained;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = HMFGetLogIdentifier();
              v28 = *(a1 + 40);
              *buf = 138543618;
              v41 = v27;
              v42 = 2112;
              v43 = v28;
              _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove user pairing identity: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v24);
            v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:41];

            goto LABEL_16;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed peer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = 0;
LABEL_16:
    v9 = v34;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = WeakRetained;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v32;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove peer with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))(v33, v23);
  }
}

- (void)removeUser:(id)user completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = userCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Removing user: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  pairingIdentity = [userCopy pairingIdentity];
  if (pairingIdentity)
  {
    -[HMDAirPlayAccessory removeUserPairingIdentity:isOwner:completionHandler:](selfCopy, "removeUserPairingIdentity:isOwner:completionHandler:", pairingIdentity, [userCopy isOwner], handlerCopy);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = userCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)addUserPairingIdentity:(id)identity isOwner:(BOOL)owner completionHandler:(id)handler
{
  ownerCopy = owner;
  v46 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  handlerCopy = handler;
  home = [(HMDAccessory *)self home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    advertisement = [(HMDAirPlayAccessory *)self advertisement];
    outputDevice = [advertisement outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      v15 = [HMDUser av_authorizedPeerForPairingIdentity:identityCopy isOwner:ownerCopy];
      v16 = v15;
      if (v15)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __72__HMDAirPlayAccessory_addUserPairingIdentity_isOwner_completionHandler___block_invoke;
        aBlock[3] = &unk_27867A4C8;
        v17 = v15;
        v40 = v17;
        v18 = _Block_copy(aBlock);
        objc_initWeak(location, self);
        v19 = __outputDeviceConfigurationOptions();
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __72__HMDAirPlayAccessory_addUserPairingIdentity_isOwner_completionHandler___block_invoke_2;
        v34[3] = &unk_27867A518;
        v35 = advertisement;
        objc_copyWeak(&v38, location);
        v36 = v17;
        v37 = handlerCopy;
        [av_OutputDevice configureUsingBlock:v18 options:v19 completionHandler:v34];

        objc_destroyWeak(&v38);
        objc_destroyWeak(location);

        v20 = v40;
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [MEMORY[0x277CCABB0] numberWithBool:ownerCopy];
          *location = 138543874;
          *&location[4] = v32;
          v42 = 2112;
          v43 = identityCopy;
          v44 = 2112;
          v45 = v33;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Failed to create authorized peer for pairing identity: %@ isOwner: %@", location, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(handlerCopy + 2))(handlerCopy, v20);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *location = 138543362;
        *&location[4] = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Missing output device", location, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(handlerCopy + 2))(handlerCopy, v16);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Only owner can add users identities", location, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    advertisement = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(handlerCopy + 2))(handlerCopy, advertisement);
  }
}

void __72__HMDAirPlayAccessory_addUserPairingIdentity_isOwner_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v24;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer with error: %@, cancellationReason: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    goto LABEL_12;
  }

  v12 = [v8 peersInHomeGroup];
  v13 = [v12 containsObject:*(a1 + 40)];

  v14 = objc_autoreleasePoolPush();
  v15 = WeakRetained;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if ((v13 & 1) == 0)
  {
    if (v17)
    {
      v26 = HMFGetLogIdentifier();
      v27 = *(a1 + 40);
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add peer: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_12:
    v20 = v25;
    goto LABEL_13;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v19 = *(a1 + 40);
    v29 = 138543618;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added peer: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = 0;
LABEL_13:
  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v20);
  }
}

- (void)addUser:(id)user completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = userCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Adding user: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDAccessory *)selfCopy home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    pairingIdentity = [userCopy pairingIdentity];
    if (pairingIdentity)
    {
      v15 = pairingIdentity;
      -[HMDAirPlayAccessory addUserPairingIdentity:isOwner:completionHandler:](selfCopy, "addUserPairingIdentity:isOwner:completionHandler:", pairingIdentity, [userCopy isOwner], handlerCopy);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = userCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity for user: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      handlerCopy[2](handlerCopy, v24);

      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Only owner can add users", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    handlerCopy[2](handlerCopy, v15);
  }
}

- (void)disassociatePairingIdentity:(id)identity completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting disassociation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  advertisement = [(HMDAirPlayAccessory *)selfCopy advertisement];
  outputDevice = [advertisement outputDevice];
  av_OutputDevice = [outputDevice av_OutputDevice];

  if (av_OutputDevice)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke;
    aBlock[3] = &unk_27867A4C8;
    v27 = identityCopy;
    v15 = _Block_copy(aBlock);
    objc_initWeak(buf, selfCopy);
    v16 = __outputDeviceConfigurationOptions();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke_2;
    v22[3] = &unk_27867A4F0;
    v23 = advertisement;
    objc_copyWeak(&v25, buf);
    v24 = handlerCopy;
    [av_OutputDevice configureUsingBlock:v15 options:v16 completionHandler:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);

    v17 = v27;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

void __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDevicePassword:&stru_283CF9D50];
  [v3 stopAutomaticallyAllowingConnectionsFromPeersInHomeGroup];
  v4 = [*(a1 + 32) identifier];
  [v3 removePeerWithIDFromHomeGroup:v4];
}

void __69__HMDAirPlayAccessory_disassociatePairingIdentity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v8)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v22;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to disassociate with error: %@, cancellationReason: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    goto LABEL_14;
  }

  v12 = [v8 devicePassword];
  v13 = [v12 length];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v17;
      v18 = "%{public}@Failed to reset device password";
LABEL_12:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, v18, &v30, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (([v8 automaticallyAllowsConnectionsFromPeersInHomeGroup] & 1) != 0 || objc_msgSend(v8, "onlyAllowsConnectionsFromPeersInHomeGroup"))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v17;
      v18 = "%{public}@Failed to disable home peers";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
LABEL_14:
    v24 = v23;
    goto LABEL_15;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = WeakRetained;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v29;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully disassociated", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
  v24 = 0;
LABEL_15:
  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v24);
  }
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (void)populateModelObject:(id)object version:(int64_t)version
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v12.receiver = self;
  v12.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v12 populateModelObject:v8 version:version];
  pairingIdentity = [(HMDAirPlayAccessory *)self pairingIdentity];
  [v8 setPairingIdentity:pairingIdentity];

  password = [(HMDAirPlayAccessory *)self password];
  [v8 setPassword:password];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAirPlayAccessory minimumUserPriviledge](self, "minimumUserPriviledge")}];
  [v8 setMinimumUserPriviledge:v11];
}

- (id)backingStoreObjects:(int64_t)objects
{
  v5 = [HMDAirPlayAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:uuid parentUUID:uuid2];

  [(HMDAirPlayAccessory *)self populateModelObject:v9 version:objects];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  v13.receiver = self;
  v13.super_class = HMDAirPlayAccessory;
  v11 = [(HMDAccessory *)&v13 backingStoreObjects:objects];
  [v10 addObjectsFromArray:v11];

  return v10;
}

- (void)setMinimumUserPriviledge:(int64_t)priviledge
{
  os_unfair_recursive_lock_lock_with_options();
  self->_minimumUserPriviledge = priviledge;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)minimumUserPriviledge
{
  os_unfair_recursive_lock_lock_with_options();
  minimumUserPriviledge = self->_minimumUserPriviledge;
  os_unfair_recursive_lock_unlock();
  return minimumUserPriviledge;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(passwordCopy);
  password = self->_password;
  self->_password = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)password
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_password;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setPairingIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(identityCopy);
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleUpdatedPassword:(id)password
{
  passwordCopy = password;
  v10.receiver = self;
  v10.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v10 handleUpdatedPassword:passwordCopy];
  password = [(HMDAirPlayAccessory *)self password];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__HMDAirPlayAccessory_handleUpdatedPassword___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = passwordCopy;
    dispatch_async(workQueue, v8);
  }
}

void __45__HMDAirPlayAccessory_handleUpdatedPassword___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Updating password to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (v3)
    {
      v14 = @"password";
      v15[0] = v3;
    }

    else
    {
      v14 = @"password";
      v15[0] = &stru_283CF9D50;
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v5 configurationRetryTimer];
    [v9 reset];

    objc_initWeak(&location, v5);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updatePassword_block_invoke;
    v12 = &unk_278688A18;
    objc_copyWeak(&v13, &location);
    __updateConfiguration(v5, v8, buf);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)handleUpdatedMinimumUserPrivilege:(int64_t)privilege
{
  v7.receiver = self;
  v7.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v7 handleUpdatedMinimumUserPrivilege:?];
  if ([(HMDAirPlayAccessory *)self minimumUserPriviledge]!= privilege)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__HMDAirPlayAccessory_handleUpdatedMinimumUserPrivilege___block_invoke;
    v6[3] = &unk_27868A0D0;
    v6[4] = self;
    v6[5] = privilege;
    dispatch_async(workQueue, v6);
  }
}

void __57__HMDAirPlayAccessory_handleUpdatedMinimumUserPrivilege___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v2;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMUserPrivilegeToString();
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Updating minimum user privilege to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v15 = @"privilege";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v10 = [v4 configurationRetryTimer];
    [v10 reset];

    objc_initWeak(&location, v4);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateMinimumUserPrivilege_block_invoke;
    v13 = &unk_278688A18;
    objc_copyWeak(&v14, &location);
    __updateConfiguration(v4, v9, buf);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)messageSendPolicy
{
  v2 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:257];

  return v2;
}

- (void)_handleUpdatedName:(id)name
{
  v24[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v18 _handleUpdatedName:nameCopy];
  room = [(HMDAccessory *)self room];
  name = [room name];

  getConfiguredName = [(HMDAccessory *)self getConfiguredName];

  if (getConfiguredName)
  {
    getConfiguredName2 = [(HMDAccessory *)self getConfiguredName];

    name = getConfiguredName2;
  }

  selfCopy = self;
  v10 = name;
  v11 = v10;
  if (selfCopy && v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating name to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v23 = @"name";
    v24[0] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    configurationRetryTimer = [(HMDAirPlayAccessory *)v13 configurationRetryTimer];
    [configurationRetryTimer reset];

    objc_initWeak(&location, v13);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____updateName_block_invoke;
    v21 = &unk_278688A18;
    objc_copyWeak(&v22, &location);
    __updateConfiguration(v13, v16, buf);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)handleUpdatedAdvertisement:(id)advertisement
{
  v23 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20.receiver = self;
  v20.super_class = HMDAirPlayAccessory;
  [(HMDMediaAccessory *)&v20 handleUpdatedAdvertisement:advertisementCopy];
  if (advertisementCopy)
  {
    home = [(HMDAccessory *)self home];
    if ([home hasAnyResident] && (objc_msgSend(home, "primaryResident"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v8))
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Deferring configuration because there currently is not a primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      __startConfigurationRetryTimer(selfCopy);
    }

    else
    {
      __updateAccessoryInformation(self, advertisementCopy);
      v9 = __configurationFromAdvertisement(self, advertisementCopy);
      if ([v9 count])
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory out of sync, updating configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        objc_initWeak(buf, selfCopy2);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __50__HMDAirPlayAccessory_handleUpdatedAdvertisement___block_invoke;
        v18[3] = &unk_278688A18;
        objc_copyWeak(&v19, buf);
        __updateConfiguration(selfCopy2, v9, v18);
        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }

      else
      {
        __stopConfigurationRetryTimer(self);
      }
    }
  }

  else
  {
    __stopConfigurationRetryTimer(self);
  }
}

void __50__HMDAirPlayAccessory_handleUpdatedAdvertisement___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      v10 = "%{public}@Failed to update accessory configuration with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    v10 = "%{public}@Successfully updated accessory configuration";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)setAdvertisement:(id)advertisement
{
  v14 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [(HMDAccessory *)selfCopy identifier];
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignoring setting the advertisement data for AirPlay accessory %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (id)advertisement
{
  v3 = [HMDMediaAccessoryBrowseOperation alloc];
  identifier = [(HMDAccessory *)self identifier];
  v5 = [(HMDMediaAccessoryBrowseOperation *)v3 initWithAccessoryIdentifier:identifier];

  [(HMDMediaAccessoryBrowseOperation *)v5 setEndpointFeatures:1];
  [(HMFOperation *)v5 start];
  [(HMDMediaAccessoryBrowseOperation *)v5 waitUntilFinished];
  error = [(HMFOperation *)v5 error];

  if (error)
  {
    v7 = 0;
  }

  else
  {
    outputDevices = [(HMDMediaAccessoryBrowseOperation *)v5 outputDevices];
    firstObject = [outputDevices firstObject];

    v7 = [[HMDMediaAccessoryAdvertisement alloc] initWithOutputDevice:firstObject];
  }

  return v7;
}

- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  v13 = trackerCopy;
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  v20.receiver = self;
  v20.super_class = HMDAirPlayAccessory;
  [(HMDAccessory *)&v20 configureWithHome:homeCopy msgDispatcher:dispatcherCopy configurationTracker:v13 initialConfiguration:configurationCopy];
  home = [(HMDAccessory *)self home];
  residentDeviceManager = [home residentDeviceManager];
  [residentDeviceManager addDataSource:self];

  workQueue = [(HMDAccessory *)self workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__HMDAirPlayAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
  v18[3] = &unk_27868A750;
  v18[4] = self;
  v19 = v13;
  v17 = v13;
  dispatch_async(workQueue, v18);
}

void __97__HMDAirPlayAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) advertisement];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v2)
  {
    v4 = [v3 advertisement];
    [v3 handleUpdatedAdvertisement:v4];
  }

  else
  {
    v5 = [v3 configurationRetryTimer];
    [v5 reset];

    __startConfigurationRetryTimer(*(a1 + 32));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_group_leave(v6);
  }
}

- (HMDAirPlayAccessory)initWithTransaction:(id)transaction home:(id)home
{
  v25 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  v8 = transactionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v22.receiver = self;
    v22.super_class = HMDAirPlayAccessory;
    v11 = [(HMDMediaAccessory *)&v22 initWithTransaction:v8 home:homeCopy];
    if (v11)
    {
      pairingIdentity = [v10 pairingIdentity];
      pairingIdentity = v11->_pairingIdentity;
      v11->_pairingIdentity = pairingIdentity;

      password = [v10 password];
      password = v11->_password;
      v11->_password = password;
    }

    selfCopy = v11;
    v17 = selfCopy;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize an AirPlay accessory without an AirPlay model.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t82 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t82, &__block_literal_global_78);
  }

  v3 = logCategory__hmf_once_v83;

  return v3;
}

void __34__HMDAirPlayAccessory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v83;
  logCategory__hmf_once_v83 = v0;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75EC8 forPreferenceKey:@"airPlayConfigurationRetryMinimum"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75ED8 forPreferenceKey:@"airPlayConfigurationRetryMaximum"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283E72F38 forPreferenceKey:@"airPlayConfigurationRetryFactor"];
}

@end