@interface HMDSiriEndpointOnboardingManager
- (BOOL)readyToApplyOnboardingSelectionsWithHomeUUID:(id)d accessoryUUID:(id)iD;
- (HMDSiriEndpointOnboardingManager)initWithDataSource:(id)source;
- (HMDSiriEndpointOnboardingManagerDataSource)dataSource;
- (void)_applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD userUUID:(id)uID cacheKey:(id)key completion:(id)completion;
- (void)_enableUserListeningHistoryForHomeUUID:(id)d accessoryUUID:(id)iD userUUID:(id)uID;
- (void)_setNeedsOnboardingCompleteWitHomeUUID:(id)d accessoryUUID:(id)iD completion:(id)completion;
- (void)applyCachedOnboardingSelectionsWithAccessoryUUID:(id)d homeUUID:(id)iD;
- (void)applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD userUUID:(id)uID completion:(id)completion;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleCompositeSettingsControllerConfigured:(id)configured;
@end

@implementation HMDSiriEndpointOnboardingManager

- (HMDSiriEndpointOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)readyToApplyOnboardingSelectionsWithHomeUUID:(id)d accessoryUUID:(id)iD
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dataSource = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v9 = [dataSource accessoryWithHomeUUID:dCopy accessoryUUID:iDCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v12)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v24;
        v32 = 2112;
        v33 = iDCopy;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@HAP accessory is not found. accessoryUUID: %@", &v30, 0x16u);
      }

      goto LABEL_19;
    }

    if ([v11 isSecureSessionEstablished])
    {
      siriEndpointProfile = [v11 siriEndpointProfile];

      if (siriEndpointProfile)
      {
        v16 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v11;
        v27 = "%{public}@Siri endpoint profile is not created. Accessory: %@";
        goto LABEL_18;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v11;
        v27 = "%{public}@Accessory is not configured. Accessory: %@";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v27, &v30, 0x16u);
      }
    }

LABEL_19:

    objc_autoreleasePoolPop(v21);
    v16 = 0;
    goto LABEL_20;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v20;
    v32 = 2112;
    v33 = iDCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Accessory is not found. accessoryUUID: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v16 = 0;
LABEL_21:

  return v16;
}

- (void)_enableUserListeningHistoryForHomeUUID:(id)d accessoryUUID:(id)iD userUUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  dataSource = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  [dataSource enableUserListeningHistoryForHomeUUID:dCopy accessoryUUID:iDCopy userUUID:uIDCopy];
}

- (void)_setNeedsOnboardingCompleteWitHomeUUID:(id)d accessoryUUID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  dataSource = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HMDSiriEndpointOnboardingManager__setNeedsOnboardingCompleteWitHomeUUID_accessoryUUID_completion___block_invoke;
  v13[3] = &unk_279733F30;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource setNeedsOnboardingCompleteWitHomeUUID:dCopy accessoryUUID:iDCopy completion:v13];
}

void __100__HMDSiriEndpointOnboardingManager__setNeedsOnboardingCompleteWitHomeUUID_accessoryUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Setting needsOnboarding complete failed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)_applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD userUUID:(id)uID cacheKey:(id)key completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  keyCopy = key;
  completionCopy = completion;
  selectionsCopy = selections;
  dataSource = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke;
  v26[3] = &unk_27972D7D0;
  v26[4] = self;
  v27 = iDCopy;
  v28 = dCopy;
  v29 = keyCopy;
  v30 = uIDCopy;
  v31 = completionCopy;
  v21 = completionCopy;
  v22 = uIDCopy;
  v23 = keyCopy;
  v24 = dCopy;
  v25 = iDCopy;
  [dataSource applyOnboardingSelections:selectionsCopy accessoryUUID:v24 homeUUID:v25 completion:v26];
}

