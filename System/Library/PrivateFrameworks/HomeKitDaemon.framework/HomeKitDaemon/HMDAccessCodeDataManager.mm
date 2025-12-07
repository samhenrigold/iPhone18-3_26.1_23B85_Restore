@interface HMDAccessCodeDataManager
+ (id)_accessCodeInHome:(id)home forHomeAccessCodeModel:(id)model;
+ (id)_accessCodeInHome:(id)home forRemovedUserAccessCodeModel:(id)model;
+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)code forHome:(id)home;
+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)code forHome:(id)home;
+ (id)createUserAccessCodeModelFromAccessCode:(id)code forUserUUID:(id)d changedByUserUUID:(id)iD;
+ (id)logCategory;
+ (id)userWithAccessCode:(id)code inHome:(id)home;
- (HMDAccessCodeDataManager)initWithContext:(id)context delegate:(id)delegate;
- (HMDAccessCodeDataManagerDelegate)delegate;
- (NSArray)cachedAccessCodes;
- (NSArray)homeAccessCodeValues;
- (NSArray)homeAccessCodeValuesWithRemovedUserInfo;
- (NSArray)homeAccessCodeValuesWithSimpleLabels;
- (NSArray)homeAccessCodeValuesWithUserLabels;
- (NSSet)accessCodeValuesWithRemovedUserInfo;
- (NSSet)accessCodeValuesWithSimpleLabel;
- (NSSet)accessCodeValuesWithUserLabel;
- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow;
- (id)_removeSimpleLabelAccessCodeValue:(id)value flow:(id)flow;
- (id)_removeUserAccessCodeValue:(id)value removedByUserUUID:(id)d flow:(id)flow;
- (id)_setSimpleLabel:(id)label forAccessCodeValue:(id)value flow:(id)flow;
- (id)_setUserWithUUID:(id)d forAccessCodeValue:(id)value changedByUserUUID:(id)iD flow:(id)flow;
- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow;
- (id)addOrUpdateHomeAccessCodeModel:(id)model flow:(id)flow;
- (id)addOrUpdateUserAccessCodeModel:(id)model flow:(id)flow;
- (id)cachedAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d;
- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)d;
- (id)logIdentifier;
- (id)removeAllHomeAccessCodesWithFlow:(id)flow;
- (id)removeHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow;
- (id)removeHMDRemovedUserAccessCodeWithCode:(id)code removedUserInfo:(id)info flow:(id)flow;
- (id)removeHomeAccessCodeModel:(id)model flow:(id)flow;
- (id)removeHomeAccessCodeWithValue:(id)value removedByUserUUID:(id)d flow:(id)flow;
- (id)removeUserAccessCodeModel:(id)model flow:(id)flow;
- (id)saveRemovedUserAccessCode:(id)code withRemovedUserInfo:(id)info flow:(id)flow;
- (id)setUserInformation:(id)information forHomeAccessCodeWithValue:(id)value changedByUserUUID:(id)d flow:(id)flow;
- (id)simpleLabelForAccessCode:(id)code;
- (id)updateUserInformation:(id)information forHomeAccessCodeWithOldValue:(id)value newAccessCodeValue:(id)codeValue flow:(id)flow;
- (id)userUUIDForAccessCode:(id)code;
- (void)_cleanUpOldRemovedUserDataWithReason:(id)reason;
- (void)_messageUser:(id)user thatTheirAccessCodeWasChangedWithType:(unint64_t)type flow:(id)flow;
- (void)_setUpAndStartTimer;
- (void)configure;
- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleRemovedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleRemovedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow;
- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleUpdatedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow;
- (void)handleUpdatedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow;
- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow;
- (void)timerDidFire:(id)fire;
- (void)updateCacheWithAddedAccessCodes:(id)codes flow:(id)flow;
- (void)updateCacheWithFetchResponses:(id)responses flow:(id)flow;
- (void)updateCacheWithRemovedAccessCodes:(id)codes flow:(id)flow;
- (void)updateCacheWithUpdatedAccessCodes:(id)codes flow:(id)flow;
@end

@implementation HMDAccessCodeDataManager

- (HMDAccessCodeDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  context = [(HMDAccessCodeDataManager *)self context];
  uUID = [context UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataCleanUpTimer = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];

  if (dataCleanUpTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@dataCleanUpTimer fired", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    context2 = [(HMDAccessCodeDataManager *)selfCopy context];
    isCurrentDeviceOwnerController = [context2 isCurrentDeviceOwnerController];

    if (isCurrentDeviceOwnerController)
    {
      [(HMDAccessCodeDataManager *)selfCopy _cleanUpOldRemovedUserDataWithReason:@"cleanup timer fired"];
    }
  }
}

- (void)updateCacheWithRemovedAccessCodes:(id)codes flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = codesCopy;
    obj = codesCopy;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v29 = *v35;
      do
      {
        v10 = 0;
        v31 = v8;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v11 accessoryUUID];
          v14 = [context hapAccessoryWithUUID:accessoryUUID];

          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          v18 = v17;
          if (v14)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v19 = v33 = v15;
              uUID = [flowCopy UUID];
              name = [v14 name];
              *buf = 138544130;
              v39 = v19;
              v40 = 2112;
              v41 = uUID;
              v42 = 2112;
              v43 = name;
              v44 = 2112;
              v45 = v11;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with removed access code: %@", buf, 0x2Au);

              v9 = v29;
              v8 = v31;

              v15 = v33;
            }

            objc_autoreleasePoolPop(v15);
            accessCodeCache = [v14 accessCodeCache];
            uniqueIdentifier = [v11 uniqueIdentifier];
            [accessCodeCache removeObjectForKey:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              accessoryUUID2 = [v11 accessoryUUID];
              *buf = 138543874;
              v39 = v24;
              v40 = 2112;
              v41 = uUID2;
              v42 = 2112;
              v43 = accessoryUUID2;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);

              v8 = v31;
            }

            objc_autoreleasePoolPop(v15);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v8);
    }

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    [delegate accessCodeDataManager:self didRemoveAccessoryAccessCodes:obj flow:flowCopy];

    codesCopy = v28;
  }
}

- (void)updateCacheWithUpdatedAccessCodes:(id)codes flow:(id)flow
{
  v45 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v29 = flowCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = codesCopy;
    obj = codesCopy;
    v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v31)
    {
      v8 = *v33;
      v28 = *v33;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v10 accessoryUUID];
          v13 = [context hapAccessoryWithUUID:accessoryUUID];

          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uUID = [v29 UUID];
              name = [v13 name];
              *buf = 138544130;
              v37 = v18;
              v38 = 2112;
              v39 = uUID;
              v40 = 2112;
              v41 = name;
              v42 = 2112;
              v43 = v10;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with updated access code: %@", buf, 0x2Au);

              v8 = v28;
            }

            objc_autoreleasePoolPop(v14);
            accessCodeCache = [v13 accessCodeCache];
            uniqueIdentifier = [v10 uniqueIdentifier];
            [accessCodeCache setObject:v10 forKeyedSubscript:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              uUID2 = [v29 UUID];
              accessoryUUID2 = [v10 accessoryUUID];
              *buf = 138543874;
              v37 = v23;
              v38 = 2112;
              v39 = uUID2;
              v40 = 2112;
              v41 = accessoryUUID2;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v28;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v31);
    }

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    flowCopy = v29;
    [delegate accessCodeDataManager:self didUpdateAccessoryAccessCodes:obj flow:v29];

    codesCopy = v27;
  }
}

