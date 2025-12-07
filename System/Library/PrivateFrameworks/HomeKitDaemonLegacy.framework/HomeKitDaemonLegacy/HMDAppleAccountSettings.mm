@interface HMDAppleAccountSettings
+ (BOOL)supportsCloudSettings;
+ (id)logCategory;
+ (id)sharedSettings;
- (BOOL)isHomeEnabled;
- (BOOL)isKeychainSyncEnabled;
- (BOOL)isManaged;
- (BOOL)isMultiUser;
- (HMDAppleAccountSettings)init;
- (id)attributeDescriptions;
- (void)__migrateHomePreferences;
- (void)__registerForKeychainChangeNotifications;
- (void)__synchronize;
- (void)__updateHomeEnabled:(BOOL)enabled userInitiated:(BOOL)initiated completionHandler:(id)handler;
- (void)_notifyClientsOfUpdatedHomeState:(BOOL)state userInitiated:(BOOL)initiated;
- (void)_notifyClientsOfUpdatedKeychainSyncState:(BOOL)state;
- (void)enableHome:(BOOL)home userInitiated:(BOOL)initiated;
- (void)handleManateeAvailabilityNotification:(id)notification;
- (void)synchronize;
- (void)updateHomeEnabled:(BOOL)enabled completionHandler:(id)handler;
@end

@implementation HMDAppleAccountSettings

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAppleAccountSettings *)self isHomeEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"HME" value:v4];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAppleAccountSettings *)self isKeychainSyncEnabled];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"KSE" value:v7];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAppleAccountSettings *)self isManaged];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"MA" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAppleAccountSettings *)self isMultiUser];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"MU" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_12089 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_12089, &__block_literal_global_12090);
  }

  v3 = logCategory__hmf_once_v1_12091;

  return v3;
}

uint64_t __46__HMDAppleAccountSettings_Common__logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_12091;
  logCategory__hmf_once_v1_12091 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)handleManateeAvailabilityNotification:(id)notification
{
  clientQueue = [(HMDAppleAccountSettings *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAppleAccountSettings_handleManateeAvailabilityNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __65__HMDAppleAccountSettings_handleManateeAvailabilityNotification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received Manatee availability notification", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) __synchronize];
}

- (void)__updateHomeEnabled:(BOOL)enabled userInitiated:(BOOL)initiated completionHandler:(id)handler
{
  enabledCopy = enabled;
  v43 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (+[HMDAppleAccountSettings supportsCloudSettings])
  {
    context = objc_autoreleasePoolPush();
    v9 = +[HMDAppleAccountManager sharedManager];
    accountStore = [v9 accountStore];

    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
    v12 = aa_primaryAppleAccount;
    if (aa_primaryAppleAccount)
    {
      v13 = MEMORY[0x277CB9138];
      if (enabledCopy && (v14 = *MEMORY[0x277CB9138], ([aa_primaryAppleAccount isProvisionedForDataclass:*MEMORY[0x277CB9138]] & 1) == 0))
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = v14;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to enable iCloud switch for account. Account currently unprovisioned for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        if (handlerCopy)
        {
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
          handlerCopy[2](handlerCopy, v32);
        }
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HMFGetLogIdentifier();
          v19 = v18;
          v20 = @"disabled";
          if (enabledCopy)
          {
            v20 = @"enabled";
          }

          *buf = 138543618;
          v40 = v18;
          v41 = 2112;
          v42 = v20;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating iCloud setting to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"kCloudDataSyncInProgressUpdatedNotification" object:selfCopy2];

        [v12 setEnabled:enabledCopy forDataclass:*v13];
        objc_initWeak(buf, selfCopy2);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __79__HMDAppleAccountSettings___updateHomeEnabled_userInitiated_completionHandler___block_invoke;
        v34[3] = &unk_279724440;
        objc_copyWeak(&v36, buf);
        v37 = enabledCopy;
        initiatedCopy = initiated;
        v35 = handlerCopy;
        [accountStore saveVerifiedAccount:v12 withCompletionHandler:v34];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to update iCloud setting, there is no primary account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      if (handlerCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        handlerCopy[2](handlerCopy, v27);
      }
    }

    objc_autoreleasePoolPop(context);
  }

  else if (handlerCopy)
  {
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v22);
  }
}

void __79__HMDAppleAccountSettings___updateHomeEnabled_userInitiated_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained enableHome:*(a1 + 48) userInitiated:*(a1 + 49)];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to save iCloud setting with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v5);
  }
}