void __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMSiriEndpointOnboardingResultAsString();
    *buf = 138543874;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2114;
    v31 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply result received from controller: %{public}@ error:%{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5 || a3 != 2)
  {
    v20 = a1[9];
    if (v20)
    {
      v20[2](v20, 0, a3);
    }
  }

  else
  {
    objc_initWeak(buf, a1[4]);
    v11 = a1[5];
    v12 = a1[4];
    v13 = a1[6];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke_20;
    v21[3] = &unk_27972D7A8;
    objc_copyWeak(&v25, buf);
    v14 = a1[7];
    v15 = a1[5];
    v16 = a1[6];
    v17 = a1[8];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v22 = v19;
    v23 = v18;
    v24 = a1[9];
    [v12 _setNeedsOnboardingCompleteWitHomeUUID:v11 accessoryUUID:v13 completion:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!v3)
  {
    os_unfair_lock_lock_with_options();
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing cached onboarding selections, key: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6[1] removeObjectForKey:*(a1 + 32)];
    [v6[2] removeObjectForKey:*(a1 + 32)];
    [v6 _enableUserListeningHistoryForHomeUUID:*(a1 + 40) accessoryUUID:*(a1 + 48) userUUID:*(a1 + 56)];
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 2);
    }

    os_unfair_lock_unlock(WeakRetained + 6);
  }
}