- (void)updateCacheWithAddedAccessCodes:(id)codes flow:(id)flow
{
  v45 = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  flowCopy = flow;
  if (([codesCopy hmf_isEmpty] & 1) == 0)
  {
    v29 = flowCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = codesCopy;
    obj = codesCopy;
    v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v31)
    {
      v8 = *v33;
      v28 = *v33;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          context = [(HMDAccessCodeDataManager *)self context];
          accessoryUUID = [v10 accessoryUUID];
          v13 = [context hapAccessoryWithUUID:accessoryUUID];

          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          v17 = v16;
          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uUID = [v29 UUID];
              name = [v13 name];
              *buf = 138544130;
              v37 = v18;
              v38 = 2112;
              v39 = uUID;
              v40 = 2112;
              v41 = name;
              v42 = 2112;
              v43 = v10;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating accessory: %@, with new access code: %@", buf, 0x2Au);

              v8 = v28;
            }

            objc_autoreleasePoolPop(v14);
            accessCodeCache = [v13 accessCodeCache];
            uniqueIdentifier = [v10 uniqueIdentifier];
            [accessCodeCache setObject:v10 forKeyedSubscript:uniqueIdentifier];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              uUID2 = [v29 UUID];
              accessoryUUID2 = [v10 accessoryUUID];
              *buf = 138543874;
              v37 = v23;
              v38 = 2112;
              v39 = uUID2;
              v40 = 2112;
              v41 = accessoryUUID2;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for accessory access code with accessory UUID: %@", buf, 0x20u);

              v8 = v28;
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v31);
    }

    delegate = [(HMDAccessCodeDataManager *)self delegate];
    flowCopy = v29;
    [delegate accessCodeDataManager:self didAddAccessoryAccessCodes:obj flow:v29];

    codesCopy = v27;
  }
}

- (void)updateCacheWithFetchResponses:(id)responses flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  flowCopy = flow;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = uUID2;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache with fetch responses", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke;
  v29[3] = &unk_278680C10;
  v29[4] = selfCopy;
  v15 = internalOnlyInitializer;
  v30 = v15;
  v16 = [responsesCopy na_flatMap:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2;
  v27[3] = &unk_278680C10;
  v27[4] = selfCopy;
  v17 = v15;
  v28 = v17;
  v18 = [responsesCopy na_flatMap:v27];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_76;
  v24 = &unk_278680C10;
  v25 = selfCopy;
  v26 = v17;
  v19 = v17;
  v20 = [responsesCopy na_flatMap:&v21];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithAddedAccessCodes:v16 flow:v19, v21, v22, v23, v24, v25];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithUpdatedAccessCodes:v18 flow:v19];
  [(HMDAccessCodeDataManager *)selfCopy updateCacheWithRemovedAccessCodes:v20 flow:v19];
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v3 accessoryAccessCodeValues];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_72;
    v16[3] = &unk_278680BE8;
    v17 = v6;
    v8 = [v7 na_filter:v16];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 accessoryUUID];
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v3 accessoryAccessCodeValues];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_75;
    v16[3] = &unk_278680BE8;
    v17 = v6;
    v8 = [v7 na_filter:v16];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 accessoryUUID];
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_2_76(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 accessoryUUID];
  v6 = [v4 hapAccessoryWithUUID:v5];

  if (v6)
  {
    v7 = [v6 accessCodeCache];
    v8 = [v7 allKeys];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_77;
    v17[3] = &unk_278680C58;
    v18 = v3;
    v19 = v6;
    v9 = [v8 na_map:v17];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v15 = [v3 accessoryUUID];
      *buf = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find hap accessory for fetch response with accessory UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

id __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessoryAccessCodeValues];
  v5 = [v4 na_map:&__block_literal_global_81_213569];

  if ([v5 containsObject:v3])
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 40) accessCodeCache];
    v6 = [v7 objectForKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_75(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = HMFEqualObjects();

  return v7 ^ 1u;
}

uint64_t __63__HMDAccessCodeDataManager_updateCacheWithFetchResponses_flow___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessCodeCache];
  v5 = [v4 allKeys];
  v6 = [v3 uniqueIdentifier];

  LODWORD(v3) = [v5 containsObject:v6];
  return v3 ^ 1;
}

- (id)cachedAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  context = [(HMDAccessCodeDataManager *)self context];
  v9 = [context hapAccessoryWithUUID:dCopy];

  if (v9)
  {
    accessCodeCache = [v9 accessCodeCache];
    v11 = [accessCodeCache objectForKeyedSubscript:identifierCopy];
    accessCodeValue = [v11 accessCodeValue];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to find hap accessory for cached access code with accessory UUID: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    accessCodeValue = 0;
  }

  return accessCodeValue;
}

- (NSArray)cachedAccessCodes
{
  context = [(HMDAccessCodeDataManager *)self context];
  accessoriesSupportingAccessCodes = [context accessoriesSupportingAccessCodes];
  v4 = [accessoriesSupportingAccessCodes na_map:&__block_literal_global_70_213576];

  return v4;
}

id __45__HMDAccessCodeDataManager_cachedAccessCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1660];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];
  v6 = [v3 accessCodeCache];

  v7 = [v6 allValues];
  v8 = [v4 initWithAccessoryUUID:v5 accessoryAccessCodeValues:v7 error:0];

  return v8;
}

- (void)handleRemovedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v46 = v14;
    v47 = 2112;
    v48 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (home)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:home forRemovedUserAccessCodeModel:modelCopy];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v46 = v23;
        v47 = 2112;
        v48 = uUID2;
        v49 = 2112;
        v50 = home;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was removed. Removing from HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
      [removedUserInfoByAccessCode removeObjectForKey:v18];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      [messageCopy respondWithSuccess];
      delegate = [(HMDAccessCodeDataManager *)v20 delegate];
      v28 = MEMORY[0x277CD1A68];
      accessCode = [modelCopy accessCode];
      removedUserInfo = [modelCopy removedUserInfo];
      v31 = [v28 homeAccessCodeValueWithStringValue:accessCode removedUserInfo:removedUserInfo];
      v44 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      v33 = v20;
      v34 = messageCopy;
      v35 = modelCopy;
      v36 = v32;
      [delegate accessCodeDataManager:v33 didRemoveHomeAccessCodes:v32 removedByUserUUID:0 flow:flowCopy];

      modelCopy = v35;
      messageCopy = v34;
    }

    else
    {
      if (v22)
      {
        v42 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v46 = v42;
        v47 = 2112;
        v48 = uUID3;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [messageCopy respondWithSuccess];
      v18 = 0;
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543618;
      v46 = v40;
      v47 = 2112;
      v48 = uUID4;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:v18];
  }
}

- (void)handleUpdatedHMDRemovedUserAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v71 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v66 = v14;
    v67 = 2112;
    v68 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (!home)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v66 = v45;
      v67 = 2112;
      v68 = uUID2;
      v47 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