- (void)updateHomeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMDAppleAccountSettings *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDAppleAccountSettings_updateHomeEnabled_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  enabledCopy = enabled;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

- (void)__migrateHomePreferences
{
  v3 = *MEMORY[0x277CD0030];
  v4 = CFPreferencesCopyAppValue(@"kDisplayiCloudSwitch", *MEMORY[0x277CD0030]);
  if (v4)
  {
    v5 = v4;
    CFPreferencesSetAppValue(@"kDisplayiCloudSwitch", 0, v3);
    CFRelease(v5);
  }

  v6 = CFPreferencesCopyAppValue(@"kiCloudSwitchStateKey", v3);
  TypeID = CFBooleanGetTypeID();
  objc_opt_class();
  if (v6 && CFGetTypeID(v6) != TypeID)
  {
    CFRelease(v6);
    v6 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    CFPreferencesSetAppValue(@"kiCloudSwitchStateKey", 0, v3);
    -[HMDAppleAccountSettings __updateHomeEnabled:userInitiated:completionHandler:](self, "__updateHomeEnabled:userInitiated:completionHandler:", [v9 BOOLValue], 0, 0);
  }

  [(HMDAppleAccountSettings *)self setMigrated:1];
}

- (void)__registerForKeychainChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CFD408]];
  [defaultCenter addObserver:self selector:sel_handleManateeAvailabilityNotification_ name:v3 object:0];
}

- (void)__synchronize
{
  v41 = *MEMORY[0x277D85DE8];
  if (+[HMDAppleAccountSettings supportsCloudSettings])
  {
    os_unfair_lock_lock_with_options();
    context = objc_autoreleasePoolPush();
    v3 = +[HMDAppleAccountManager sharedManager];
    accountStore = [v3 accountStore];
    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

    v5 = [aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x277CB9138]];
    homeEnabled = self->_homeEnabled;
    v7 = homeEnabled != v5;
    if (homeEnabled != v5)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v11;
        v39 = 1024;
        LODWORD(v40) = v5;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating isHomeEnabled to %{BOOL}d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v8);
      self->_homeEnabled = v5;
      [(HMDAppleAccountSettings *)selfCopy _notifyClientsOfUpdatedHomeState:v5 userInitiated:0];
    }

    if (![(HMDAppleAccountSettings *)self migrated])
    {
      [(HMDAppleAccountSettings *)self __migrateHomePreferences];
    }

    v12 = objc_alloc_init(MEMORY[0x277CFD548]);
    v36 = 0;
    v13 = [v12 isManateeAvailable:&v36];
    v14 = v36;
    if ((v13 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v18;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@The v0 keychain is not enabled: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    if (self->_keychainSyncEnabled != v13)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v22;
        v39 = 1024;
        LODWORD(v40) = v13;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating keychain sync enabled to %{BOOL}d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v19);
      self->_keychainSyncEnabled = v13;
      [(HMDAppleAccountSettings *)selfCopy3 _notifyClientsOfUpdatedKeychainSyncState:v13];
      v7 = 1;
    }

    aa_isManagedAppleID = [aa_primaryAppleAccount aa_isManagedAppleID];
    if (self->_managed != aa_isManagedAppleID)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v27;
        v39 = 1024;
        LODWORD(v40) = aa_isManagedAppleID;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating isManaged to %{BOOL}d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v24);
      self->_managed = aa_isManagedAppleID;
      v7 = 1;
    }

    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    isMultiUser = [mEMORY[0x277D77BF8] isMultiUser];

    if (self->_multiUser != isMultiUser)
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v33;
        v39 = 1024;
        LODWORD(v40) = isMultiUser;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating isMultiUser to %{BOOL}d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v30);
      self->_multiUser = isMultiUser;
      v7 = 1;
    }

    objc_autoreleasePoolPop(context);
    os_unfair_lock_unlock(&self->_lock.lock);
    if (v7)
    {
      __HMDAppleAccountSettingsPostUpdatedNotification(self);
    }
  }
}

