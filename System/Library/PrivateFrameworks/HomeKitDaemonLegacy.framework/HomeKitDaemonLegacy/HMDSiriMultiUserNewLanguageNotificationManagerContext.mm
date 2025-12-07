@interface HMDSiriMultiUserNewLanguageNotificationManagerContext
+ (id)logCategory;
+ (id)userReadableLanguageFromCode:(id)code;
- (BOOL)hasCurrentUserSeenNotification;
- (BOOL)isRMVEnabledForCurrentUser;
- (HMDSiriMultiUserNewLanguageNotificationManagerContext)initWithUser:(id)user workQueue:(id)queue;
- (HMDSiriMultiUserNewLanguageNotificationManagerContextDelegate)delegate;
- (HMDUser)user;
- (NSArray)mediaAccessories;
- (NSString)currentDeviceSiriLanguage;
- (id)siriLanguageForMediaAccessory:(id)accessory;
- (id)siriLanguagesRequiringNotificationForVersion:(id)version;
- (void)configure;
- (void)handleMediaAccessorySoftwareVersionUpdated:(id)updated;
- (void)setCurrentUserHasSeenNotification;
- (void)showNotificationForNewlySupportedLanguage:(id)language;
- (void)submitLogEventForShownNotificationWithLanguage:(id)language;
@end

@implementation HMDSiriMultiUserNewLanguageNotificationManagerContext

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (HMDSiriMultiUserNewLanguageNotificationManagerContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submitLogEventForShownNotificationWithLanguage:(id)language
{
  languageCopy = language;
  v5 = [[HMDMultiUserNewLanguageNotificationLogEvent alloc] initWithLanguage:languageCopy];

  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:v5];
}

- (void)showNotificationForNewlySupportedLanguage:(id)language
{
  v19 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  user = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  home = [user home];

  if (home)
  {
    v7 = [HMDSiriMultiUserNewLanguageNotificationManagerContext userReadableLanguageFromCode:languageCopy];
    if (v7)
    {
      v8 = +[HMDBulletinBoard sharedBulletinBoard];
      [v8 insertNewRMVLanguageBulletinForHome:home language:v7];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine user readable string from language code", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Not showing new language RMV notification because home is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)siriLanguageForMediaAccessory:(id)accessory
{
  settingsController = [accessory settingsController];
  siriLanguage = [settingsController siriLanguage];

  return siriLanguage;
}

- (id)siriLanguagesRequiringNotificationForVersion:(id)version
{
  v25 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [mEMORY[0x277D0F8D0] preferenceForKey:@"forceSiriRMVNewLanguageToEnglish"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@forceSiriRMVNewLanguageToEnglish is enabled, so forcing to english", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CBEB98] setWithObject:@"en-US"];
  }

  else
  {
    shortVersionString = [versionCopy shortVersionString];

    if (shortVersionString)
    {
      v14 = MEMORY[0x277CBEB98];
      shortVersionString2 = [versionCopy shortVersionString];
      v16 = AFPreferencesMultiUserCompanionNotificationLanguageCodesForHomePodVersion();
      v17 = [v14 setWithArray:v16];

      goto LABEL_11;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@The software version is nil", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v17 = v12;
LABEL_11:

  return v17;
}

- (NSString)currentDeviceSiriLanguage
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  return languageCode;
}

- (BOOL)isRMVEnabledForCurrentUser
{
  v14 = *MEMORY[0x277D85DE8];
  user = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = user;
  if (user)
  {
    userDataController = [user userDataController];
    isRecognizeMyVoiceEnabled = [userDataController isRecognizeMyVoiceEnabled];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to setCurrentUserHasSeenNotification because user is nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    isRecognizeMyVoiceEnabled = 0;
  }

  return isRecognizeMyVoiceEnabled;
}

- (void)setCurrentUserHasSeenNotification
{
  v12 = *MEMORY[0x277D85DE8];
  user = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = user;
  if (user)
  {
    userDataController = [user userDataController];
    [userDataController setHasUserSeenRMVNewLanguageNotification:1];

    [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self setCachedHasCurrentUserSeenNotification:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to setCurrentUserHasSeenNotification because user is nil", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)hasCurrentUserSeenNotification
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self cachedHasCurrentUserSeenNotification])
  {
    return 1;
  }

  user = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v5 = user;
  if (user)
  {
    userDataController = [user userDataController];
    hasUserSeenRMVNewLanguageNotification = [userDataController hasUserSeenRMVNewLanguageNotification];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasCurrentUserSeenNotification because user is nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    hasUserSeenRMVNewLanguageNotification = 1;
  }

  return hasUserSeenRMVNewLanguageNotification;
}

- (NSArray)mediaAccessories
{
  v19 = *MEMORY[0x277D85DE8];
  user = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = user;
  if (user)
  {
    home = [user home];
    v6 = home;
    if (home)
    {
      appleMediaAccessories = [home appleMediaAccessories];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media accessories because home is nil", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      appleMediaAccessories = MEMORY[0x277CBEBF8];
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
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media accessories because user is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    appleMediaAccessories = MEMORY[0x277CBEBF8];
  }

  return appleMediaAccessories;
}

- (void)handleMediaAccessorySoftwareVersionUpdated:(id)updated
{
  v20 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  object = [updatedCopy object];
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
    delegate = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self delegate];
    if (delegate)
    {
      softwareVersion = [v7 softwareVersion];
      [delegate mediaAccessory:v7 didUpdateSoftwareToVersion:softwareVersion];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@delegate is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received softwareVersion update notification with nil HMDAppleMediaAccessory", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)configure
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleMediaAccessorySoftwareVersionUpdated_ name:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:0];
}

- (HMDSiriMultiUserNewLanguageNotificationManagerContext)initWithUser:(id)user workQueue:(id)queue
{
  userCopy = user;
  queueCopy = queue;
  v8 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_user, userCopy);
    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_170075 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_170075, &__block_literal_global_170076);
  }

  v3 = logCategory__hmf_once_v18_170077;

  return v3;
}

uint64_t __68__HMDSiriMultiUserNewLanguageNotificationManagerContext_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v18_170077;
  logCategory__hmf_once_v18_170077 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)userReadableLanguageFromCode:(id)code
{
  v34 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = codeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@languageCode: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  deviceLanguage = [MEMORY[0x277CBEAF8] deviceLanguage];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v13;
    v32 = 2112;
    v33 = deviceLanguage;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@preferredLocalization: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:deviceLanguage];
  v15 = objc_autoreleasePoolPush();
  v16 = v11;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v18;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@appLocale: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:codeCopy];
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@shortCode: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [v14 localizedStringForLanguage:v19 context:1];
  v25 = objc_autoreleasePoolPush();
  v26 = v21;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v28;
    v32 = 2112;
    v33 = v24;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@languageName: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v25);

  return v24;
}

@end