LABEL_15:
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, v47, buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v42);
    delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:delegate];
    goto LABEL_17;
  }

  removedUserInfo = [modelCopy removedUserInfo];

  if (!removedUserInfo)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v66 = v45;
      v67 = 2112;
      v68 = uUID2;
      v47 = "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel has a nil property but should not";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
  accessCode = [modelCopy accessCode];
  v22 = [removedUserInfoByAccessCode objectForKeyedSubscript:accessCode];

  if (v22)
  {
    v62 = flowCopy;
    removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
    accessCode2 = [modelCopy accessCode];
    v25 = [removedUserInfoByAccessCode2 objectForKeyedSubscript:accessCode2];
    removedUserInfo2 = [modelCopy removedUserInfo];
    v27 = [v25 isEqual:removedUserInfo2];

    if ((v27 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        uUID3 = [v62 UUID];
        *buf = 138543874;
        v66 = v31;
        v67 = 2112;
        v68 = uUID3;
        v69 = 2112;
        v70 = home;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDRemovedUserAccessCodeModel was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      removedUserInfo3 = [modelCopy removedUserInfo];
      removedUserInfoByAccessCode3 = [home removedUserInfoByAccessCode];
      accessCode3 = [modelCopy accessCode];
      [removedUserInfoByAccessCode3 setObject:removedUserInfo3 forKeyedSubscript:accessCode3];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      v37 = MEMORY[0x277CD1A68];
      accessCode4 = [modelCopy accessCode];
      removedUserInfo4 = [modelCopy removedUserInfo];
      v40 = [v37 homeAccessCodeValueWithStringValue:accessCode4 removedUserInfo:removedUserInfo4];
      v63 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      [delegate accessCodeDataManager:v29 didUpdateHomeAccessCodes:v41 changedByUserUUID:0 flow:v62];
    }

    [messageCopy respondWithSuccess];
    flowCopy = v62;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v66 = v51;
      v67 = 2112;
      v68 = uUID4;
      v69 = 2112;
      v70 = home;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDRemovedUserAccessCodeModel was added. Updating values on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    removedUserInfo5 = [modelCopy removedUserInfo];
    removedUserInfoByAccessCode4 = [home removedUserInfoByAccessCode];
    accessCode5 = [modelCopy accessCode];
    [removedUserInfoByAccessCode4 setObject:removedUserInfo5 forKeyedSubscript:accessCode5];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markChanged];

    [messageCopy respondWithSuccess];
    v57 = MEMORY[0x277CD1A68];
    accessCode6 = [modelCopy accessCode];
    removedUserInfo6 = [modelCopy removedUserInfo];
    v60 = [v57 homeAccessCodeValueWithStringValue:accessCode6 removedUserInfo:removedUserInfo6];
    v64 = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    [delegate accessCodeDataManager:v49 didAddHomeAccessCodes:v61 addedByUserUUID:0 flow:flowCopy];
  }

LABEL_17:
}

- (void)handleRemovedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v42 = v14;
    v43 = 2112;
    v44 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling removed HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (home)
  {
    v18 = [HMDAccessCodeDataManager _accessCodeInHome:home forHomeAccessCodeModel:modelCopy];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v42 = v23;
        v43 = 2112;
        v44 = uUID2;
        v45 = 2112;
        v46 = home;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel was removed. Removing value with label on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      labelsByAccessCode = [home labelsByAccessCode];
      [labelsByAccessCode removeObjectForKey:v18];

      labelIdentifiersByAccessCode = [home labelIdentifiersByAccessCode];
      [labelIdentifiersByAccessCode removeObjectForKey:v18];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      [messageCopy respondWithSuccess];
      delegate = [(HMDAccessCodeDataManager *)v20 delegate];
      v29 = MEMORY[0x277CD1A68];
      label = [modelCopy label];
      v31 = [v29 homeAccessCodeValueWithStringValue:v18 label:label];
      v40 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [delegate accessCodeDataManager:v20 didRemoveHomeAccessCodes:v32 removedByUserUUID:0 flow:flowCopy];
    }

    else
    {
      if (v22)
      {
        v38 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v42 = v38;
        v43 = 2112;
        v44 = uUID3;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find an access code for this model on the home, so we have nothing to remove.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [messageCopy respondWithSuccess];
      v18 = 0;
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
      uUID4 = [flowCopy UUID];
      *buf = 138543618;
      v42 = v36;
      v43 = 2112;
      v44 = uUID4;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:v18];
  }
}

- (void)handleRemovedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  userCopy = user;
  messageCopy = message;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v32 = v17;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = userCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was removed. Removing value on HMDUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  accessCode = [userCopy accessCode];
  [userCopy setAccessCode:0];
  changedByUserUUID = [modelCopy changedByUserUUID];
  [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID];

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];

  [messageCopy respondWithSuccess];
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  v22 = MEMORY[0x277CD1A68];
  uuid = [userCopy uuid];
  v24 = [v22 homeAccessCodeValueWithStringValue:accessCode userUUID:uuid];
  v30 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [modelCopy changedByUserUUID];
  v26 = modelCopy;
  v28 = v27 = flowCopy;
  [delegate accessCodeDataManager:selfCopy didRemoveHomeAccessCodes:v25 removedByUserUUID:v28 flow:v27];
}

- (void)handleUpdatedHomeAccessCodeModel:(id)model message:(id)message flow:(id)flow
{
  v79 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v74 = v14;
    v75 = 2112;
    v76 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling updated HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context home];

  if (!home)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v74 = v50;
      v75 = 2112;
      v76 = uUID2;
      v52 = "%{public}@[Flow: %@] Not handling updated HomeAccessCodeModel because home reference was nil";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v47);
    delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [messageCopy respondWithError:delegate];
    goto LABEL_18;
  }

  value = [modelCopy value];
  if (!value || (v19 = value, [modelCopy label], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v74 = v50;
      v75 = 2112;
      v76 = uUID2;
      v52 = "%{public}@[Flow: %@] Home access code model has a nil property but should not";
LABEL_16:
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  labelsByAccessCode = [home labelsByAccessCode];
  value2 = [modelCopy value];
  v24 = [labelsByAccessCode objectForKeyedSubscript:value2];

  if (v24)
  {
    v70 = flowCopy;
    labelsByAccessCode2 = [home labelsByAccessCode];
    value3 = [modelCopy value];
    v27 = [labelsByAccessCode2 objectForKeyedSubscript:value3];
    label = [modelCopy label];
    v29 = [v27 isEqualToString:label];

    if ((v29 & 1) == 0)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        uUID3 = [v70 UUID];
        *buf = 138543874;
        v74 = v33;
        v75 = 2112;
        v76 = uUID3;
        v77 = 2112;
        v78 = home;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDHomeAccessCodeModel label was updated on HMDHome: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      label2 = [modelCopy label];
      labelsByAccessCode3 = [home labelsByAccessCode];
      value4 = [modelCopy value];
      [labelsByAccessCode3 setObject:label2 forKeyedSubscript:value4];

      hh2ModelID = [modelCopy hh2ModelID];
      labelIdentifiersByAccessCode = [home labelIdentifiersByAccessCode];
      value5 = [modelCopy value];
      [labelIdentifiersByAccessCode setObject:hh2ModelID forKeyedSubscript:value5];

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      v42 = MEMORY[0x277CD1A68];
      value6 = [modelCopy value];
      label3 = [modelCopy label];
      v45 = [v42 homeAccessCodeValueWithStringValue:value6 label:label3];
      v71 = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      [delegate accessCodeDataManager:v31 didUpdateHomeAccessCodes:v46 changedByUserUUID:0 flow:v70];
    }

    [messageCopy respondWithSuccess];
    flowCopy = v70;
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    v54 = selfCopy;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543874;
      v74 = v56;
      v75 = 2112;
      v76 = uUID4;
      v77 = 2112;
      v78 = home;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDHomeAccessCodeModel was added. Setting label for value on HMDHome: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v53);
    label4 = [modelCopy label];
    labelsByAccessCode4 = [home labelsByAccessCode];
    value7 = [modelCopy value];
    [labelsByAccessCode4 setObject:label4 forKeyedSubscript:value7];

    hh2ModelID2 = [modelCopy hh2ModelID];
    labelIdentifiersByAccessCode2 = [home labelIdentifiersByAccessCode];
    value8 = [modelCopy value];
    [labelIdentifiersByAccessCode2 setObject:hh2ModelID2 forKeyedSubscript:value8];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markChanged];

    [messageCopy respondWithSuccess];
    v65 = MEMORY[0x277CD1A68];
    value9 = [modelCopy value];
    label5 = [modelCopy label];
    v68 = [v65 homeAccessCodeValueWithStringValue:value9 label:label5];
    v72 = v68;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    [delegate accessCodeDataManager:v54 didAddHomeAccessCodes:v69 addedByUserUUID:0 flow:flowCopy];
  }