- (void)applyCachedOnboardingSelectionsWithAccessoryUUID:(id)d homeUUID:(id)iD
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v39 = v11;
    v40 = 2112;
    v41 = iDCopy;
    v42 = 2112;
    v43 = dCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Apply cached onboarding selections: homeUUID: %@ accessoryUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  dataSource = [(HMDSiriEndpointOnboardingManager *)selfCopy dataSource];
  v13 = [dataSource needsOnboardingForHomeUUID:iDCopy accessoryUUID:dCopy];
  v14 = v13;
  if (v13)
  {
    if ([v13 BOOLValue])
    {
      hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", iDCopy, dCopy];
      os_unfair_lock_lock_with_options();
      v17 = [(NSMutableDictionary *)selfCopy->_onboardingSelections objectForKey:dCopy];
      v18 = v17 == 0;

      if (v18)
      {
        context = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v32;
          v40 = 2112;
          v41 = dCopy;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections matching key not found in the cache: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        v19 = [(NSMutableDictionary *)selfCopy->_onboardingSelections objectForKeyedSubscript:dCopy];
        v20 = [(NSMutableDictionary *)selfCopy->_onboardingUserUUID objectForKey:dCopy];

        if (v20)
        {
          v21 = [(NSMutableDictionary *)selfCopy->_onboardingUserUUID objectForKeyedSubscript:dCopy];

          hmf_zeroUUID = v21;
        }

        os_unfair_lock_unlock(&selfCopy->_lock);
        if ([(HMDSiriEndpointOnboardingManager *)selfCopy readyToApplyOnboardingSelectionsWithHomeUUID:iDCopy accessoryUUID:dCopy])
        {
          [(HMDSiriEndpointOnboardingManager *)selfCopy _applyOnboardingSelections:v19 accessoryUUID:dCopy homeUUID:iDCopy userUUID:hmf_zeroUUID cacheKey:dCopy completion:0];
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v39 = v35;
            v40 = 2112;
            v41 = dCopy;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@It's not ready to apply onboarding. accessoryUUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = dCopy;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already configured on the accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      [(HMDSiriEndpointOnboardingManager *)v27 _setNeedsOnboardingCompleteWitHomeUUID:iDCopy accessoryUUID:dCopy completion:0];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not determine needsOnboarding state. accessoryUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)applyOnboardingSelections:(id)selections accessoryUUID:(id)d homeUUID:(id)iD userUUID:(id)uID completion:(id)completion
{
  v59 = *MEMORY[0x277D85DE8];
  selectionsCopy = selections;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  completionCopy = completion;
  if (!selectionsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_30;
  }

  if (!dCopy)
  {
LABEL_30:
    _HMFPreconditionFailure();
    goto LABEL_31;
  }

  if (!iDCopy)
  {
LABEL_31:
    _HMFPreconditionFailure();
LABEL_32:
    _HMFPreconditionFailure();
  }

  v16 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_32;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v52 = v20;
    v53 = 2112;
    v54 = selectionsCopy;
    v55 = 2112;
    v56 = iDCopy;
    v57 = 2112;
    v58 = dCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Apply onboarding selections: %@ homeUUID: %@ accessoryUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  dataSource = [(HMDSiriEndpointOnboardingManager *)selfCopy dataSource];
  v21 = [dataSource needsOnboardingForHomeUUID:iDCopy accessoryUUID:dCopy];
  v22 = v21;
  if (v21)
  {
    if ([v21 BOOLValue])
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", iDCopy, dCopy];
      os_unfair_lock_lock_with_options();
      v24 = [(NSMutableDictionary *)selfCopy->_onboardingSelections objectForKey:dCopy];

      context = objc_autoreleasePoolPush();
      v25 = selfCopy;
      if (v24)
      {
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v27;
          v53 = 2112;
          v54 = dCopy;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already cached, key: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v16[2](v16, 0, 1);
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v37;
          v53 = 2112;
          v54 = dCopy;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Caching onboarding selections, key: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [(NSMutableDictionary *)selfCopy->_onboardingSelections setObject:selectionsCopy forKey:dCopy];
        contexta = objc_autoreleasePoolPush();
        v38 = v25;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v40;
          v53 = 2112;
          v54 = uIDCopy;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Caching onboarding user UUID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        [v38[2] setObject:uIDCopy forKey:dCopy];
        os_unfair_lock_unlock(&selfCopy->_lock);
        if ([v38 readyToApplyOnboardingSelectionsWithHomeUUID:iDCopy accessoryUUID:dCopy])
        {
          [v38 _applyOnboardingSelections:selectionsCopy accessoryUUID:dCopy homeUUID:iDCopy userUUID:uIDCopy cacheKey:dCopy completion:v16];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v38;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v52 = v44;
            v53 = 2112;
            v54 = dCopy;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@It's not ready to apply onboarding. accessoryUUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v16[2](v16, 0, 3);
        }
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v35;
        v53 = 2112;
        v54 = dCopy;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already configured on the accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __105__HMDSiriEndpointOnboardingManager_applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_completion___block_invoke;
      v49[3] = &unk_279735558;
      v50 = v16;
      [(HMDSiriEndpointOnboardingManager *)v33 _setNeedsOnboardingCompleteWitHomeUUID:iDCopy accessoryUUID:dCopy completion:v49];
      dCopy = v50;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v31;
      v53 = 2112;
      v54 = dCopy;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not determine needsOnboarding state. accessoryUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    dCopy = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (v16)[2](v16, dCopy, 1);
  }
}

- (void)handleAccessoryConfigured:(id)configured
{
  v23 = *MEMORY[0x277D85DE8];
  configuredCopy = configured;
  object = [configuredCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    home = [v7 home];
    if (home)
    {
      uuid = [v7 uuid];
      uuid2 = [home uuid];
      [(HMDSiriEndpointOnboardingManager *)self applyCachedOnboardingSelectionsWithAccessoryUUID:uuid homeUUID:uuid2];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v18;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory is configured with invalid home: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
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
      v19 = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid HAP accessory is configured", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleCompositeSettingsControllerConfigured:(id)configured
{
  v29 = *MEMORY[0x277D85DE8];
  configuredCopy = configured;
  userInfo = [configuredCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDHomeUUIDOwnerUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 hmf_UUIDForKey:@"HMDCompositeSettingControllerOwnerUUIDNotificationKey"];
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
      v12 = [v8 hmf_UUIDForKey:@"HMDCompositeSettingControllerHomeUUIDNotificationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        [(HMDSiriEndpointOnboardingManager *)self applyCachedOnboardingSelectionsWithAccessoryUUID:v11 homeUUID:v14];
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid homeUUID", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid accessoryUUID", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid homeUUID and ownerUUID info", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (HMDSiriEndpointOnboardingManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = HMDSiriEndpointOnboardingManager;
  v5 = [(HMDSiriEndpointOnboardingManager *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    onboardingSelections = v5->_onboardingSelections;
    v5->_onboardingSelections = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    onboardingUserUUID = v5->_onboardingUserUUID;
    v5->_onboardingUserUUID = v8;

    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel_handleCompositeSettingsControllerConfigured_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v5 selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConfiguredNotification" object:0];

  return v5;
}

@end