- (void)synchronize
{
  if (+[HMDAppleAccountSettings supportsCloudSettings])
  {
    clientQueue = [(HMDAppleAccountSettings *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__HMDAppleAccountSettings_synchronize__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(clientQueue, block);
  }
}

uint64_t __38__HMDAppleAccountSettings_synchronize__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Synchronizing apple account settings", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) __synchronize];
}

- (BOOL)isMultiUser
{
  os_unfair_lock_lock_with_options();
  multiUser = self->_multiUser;
  os_unfair_lock_unlock(&self->_lock.lock);
  return multiUser;
}

- (BOOL)isManaged
{
  os_unfair_lock_lock_with_options();
  managed = self->_managed;
  os_unfair_lock_unlock(&self->_lock.lock);
  return managed;
}

- (void)_notifyClientsOfUpdatedKeychainSyncState:(BOOL)state
{
  clientQueue = [(HMDAppleAccountSettings *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDAppleAccountSettings__notifyClientsOfUpdatedKeychainSyncState___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __68__HMDAppleAccountSettings__notifyClientsOfUpdatedKeychainSyncState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"HMDAppleAccountSettingsKeychainSyncStateUpdatedNotificationKey" object:*(a1 + 32)];
}

- (BOOL)isKeychainSyncEnabled
{
  os_unfair_lock_lock_with_options();
  keychainSyncEnabled = self->_keychainSyncEnabled;
  os_unfair_lock_unlock(&self->_lock.lock);
  return keychainSyncEnabled;
}

- (void)_notifyClientsOfUpdatedHomeState:(BOOL)state userInitiated:(BOOL)initiated
{
  clientQueue = [(HMDAppleAccountSettings *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HMDAppleAccountSettings__notifyClientsOfUpdatedHomeState_userInitiated___block_invoke;
  v8[3] = &unk_27972C680;
  v8[4] = self;
  stateCopy = state;
  initiatedCopy = initiated;
  dispatch_async(clientQueue, v8);
}

void __74__HMDAppleAccountSettings__notifyClientsOfUpdatedHomeState_userInitiated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Updated isHomeEnabled to %{BOOL}d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{*(a1 + 41), @"kIsUserInitiated"}];
  v12 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMDAppleAccountSettingsHomeStateUpdatedNotification" object:v8 userInfo:v10];
}

- (void)enableHome:(BOOL)home userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  if (self->_homeEnabled == homeCopy)
  {

    os_unfair_lock_unlock(&self->_lock.lock);
  }

  else
  {
    self->_homeEnabled = homeCopy;
    os_unfair_lock_unlock(&self->_lock.lock);
    [(HMDAppleAccountSettings *)self _notifyClientsOfUpdatedHomeState:initiatedCopy userInitiated:initiatedCopy];

    __HMDAppleAccountSettingsPostUpdatedNotification(self);
  }
}

- (BOOL)isHomeEnabled
{
  os_unfair_lock_lock_with_options();
  homeEnabled = self->_homeEnabled;
  os_unfair_lock_unlock(&self->_lock.lock);
  return homeEnabled;
}

- (HMDAppleAccountSettings)init
{
  v29 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDAppleAccountSettings;
  v2 = [(HMDAppleAccountSettings *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock.lock._os_unfair_lock_opaque = 0;
    v4 = HMDispatchQueueNameString();
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v7;

    v3->_homeEnabled = 1;
    v3->_keychainSyncEnabled = 1;
    [(HMDAppleAccountSettings *)v3 __registerForKeychainChangeNotifications];
    [(HMDAppleAccountSettings *)v3 __synchronize];
    v9 = objc_autoreleasePoolPush();
    v10 = v3;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      isHomeEnabled = [(HMDAppleAccountSettings *)v10 isHomeEnabled];
      isKeychainSyncEnabled = [(HMDAppleAccountSettings *)v10 isKeychainSyncEnabled];
      isManaged = [(HMDAppleAccountSettings *)v10 isManaged];
      isMultiUser = [(HMDAppleAccountSettings *)v10 isMultiUser];
      *buf = 138544386;
      v20 = v12;
      v21 = 1024;
      v22 = isHomeEnabled;
      v23 = 1024;
      v24 = isKeychainSyncEnabled;
      v25 = 1024;
      v26 = isManaged;
      v27 = 1024;
      v28 = isMultiUser;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Initialized Apple account settings with isHomeEnabled: %{BOOL}d, isKeychainSyncEnabled: %{BOOL}d, isManaged: %{BOOL}d, isMultiUser: %{BOOL}d", buf, 0x24u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v3;
}

+ (BOOL)supportsCloudSettings
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x26u >> productPlatform);
}

+ (id)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    dispatch_once(&sharedSettings_onceToken, &__block_literal_global_26602);
  }

  v3 = sharedSettings_sharedSettings;

  return v3;
}

uint64_t __41__HMDAppleAccountSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(HMDAppleAccountSettings);
  v1 = sharedSettings_sharedSettings;
  sharedSettings_sharedSettings = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end