LABEL_18:
}

- (void)handleUpdatedUserAccessCodeModel:(id)model forUser:(id)user message:(id)message flow:(id)flow
{
  v83 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  userCopy = user;
  messageCopy = message;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    changedByUserUUID = [modelCopy changedByUserUUID];
    *buf = 138544130;
    v76 = v17;
    v77 = 2112;
    v78 = uUID;
    v79 = 2112;
    v80 = userCopy;
    v81 = 2112;
    v82 = changedByUserUUID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel was updated. Updating value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  accessCode = [userCopy accessCode];
  value = [modelCopy value];
  v23 = [accessCode isEqualToString:value];

  if (v23)
  {
    [messageCopy respondWithSuccess];
  }

  else
  {
    accessCode2 = [userCopy accessCode];

    if (accessCode2)
    {
      v70 = flowCopy;
      v25 = delegate;
      value2 = [modelCopy value];

      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (value2)
      {
        if (v30)
        {
          v31 = HMFGetLogIdentifier();
          uUID2 = [v70 UUID];
          changedByUserUUID2 = [modelCopy changedByUserUUID];
          *buf = 138544130;
          v76 = v31;
          v77 = 2112;
          v78 = uUID2;
          v79 = 2112;
          v80 = userCopy;
          v81 = 2112;
          v82 = changedByUserUUID2;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was updated on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        value3 = [modelCopy value];
        [userCopy setAccessCode:value3];

        changedByUserUUID3 = [modelCopy changedByUserUUID];
        [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID3];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        [messageCopy respondWithSuccess];
        v37 = MEMORY[0x277CD1A68];
        value4 = [modelCopy value];
        uuid = [userCopy uuid];
        v40 = [v37 homeAccessCodeValueWithStringValue:value4 userUUID:uuid];
        v73 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
        changedByUserUUID4 = [modelCopy changedByUserUUID];
        v43 = v28;
        v44 = v70;
        [v25 accessCodeDataManager:v43 didUpdateHomeAccessCodes:v41 changedByUserUUID:changedByUserUUID4 flow:v70];
      }

      else
      {
        if (v30)
        {
          v62 = HMFGetLogIdentifier();
          uUID3 = [v70 UUID];
          changedByUserUUID5 = [modelCopy changedByUserUUID];
          *buf = 138544130;
          v76 = v62;
          v77 = 2112;
          v78 = uUID3;
          v79 = 2112;
          v80 = userCopy;
          v81 = 2112;
          v82 = changedByUserUUID5;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HMDUserAccessCodeModel value was removed on HMDUser: %@ removedByUserUUID: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v27);
        value5 = [modelCopy value];
        [userCopy setAccessCode:value5];

        changedByUserUUID6 = [modelCopy changedByUserUUID];
        [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID6];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markChanged];

        [messageCopy respondWithSuccess];
        v68 = MEMORY[0x277CD1A68];
        value4 = [modelCopy value];
        uuid = [userCopy uuid];
        v40 = [v68 homeAccessCodeValueWithStringValue:value4 userUUID:uuid];
        v72 = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
        changedByUserUUID4 = [modelCopy changedByUserUUID];
        v69 = v28;
        v44 = v70;
        [v25 accessCodeDataManager:v69 didRemoveHomeAccessCodes:v41 removedByUserUUID:changedByUserUUID4 flow:v70];
      }

      delegate = v25;
      flowCopy = v44;
    }

    else
    {
      v71 = delegate;
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        changedByUserUUID7 = [modelCopy changedByUserUUID];
        *buf = 138544130;
        v76 = v48;
        v77 = 2112;
        v78 = uUID4;
        v79 = 2112;
        v80 = userCopy;
        v81 = 2112;
        v82 = changedByUserUUID7;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New HMDUserAccessCodeModel was added. Setting value on HMDUser: %@ changedByUserUUID: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
      value6 = [modelCopy value];
      [userCopy setAccessCode:value6];

      changedByUserUUID8 = [modelCopy changedByUserUUID];
      [userCopy setAccessCodeChangedByUserUUID:changedByUserUUID8];

      transactionResult3 = [messageCopy transactionResult];
      [transactionResult3 markChanged];

      [messageCopy respondWithSuccess];
      v54 = MEMORY[0x277CD1A68];
      value4 = [modelCopy value];
      uuid2 = [userCopy uuid];
      v56 = [v54 homeAccessCodeValueWithStringValue:value4 userUUID:uuid2];
      v74 = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
      changedByUserUUID9 = [modelCopy changedByUserUUID];
      v59 = v46;
      v60 = flowCopy;
      v61 = changedByUserUUID9;
      delegate = v71;
      [v71 accessCodeDataManager:v59 didAddHomeAccessCodes:v57 addedByUserUUID:changedByUserUUID9 flow:v60];

      flowCopy = v60;
    }
  }
}

- (id)removeHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Remove HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v41 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [modelCopy setObjectChangeType:3];
    [v20 add:modelCopy withMessage:v24];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v38[3] = &unk_278688D58;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v40 = v18;
    v25 = v18;
    [v20 run:v38];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDRemovedUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  return v30;
}

void __69__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (id)addOrUpdateHMDRemovedUserAccessCodeModel:(id)model flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDRemovedUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDRemovedUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v41 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __74__HMDAccessCodeDataManager_addOrUpdateHMDRemovedUserAccessCodeModel_flow___block_invoke;
    v38[3] = &unk_278688D58;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v40 = v18;
    v25 = v18;
    [v20 run:v38];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDRemovedUserAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  return v30;
}

void __74__HMDAccessCodeDataManager_addOrUpdateHMDRemovedUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (id)removeHMDRemovedUserAccessCodeWithCode:(id)code removedUserInfo:(id)info flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  infoCopy = info;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v32 = 138543874;
    v33 = v16;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = infoCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with HMRemovedUserInfo: %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    uuid = [home uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:infoCopy accessCode:codeCopy homeUUID:uuid];

    v23 = [(HMDAccessCodeDataManager *)selfCopy removeHMDRemovedUserAccessCodeModel:v22 flow:flowCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v32 = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = uUID2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing HMDRemovedUserAccessCode because home reference was nil", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v23 = [v29 futureWithError:v22];
  }

  v30 = v23;

  return v30;
}

- (id)saveRemovedUserAccessCode:(id)code withRemovedUserInfo:(id)info flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  infoCopy = info;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v32 = 138543874;
    v33 = v16;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = infoCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Saving removed user access code with removed user info: %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    v20 = [HMDRemovedUserAccessCodeModel alloc];
    uuid = [home uuid];
    v22 = [(HMDRemovedUserAccessCodeModel *)v20 initWithRemovedUserInfo:infoCopy accessCode:codeCopy homeUUID:uuid];

    v23 = [(HMDAccessCodeDataManager *)selfCopy addOrUpdateHMDRemovedUserAccessCodeModel:v22 flow:flowCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v32 = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = uUID2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not saving removed user access code because home reference was nil", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v23 = [v29 futureWithError:v22];
  }

  v30 = v23;

  return v30;
}

- (id)removeHomeAccessCodeModel:(id)model flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Remove HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v41 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [modelCopy setObjectChangeType:3];
    [v20 add:modelCopy withMessage:v24];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __59__HMDAccessCodeDataManager_removeHomeAccessCodeModel_flow___block_invoke;
    v38[3] = &unk_278688D58;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v40 = v18;
    v25 = v18;
    [v20 run:v38];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDHomeAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  return v30;
}

void __59__HMDAccessCodeDataManager_removeHomeAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (id)addOrUpdateHomeAccessCodeModel:(id)model flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDHomeAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDHomeAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v41 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __64__HMDAccessCodeDataManager_addOrUpdateHomeAccessCodeModel_flow___block_invoke;
    v38[3] = &unk_278688D58;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v40 = v18;
    v25 = v18;
    [v20 run:v38];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDHomeAccessCodeModel, because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  return v30;
}

void __64__HMDAccessCodeDataManager_addOrUpdateHomeAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (id)removeUserAccessCodeModel:(id)model flow:(id)flow
{
  v50 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    changedByUserUUID = [modelCopy changedByUserUUID];
    *buf = 138543874;
    v45 = v13;
    v46 = 2112;
    v47 = uUID;
    v48 = 2112;
    v49 = changedByUserUUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDUserAccessCodeModel, removedByUserUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v19 = objc_alloc_init(MEMORY[0x277D2C900]);
    v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v21 = [backingStore transaction:@"Remove HMDUserAccessCodeModel" options:v20];

    v22 = MEMORY[0x277D0F818];
    v42 = *MEMORY[0x277D0F1C8];
    v23 = HMFEncodedRootObject();
    v43 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = [v22 messageWithName:@"AccessCodeUpdate" messagePayload:v24];

    [modelCopy setObjectChangeType:3];
    [v21 add:modelCopy withMessage:v25];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __59__HMDAccessCodeDataManager_removeUserAccessCodeModel_flow___block_invoke;
    v39[3] = &unk_278688D58;
    v39[4] = selfCopy;
    v40 = flowCopy;
    v41 = v19;
    v26 = v19;
    [v21 run:v39];
    v27 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v30 = [v27 schedulerWithDispatchQueue:workQueue2];
    v31 = [v26 reschedule:v30];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = uUID2;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot remove HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = MEMORY[0x277D2C900];
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v31 = [v37 futureWithError:v21];
  }

  return v31;
}

void __59__HMDAccessCodeDataManager_removeUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model, error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (id)addOrUpdateUserAccessCodeModel:(id)model flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v44 = v13;
    v45 = 2112;
    v46 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding or updating HMDUserAccessCodeModel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];
  backingStore = [home backingStore];

  if (backingStore)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v20 = [backingStore transaction:@"Update HMDUserAccessCodeModel" options:v19];

    v21 = MEMORY[0x277D0F818];
    v41 = *MEMORY[0x277D0F1C8];
    v22 = HMFEncodedRootObject();
    v42 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [v21 messageWithName:@"AccessCodeUpdate" messagePayload:v23];

    [v20 add:modelCopy withMessage:v24];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __64__HMDAccessCodeDataManager_addOrUpdateUserAccessCodeModel_flow___block_invoke;
    v38[3] = &unk_278688D58;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v40 = v18;
    v25 = v18;
    [v20 run:v38];
    v26 = MEMORY[0x277D2C938];
    context3 = [(HMDAccessCodeDataManager *)selfCopy context];
    workQueue2 = [context3 workQueue];
    v29 = [v26 schedulerWithDispatchQueue:workQueue2];
    v30 = [v25 reschedule:v29];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v44 = v34;
      v45 = 2112;
      v46 = uUID2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot add or update HMDUserAccessCodeModel because self.context.home.backingStore is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v36 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v30 = [v36 futureWithError:v20];
  }

  return v30;
}

void __64__HMDAccessCodeDataManager_addOrUpdateUserAccessCodeModel_flow___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to run transaction to update model with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = a1[6];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v10 finishWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated model", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] finishWithNoResult];
  }
}

- (NSSet)accessCodeValuesWithRemovedUserInfo
{
  v17 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
    allKeys = [removedUserInfoByAccessCode allKeys];
    v8 = [allKeys na_map:&__block_literal_global_40_213663];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with removed user info because home reference was nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

id __63__HMDAccessCodeDataManager_accessCodeValuesWithRemovedUserInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1648];
  v3 = a2;
  v4 = [[v2 alloc] initWithStringValue:v3];

  return v4;
}

- (NSSet)accessCodeValuesWithUserLabel
{
  v16 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    users = [home users];
    v7 = [users na_map:&__block_literal_global_37_213668];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  }

  return v8;
}

id __57__HMDAccessCodeDataManager_accessCodeValuesWithUserLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessCode];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD1648]);
    v5 = [v2 accessCode];
    v3 = [v4 initWithStringValue:v5];
  }

  return v3;
}

- (id)userUUIDForAccessCode:(id)code
{
  v19 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    users = [home users];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke;
    v15[3] = &unk_278688680;
    v16 = codeCopy;
    v8 = [users na_firstObjectPassingTest:v15];
    uuid = [v8 uuid];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    uuid = 0;
  }

  return uuid;
}

uint64_t __50__HMDAccessCodeDataManager_userUUIDForAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)simpleLabelForAccessCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];
    v8 = [labelsByAccessCode objectForKeyedSubscript:codeCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code with simple label because home reference was nil", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

- (NSSet)accessCodeValuesWithSimpleLabel
{
  v17 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    v5 = MEMORY[0x277CBEB98];
    labelsByAccessCode = [home labelsByAccessCode];
    allKeys = [labelsByAccessCode allKeys];
    v8 = [allKeys na_map:&__block_literal_global_34_213674];
    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find access code values with simple label because home reference was nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

id __59__HMDAccessCodeDataManager_accessCodeValuesWithSimpleLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1648];
  v3 = a2;
  v4 = [[v2 alloc] initWithStringValue:v3];

  return v4;
}

- (id)_removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v34 = 138543618;
    v35 = v13;
    v36 = 2112;
    v37 = uUID;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing HMDRemovedUserAccessCode with specified value", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (!home)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v34 = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = uUID2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not Removing HMDRemovedUserAccessCode because home reference was nil", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    removedUserInfoByAccessCode2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    futureWithNoResult = [v27 futureWithError:removedUserInfoByAccessCode2];
    goto LABEL_9;
  }

  removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
  v18 = [removedUserInfoByAccessCode objectForKeyedSubscript:codeCopy];

  if (v18)
  {
    removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
    v20 = [removedUserInfoByAccessCode2 objectForKeyedSubscript:codeCopy];
    futureWithNoResult = [(HMDAccessCodeDataManager *)selfCopy removeHMDRemovedUserAccessCodeWithCode:codeCopy removedUserInfo:v20 flow:flowCopy];

LABEL_9:
    goto LABEL_13;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    uUID3 = [flowCopy UUID];
    v34 = 138543618;
    v35 = v31;
    v36 = 2112;
    v37 = uUID3;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find HMDRemovedUserAccessCode with the specified value", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_13:

  return futureWithNoResult;
}

- (void)removeHMDRemovedUserAccessCodeWithAccessCode:(id)code flow:(id)flow
{
  codeCopy = code;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDAccessCodeDataManager_removeHMDRemovedUserAccessCodeWithAccessCode_flow___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v13 = codeCopy;
  v14 = flowCopy;
  v10 = flowCopy;
  v11 = codeCopy;
  dispatch_async(workQueue, block);
}

- (void)_cleanUpOldRemovedUserDataWithReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = uUID;
    v27 = 2112;
    v28 = reasonCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Cleaning up old removedUserInfo with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeDataManager *)selfCopy context];
  home = [context2 home];

  if (home)
  {
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__HMDAccessCodeDataManager__cleanUpOldRemovedUserDataWithReason___block_invoke;
    v21[3] = &unk_278680B18;
    v21[4] = selfCopy;
    v22 = internalOnlyInitializer;
    [removedUserInfoByAccessCode na_each:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = uUID2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not cleaning up old removed user data because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

void __65__HMDAccessCodeDataManager__cleanUpOldRemovedUserDataWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 dateRemoved];
  [v6 timeIntervalSinceNow];
  v8 = -v7;

  v9 = [*(a1 + 32) context];
  [v9 removedUserAccessCodeTimeToLive];
  v11 = v10;

  if (v11 < v8)
  {
    v12 = [*(a1 + 32) removeHMDRemovedUserAccessCodeWithCode:v13 removedUserInfo:v5 flow:*(a1 + 40)];
  }
}

- (id)_removeSimpleLabelAccessCodeValue:(id)value flow:(id)flow
{
  v31 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];
    stringValue = [valueCopy stringValue];
    v14 = [labelsByAccessCode objectForKeyedSubscript:stringValue];

    v15 = [HMDHomeAccessCodeModel alloc];
    uuid = [home uuid];
    stringValue2 = [valueCopy stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:uuid value:stringValue2 label:v14];

    v19 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeModel:v18 flow:flowCopy];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v27 = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = uUID;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v19 = [v25 futureWithError:v14];
  }

  return v19;
}

- (id)_setSimpleLabel:(id)label forAccessCodeValue:(id)value flow:(id)flow
{
  v35 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  valueCopy = value;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    v15 = [HMDHomeAccessCodeModel alloc];
    uuid = [home uuid];
    stringValue = [valueCopy stringValue];
    v18 = [(HMDHomeAccessCodeModel *)v15 initWithHomeUUID:uuid value:stringValue label:labelCopy];

    v19 = [(HMDAccessCodeDataManager *)self addOrUpdateHomeAccessCodeModel:v18 flow:flowCopy];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __68__HMDAccessCodeDataManager__setSimpleLabel_forAccessCodeValue_flow___block_invoke;
    v28[3] = &unk_2786835C0;
    v28[4] = self;
    v29 = valueCopy;
    v30 = flowCopy;
    v20 = [v19 addSuccessBlock:v28];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = uUID;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting simple label for access code value because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v20 = [v26 futureWithError:v18];
  }

  return v20;
}

void __68__HMDAccessCodeDataManager__setSimpleLabel_forAccessCodeValue_flow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringValue];
  [v2 removeHMDRemovedUserAccessCodeWithAccessCode:v3 flow:*(a1 + 48)];
}

- (void)_messageUser:(id)user thatTheirAccessCodeWasChangedWithType:(unint64_t)type flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  userCopy = user;
  flowCopy = flow;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [userCopy uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v31 = v13;
    v32 = 2112;
    v33 = uUID;
    v34 = 2112;
    v35 = uUIDString;
    v36 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Messaging user that their access code was changed. user: %@, changeType: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = [HMDRemoteAccountMessageDestination alloc];
  delegate = [(HMDAccessCodeDataManager *)selfCopy delegate];
  messageTargetUUID = [delegate messageTargetUUID];
  accountHandle = [userCopy accountHandle];
  v21 = [(HMDRemoteAccountMessageDestination *)v17 initWithTarget:messageTargetUUID handle:accountHandle multicast:1];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{type, @"HMDAccessCodeManagerMessageKeyUserAccessCodeChangeType"}];
  v29[0] = v22;
  v28[1] = *MEMORY[0x277D0F1C8];
  v23 = HMFEncodedRootObject();
  v29[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v25 = [HMDRemoteMessage secureMessageWithName:@"HMDAccessCodeManagerUserAccessCodeDidChangeMessage" qualityOfService:33 destination:v21 messagePayload:v24];
  context = [(HMDAccessCodeDataManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v25];
}

- (id)_removeUserAccessCodeValue:(id)value removedByUserUUID:(id)d flow:(id)flow
{
  v42 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    stringValue = [valueCopy stringValue];
    v16 = [HMDAccessCodeDataManager userWithAccessCode:stringValue inHome:home];

    if (v16)
    {
      v17 = [HMDUserAccessCodeModel alloc];
      uuid = [v16 uuid];
      v19 = [(HMDUserAccessCodeModel *)v17 initWithUserUUID:uuid];

      v20 = [(HMDAccessCodeDataManager *)self removeUserAccessCodeModel:v19 flow:flowCopy];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __78__HMDAccessCodeDataManager__removeUserAccessCodeValue_removedByUserUUID_flow___block_invoke;
      v35[3] = &unk_2786835C0;
      v35[4] = self;
      v36 = v16;
      v37 = flowCopy;
      v21 = [v20 addSuccessBlock:v35];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = uUID;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because couldn't find any user with that access code.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = MEMORY[0x277D2C900];
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v21 = [v33 futureWithError:v19];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = uUID2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not removing access code value because home reference was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v21 = [v27 futureWithError:v16];
  }

  return v21;
}

- (id)_setUserWithUUID:(id)d forAccessCodeValue:(id)value changedByUserUUID:(id)iD flow:(id)flow
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  valueCopy = value;
  iDCopy = iD;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeDataManager *)self context];
  home = [context2 home];

  if (home)
  {
    users = [home users];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke;
    v48[3] = &unk_278688680;
    v19 = dCopy;
    v49 = v19;
    v20 = [users na_firstObjectPassingTest:v48];

    if (v20)
    {
      v21 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:v19];
      stringValue = [valueCopy stringValue];
      [(HMDUserAccessCodeModel *)v21 setValue:stringValue];

      [(HMDUserAccessCodeModel *)v21 setChangedByUserUUID:iDCopy];
      accessCode = [v20 accessCode];
      LOBYTE(stringValue) = accessCode != 0;

      v24 = [(HMDAccessCodeDataManager *)self addOrUpdateUserAccessCodeModel:v21 flow:flowCopy];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_23;
      v43[3] = &unk_278680AF0;
      v47 = stringValue;
      v43[4] = self;
      v44 = v20;
      v45 = flowCopy;
      v46 = valueCopy;
      v25 = [v24 addSuccessBlock:v43];
    }

    else
    {
      v42 = iDCopy;
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v38 = v41 = v34;
        *buf = 138543874;
        v51 = v37;
        v52 = 2112;
        v53 = v38;
        v54 = 2112;
        v55 = v19;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because we could not find a user with that UUID.", buf, 0x20u);

        v34 = v41;
      }

      objc_autoreleasePoolPop(v34);
      v39 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v25 = [v39 futureWithError:v21];
      iDCopy = v42;
    }

    v33 = v49;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v31 = v30 = iDCopy;
      *buf = 138543874;
      v51 = v29;
      v52 = 2112;
      v53 = v31;
      v54 = 2112;
      v55 = dCopy;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user UUID: %@, for access code value because home reference was nil", buf, 0x20u);

      iDCopy = v30;
    }

    objc_autoreleasePoolPop(v26);
    v32 = MEMORY[0x277D2C900];
    v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v25 = [v32 futureWithError:v33];
  }

  return v25;
}

uint64_t __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __87__HMDAccessCodeDataManager__setUserWithUUID_forAccessCodeValue_changedByUserUUID_flow___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) _messageUser:*(a1 + 40) thatTheirAccessCodeWasChangedWithType:*(a1 + 64) flow:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 56) stringValue];
  [v2 removeHMDRemovedUserAccessCodeWithAccessCode:v3 flow:*(a1 + 48)];
}

- (void)_setUpAndStartTimer
{
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataCleanUpTimerFactory = [(HMDAccessCodeDataManager *)self dataCleanUpTimerFactory];
  context2 = [(HMDAccessCodeDataManager *)self context];
  [context2 dataCleanUpCheckTimerInterval];
  v7 = dataCleanUpTimerFactory[2](dataCleanUpTimerFactory, 4);
  [(HMDAccessCodeDataManager *)self setDataCleanUpTimer:v7];

  dataCleanUpTimer = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer setDelegate:self];

  context3 = [(HMDAccessCodeDataManager *)self context];
  workQueue2 = [context3 workQueue];
  dataCleanUpTimer2 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer2 setDelegateQueue:workQueue2];

  dataCleanUpTimer3 = [(HMDAccessCodeDataManager *)self dataCleanUpTimer];
  [dataCleanUpTimer3 resume];
}

- (id)removeAllHomeAccessCodesWithFlow:(id)flow
{
  v22 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  homeAccessCodeValues = [(HMDAccessCodeDataManager *)self homeAccessCodeValues];
  v9 = [homeAccessCodeValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(homeAccessCodeValues);
        }

        accessCodeValue = [*(*(&v17 + 1) + 8 * i) accessCodeValue];
        v14 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:accessCodeValue removedByUserUUID:0 flow:flowCopy];
        [array addObject:v14];
      }

      v10 = [homeAccessCodeValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x277D2C900] chainFutures:array];

  return v15;
}

- (id)updateUserInformation:(id)information forHomeAccessCodeWithOldValue:(id)value newAccessCodeValue:(id)codeValue flow:(id)flow
{
  informationCopy = information;
  valueCopy = value;
  codeValueCopy = codeValue;
  flowCopy = flow;
  userUUID = [informationCopy userUUID];

  if (userUUID)
  {
    v15 = [(HMDAccessCodeDataManager *)self setUserInformation:informationCopy forHomeAccessCodeWithValue:codeValueCopy changedByUserUUID:0 flow:flowCopy];
  }

  else
  {
    simpleLabel = [informationCopy simpleLabel];

    if (simpleLabel)
    {
      v17 = [(HMDAccessCodeDataManager *)self removeHomeAccessCodeWithValue:valueCopy removedByUserUUID:0 flow:flowCopy];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __104__HMDAccessCodeDataManager_updateUserInformation_forHomeAccessCodeWithOldValue_newAccessCodeValue_flow___block_invoke;
      v20[3] = &unk_278680AC8;
      v20[4] = self;
      v21 = informationCopy;
      v22 = codeValueCopy;
      v23 = flowCopy;
      v15 = [v17 flatMap:v20];
    }

    else
    {
      v18 = MEMORY[0x277D2C900];
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v15 = [v18 futureWithError:v17];
    }
  }

  return v15;
}

- (id)removeHomeAccessCodeWithValue:(id)value removedByUserUUID:(id)d flow:(id)flow
{
  v45 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    v37 = 138544130;
    v38 = v17;
    v39 = 2112;
    v40 = uUID;
    v41 = 2112;
    v42 = uUID2;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Removing home access code, removedByUserUUID: %@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  accessCodeValuesWithSimpleLabel = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithSimpleLabel];
  v21 = [accessCodeValuesWithSimpleLabel containsObject:valueCopy];

  if (v21)
  {
    v22 = [(HMDAccessCodeDataManager *)selfCopy _removeSimpleLabelAccessCodeValue:valueCopy flow:internalOnlyInitializer];
LABEL_7:
    v25 = v22;
    goto LABEL_14;
  }

  accessCodeValuesWithUserLabel = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithUserLabel];
  v24 = [accessCodeValuesWithUserLabel containsObject:valueCopy];

  if (v24)
  {
    v22 = [(HMDAccessCodeDataManager *)selfCopy _removeUserAccessCodeValue:valueCopy removedByUserUUID:dCopy flow:internalOnlyInitializer];
    goto LABEL_7;
  }

  accessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)selfCopy accessCodeValuesWithRemovedUserInfo];
  v27 = [accessCodeValuesWithRemovedUserInfo containsObject:valueCopy];

  if (v27)
  {
    stringValue = [valueCopy stringValue];
    v29 = [(HMDAccessCodeDataManager *)selfCopy _removeHMDRemovedUserAccessCodeWithAccessCode:stringValue flow:internalOnlyInitializer];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      uUID3 = [internalOnlyInitializer UUID];
      v37 = 138543618;
      v38 = v33;
      v39 = 2112;
      v40 = uUID3;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find home access code", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = MEMORY[0x277D2C900];
    stringValue = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v29 = [v35 futureWithError:stringValue];
  }

  v25 = v29;

LABEL_14:

  return v25;
}

- (id)setUserInformation:(id)information forHomeAccessCodeWithValue:(id)value changedByUserUUID:(id)d flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  valueCopy = value;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeDataManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    [internalOnlyInitializer UUID];
    v37 = internalOnlyInitializer;
    v21 = valueCopy;
    v23 = v22 = dCopy;
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v39 = v20;
    v40 = 2112;
    v41 = v23;
    v42 = 2112;
    v43 = uUID;
    v44 = 2112;
    v45 = informationCopy;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Setting user information: %@, for access code value", buf, 0x2Au);

    dCopy = v22;
    valueCopy = v21;
    internalOnlyInitializer = v37;
  }

  objc_autoreleasePoolPop(v17);
  simpleLabel = [informationCopy simpleLabel];

  if (simpleLabel)
  {
    simpleLabel2 = [informationCopy simpleLabel];
    v27 = [(HMDAccessCodeDataManager *)selfCopy _setSimpleLabel:simpleLabel2 forAccessCodeValue:valueCopy flow:internalOnlyInitializer];
  }

  else
  {
    userUUID = [informationCopy userUUID];

    if (userUUID)
    {
      simpleLabel2 = [informationCopy userUUID];
      v27 = [(HMDAccessCodeDataManager *)selfCopy _setUserWithUUID:simpleLabel2 forAccessCodeValue:valueCopy changedByUserUUID:dCopy flow:internalOnlyInitializer];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        uUID2 = [internalOnlyInitializer UUID];
        *buf = 138543874;
        v39 = v32;
        v40 = 2112;
        v41 = uUID2;
        v42 = 2112;
        v43 = informationCopy;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not setting user information for access code value because empty user information was provided: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v34 = MEMORY[0x277D2C900];
      simpleLabel2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v27 = [v34 futureWithError:simpleLabel2];
    }
  }

  v35 = v27;

  return v35;
}

- (id)homeAccessCodeWithRemovedUserInfoWithUUID:(id)d
{
  dCopy = d;
  homeAccessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMDAccessCodeDataManager_homeAccessCodeWithRemovedUserInfoWithUUID___block_invoke;
  v9[3] = &unk_278680AA0;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [homeAccessCodeValuesWithRemovedUserInfo na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __70__HMDAccessCodeDataManager_homeAccessCodeWithRemovedUserInfoWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInformationValue];
  v3 = [v2 removedUserInfo];
  v4 = [v3 userUUID];
  v5 = HMFEqualObjects();

  return v5;
}

- (NSArray)homeAccessCodeValuesWithRemovedUserInfo
{
  v16 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    removedUserInfoByAccessCode = [home removedUserInfoByAccessCode];

    if (removedUserInfoByAccessCode)
    {
      removedUserInfoByAccessCode2 = [home removedUserInfoByAccessCode];
      v7 = [removedUserInfoByAccessCode2 na_map:&__block_literal_global_15_213702];

      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Home has a nil removedUserInfoByAccessCode but should not";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Cannot fetch user access code values with simple labels because home reference was nil";
LABEL_8:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = MEMORY[0x277CBEBF8];
LABEL_10:

  return v7;
}

- (NSArray)homeAccessCodeValuesWithUserLabels
{
  v14 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    users = [home users];
    v6 = [users na_map:&__block_literal_global_12_213706];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch user access code values with simple labels because home reference was nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id __62__HMDAccessCodeDataManager_homeAccessCodeValuesWithUserLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessCode];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CD1640]);
    v5 = [v2 uuid];
    v6 = [v4 initWithSimpleLabel:0 labelIdentifier:0 userUUID:v5 removedUserInfo:0];

    v7 = objc_alloc(MEMORY[0x277CD1648]);
    v8 = [v2 accessCode];
    v9 = [v7 initWithStringValue:v8];

    v3 = [objc_alloc(MEMORY[0x277CD1A68]) initWithAccessCodeValue:v9 userInformationValue:v6];
  }

  return v3;
}

- (NSArray)homeAccessCodeValuesWithSimpleLabels
{
  v17 = *MEMORY[0x277D85DE8];
  context = [(HMDAccessCodeDataManager *)self context];
  home = [context home];

  if (home)
  {
    labelsByAccessCode = [home labelsByAccessCode];

    if (labelsByAccessCode)
    {
      labelsByAccessCode2 = [home labelsByAccessCode];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__HMDAccessCodeDataManager_homeAccessCodeValuesWithSimpleLabels__block_invoke;
      v13[3] = &unk_278680A38;
      v14 = home;
      v7 = [labelsByAccessCode2 na_map:v13];

      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch home access code values with simple labels because home reference was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v7;
}

id __64__HMDAccessCodeDataManager_homeAccessCodeValuesWithSimpleLabels__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 labelIdentifiersByAccessCode];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = spiClientIdentifierForUUID(v8);

  v10 = [objc_alloc(MEMORY[0x277CD1640]) initWithSimpleLabel:v5 labelIdentifier:v9 userUUID:0 removedUserInfo:0];
  v11 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v6];

  v12 = [objc_alloc(MEMORY[0x277CD1A68]) initWithAccessCodeValue:v11 userInformationValue:v10];

  return v12;
}

- (NSArray)homeAccessCodeValues
{
  homeAccessCodeValuesWithSimpleLabels = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithSimpleLabels];
  homeAccessCodeValuesWithUserLabels = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithUserLabels];
  v5 = [homeAccessCodeValuesWithSimpleLabels arrayByAddingObjectsFromArray:homeAccessCodeValuesWithUserLabels];
  homeAccessCodeValuesWithRemovedUserInfo = [(HMDAccessCodeDataManager *)self homeAccessCodeValuesWithRemovedUserInfo];
  v7 = [v5 arrayByAddingObjectsFromArray:homeAccessCodeValuesWithRemovedUserInfo];

  return v7;
}

- (void)configure
{
  context = [(HMDAccessCodeDataManager *)self context];
  isCurrentDeviceOwnerController = [context isCurrentDeviceOwnerController];

  if (isCurrentDeviceOwnerController)
  {
    [(HMDAccessCodeDataManager *)self _setUpAndStartTimer];

    [(HMDAccessCodeDataManager *)self _cleanUpOldRemovedUserDataWithReason:@"configure"];
  }
}

- (HMDAccessCodeDataManager)initWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HMDAccessCodeDataManager;
  v9 = [(HMDAccessCodeDataManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    dataCleanUpTimerFactory = v10->_dataCleanUpTimerFactory;
    v10->_dataCleanUpTimerFactory = &__block_literal_global_213717;
  }

  return v10;
}

id __53__HMDAccessCodeDataManager_initWithContext_delegate___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t88 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t88, &__block_literal_global_87_213730);
  }

  v3 = logCategory__hmf_once_v89;

  return v3;
}

void __39__HMDAccessCodeDataManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v89;
  logCategory__hmf_once_v89 = v0;
}

+ (id)_accessCodeInHome:(id)home forRemovedUserAccessCodeModel:(id)model
{
  homeCopy = home;
  modelCopy = model;
  removedUserInfoByAccessCode = [homeCopy removedUserInfoByAccessCode];
  allKeys = [removedUserInfoByAccessCode allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDAccessCodeDataManager__accessCodeInHome_forRemovedUserAccessCodeModel___block_invoke;
  v13[3] = &unk_278680BA0;
  v14 = modelCopy;
  v15 = homeCopy;
  v9 = homeCopy;
  v10 = modelCopy;
  v11 = [allKeys na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __76__HMDAccessCodeDataManager__accessCodeInHome_forRemovedUserAccessCodeModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = [*(a1 + 40) removedUserInfoByAccessCode];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [HMDRemovedUserAccessCodeModel modelUUIDForHomeUUID:v6 removedUserInfo:v8 accessCode:v4];

  v10 = HMFEqualObjects();
  return v10;
}

+ (id)_accessCodeInHome:(id)home forHomeAccessCodeModel:(id)model
{
  homeCopy = home;
  modelCopy = model;
  labelsByAccessCode = [homeCopy labelsByAccessCode];
  allKeys = [labelsByAccessCode allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDAccessCodeDataManager__accessCodeInHome_forHomeAccessCodeModel___block_invoke;
  v13[3] = &unk_278680BA0;
  v14 = modelCopy;
  v15 = homeCopy;
  v9 = homeCopy;
  v10 = modelCopy;
  v11 = [allKeys na_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __69__HMDAccessCodeDataManager__accessCodeInHome_forHomeAccessCodeModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:v6 accessCodeValue:v4];

  v8 = HMFEqualObjects();
  return v8;
}

+ (id)userWithAccessCode:(id)code inHome:(id)home
{
  codeCopy = code;
  users = [home users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke;
  v10[3] = &unk_278688680;
  v11 = codeCopy;
  v7 = codeCopy;
  v8 = [users na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __54__HMDAccessCodeDataManager_userWithAccessCode_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)createUserAccessCodeModelFromAccessCode:(id)code forUserUUID:(id)d changedByUserUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  codeCopy = code;
  v10 = [[HMDUserAccessCodeModel alloc] initWithUserUUID:dCopy];

  [(HMDUserAccessCodeModel *)v10 setValue:codeCopy];
  [(HMDUserAccessCodeModel *)v10 setChangedByUserUUID:iDCopy];

  return v10;
}

+ (id)createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode:(id)code forHome:(id)home
{
  codeCopy = code;
  homeCopy = home;
  allKeys = [codeCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HMDAccessCodeDataManager_createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode_forHome___block_invoke;
  v12[3] = &unk_278680A10;
  v13 = codeCopy;
  v14 = homeCopy;
  v8 = homeCopy;
  v9 = codeCopy;
  v10 = [allKeys na_map:v12];

  return v10;
}

HMDRemovedUserAccessCodeModel *__95__HMDAccessCodeDataManager_createRemovedUserInfoModelsFromRemovedUserInfoByAccessCode_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDRemovedUserAccessCodeModel alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [*(a1 + 40) uuid];
  v7 = [(HMDRemovedUserAccessCodeModel *)v4 initWithRemovedUserInfo:v5 accessCode:v3 homeUUID:v6];

  return v7;
}

+ (id)createHomeAccessCodeModelsFromLabelsByAccessCode:(id)code forHome:(id)home
{
  codeCopy = code;
  homeCopy = home;
  allKeys = [codeCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDAccessCodeDataManager_createHomeAccessCodeModelsFromLabelsByAccessCode_forHome___block_invoke;
  v12[3] = &unk_278680A10;
  v13 = homeCopy;
  v14 = codeCopy;
  v8 = codeCopy;
  v9 = homeCopy;
  v10 = [allKeys na_map:v12];

  return v10;
}

HMDHomeAccessCodeModel *__85__HMDAccessCodeDataManager_createHomeAccessCodeModelsFromLabelsByAccessCode_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDHomeAccessCodeModel alloc];
  v5 = [*(a1 + 32) uuid];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v7 = [(HMDHomeAccessCodeModel *)v4 initWithHomeUUID:v5 value:v3 label:v6];

  return v7;
}

@end