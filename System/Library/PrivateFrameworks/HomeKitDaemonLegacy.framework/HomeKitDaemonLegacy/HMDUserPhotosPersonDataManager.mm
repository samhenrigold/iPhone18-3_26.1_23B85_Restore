@interface HMDUserPhotosPersonDataManager
+ (HMPhotosPersonManagerSettings)defaultSettings;
+ (id)logCategory;
+ (id)settingsModelUUIDWithUUID:(id)d;
- (HMDUser)user;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)observer;
- (HMPhotosPersonManagerSettings)settings;
- (NSUUID)zoneUUID;
- (id)logIdentifier;
- (id)persistedSettingsModel;
- (id)photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
- (id)settingsModelUUID;
- (id)updateSettingsModelWithSettings:(id)settings;
- (void)_handleUpdatedSettingsModel:(id)model;
- (void)configure;
- (void)configurePhotosPersonManagerWithSettingsModel:(id)model;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)handleUpdatePersonManagerSettingsMessage:(id)message;
- (void)handleUpdatedSettingsModel:(id)model;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
- (void)recoverDueToUUIDChangeFromOldUUID:(id)d;
- (void)removeCloudDataDueToUserRemoval;
- (void)removeCloudDataForZoneUUID:(id)d isDueToHomeGraphObjectRemoval:(BOOL)removal;
- (void)updateSettingsForCurrentCameraClipsAccess;
@end

@implementation HMDUserPhotosPersonDataManager

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (id)logIdentifier
{
  userUUID = [(HMDUserPhotosPersonDataManager *)self userUUID];
  uUIDString = [userUUID UUIDString];

  return uUIDString;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) user];
  v3 = v2;
  if (v2)
  {
    if ([v2 isCurrentUser])
    {
      v4 = [v3 home];
      v5 = [v4 personManagerSettings];

      if (v5 && ([v5 isFaceClassificationEnabled] & 1) == 0)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v9;
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since Face Classification was disabled", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        v10 = *(a1 + 32);
        v11 = [objc_opt_class() defaultSettings];
        v12 = [v10 updateSettingsModelWithSettings:v11];
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDUserPhotosPersonDataManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDUserPhotosPersonDataManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUpdatePersonManagerSettingsMessage:(id)message
{
  v56 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v53 = v8;
    v54 = 2112;
    v55 = shortDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  user = [(HMDUserPhotosPersonDataManager *)selfCopy user];
  v11 = user;
  if (user)
  {
    home = [user home];
    if (home)
    {
      if ([v11 isCurrentUser] && (objc_msgSend(v11, "hasCameraClipsAccess") & 1) != 0)
      {
        v13 = *MEMORY[0x277CD13F8];
        v51 = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
        v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

        if (v15)
        {
          if ([v15 isImportingFromPhotoLibraryEnabled] && (-[HMDUserPhotosPersonDataManager cloudPhotosSettingObserver](selfCopy, "cloudPhotosSettingObserver"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCloudPhotosEnabled"), v16, (v17 & 1) == 0))
          {
            v42 = objc_autoreleasePoolPush();
            v43 = selfCopy;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543362;
              v53 = v45;
              _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Cannot enable importing from Photo Library because cloud photos is not enabled", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v42);
            v46 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2007];
            [messageCopy respondWithError:v46];
          }

          else
          {
            v18 = [(HMDUserPhotosPersonDataManager *)selfCopy updateSettingsModelWithSettings:v15];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke;
            v49[3] = &unk_279735918;
            v49[4] = selfCopy;
            v19 = messageCopy;
            v50 = v19;
            v20 = [v18 addSuccessBlock:v49];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke_2;
            v47[3] = &unk_2797359D8;
            v48 = v19;
            v21 = [v20 addFailureBlock:v47];
          }
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            messagePayload = [messageCopy messagePayload];
            *buf = 138543618;
            v53 = v39;
            v54 = 2112;
            v55 = messagePayload;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Could not find photos person manager settings in message payload: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [messageCopy respondWithError:v41];

          v15 = 0;
        }

        goto LABEL_21;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v29;
        v54 = 2112;
        v55 = v11;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Person manager settings cannot be updated for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = MEMORY[0x277CCA9B8];
      v31 = 17;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v30 = MEMORY[0x277CCA9B8];
      v31 = 48;
    }

    v15 = [v30 hmErrorWithCode:v31];
    [messageCopy respondWithError:v15];
LABEL_21:

    goto LABEL_22;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [messageCopy respondWithError:home];
LABEL_22:
}

void __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) settings];
  v3 = encodeRootObjectForIncomingXPCMessage(v2, 0);
  [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD13F8]];

  v4 = [*(a1 + 32) zoneUUID];
  v5 = [v4 UUIDString];
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD1408]];

  v6 = *(a1 + 40);
  v7 = objc_msgSend_copy(v8);
  [v6 respondWithPayload:v7];
}

- (void)_handleUpdatedSettingsModel:(id)model
{
  v44 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  if ([modelCopy hmbIsDifferentFromModel:settingsModel differingFields:0])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [modelCopy debugDescription];
      v12 = [settingsModel debugDescription];
      v38 = 138543874;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@ previous model: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserPhotosPersonDataManager *)selfCopy setSettingsModel:modelCopy];
    zoneUUID = [modelCopy zoneUUID];
    if (zoneUUID)
    {
      v14 = zoneUUID;
      zoneUUID2 = [settingsModel zoneUUID];
      zoneUUID3 = [modelCopy zoneUUID];
      v17 = [zoneUUID2 isEqual:zoneUUID3];

      if ((v17 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          zoneUUID4 = [settingsModel zoneUUID];
          zoneUUID5 = [modelCopy zoneUUID];
          v38 = 138543874;
          v39 = v24;
          v40 = 2112;
          v41 = zoneUUID4;
          v42 = 2112;
          v43 = zoneUUID5;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID changed from %@ to %@. Configuring photos person manager", &v38, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        zoneUUID6 = [settingsModel zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v22 removeCloudDataForZoneUUID:zoneUUID6 isDueToHomeGraphObjectRemoval:0];

        [(HMDUserPhotosPersonDataManager *)v22 configurePhotosPersonManagerWithSettingsModel:modelCopy];
        goto LABEL_16;
      }
    }

    zoneUUID7 = [modelCopy zoneUUID];
    if (zoneUUID7)
    {
    }

    else
    {
      zoneUUID8 = [settingsModel zoneUUID];

      if (zoneUUID8)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v38 = 138543362;
          v39 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID is now nil. Removing photos person manager", &v38, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        zoneUUID9 = [settingsModel zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v30 removeCloudDataForZoneUUID:zoneUUID9 isDueToHomeGraphObjectRemoval:0];

        goto LABEL_16;
      }
    }

    personManager = [(HMDUserPhotosPersonDataManager *)selfCopy personManager];
    createSettings = [modelCopy createSettings];
    [personManager handleUpdatedSettings:createSettings];

LABEL_16:
    user = [(HMDUserPhotosPersonDataManager *)selfCopy user];
    home = [user home];
    homeManager = [home homeManager];
    userUUID = [(HMDUserPhotosPersonDataManager *)selfCopy userUUID];
    [homeManager updateGenerationCounterWithReason:@"Photos Person Manager Settings Updated" sourceUUID:userUUID shouldNotifyClients:1];
  }
}

- (void)removeCloudDataForZoneUUID:(id)d isDueToHomeGraphObjectRemoval:(BOOL)removal
{
  removalCopy = removal;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDUserPhotosPersonDataManager *)self personManager];
  v9 = objc_alloc_init(MEMORY[0x277CD1D00]);
  [personManager handleUpdatedSettings:v9];

  if (dCopy)
  {
    photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [(HMDUserPhotosPersonDataManager *)self photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
    v11 = [photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser isEqual:dCopy];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = dCopy;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not removing user photos person cloud data for zone UUID %@ because another home current user exists that is still using the zone", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      if (v15)
      {
        v17 = HMFGetLogIdentifier();
        v18 = HMFBooleanToString();
        v21 = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = dCopy;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing user photos person cloud data for zone UUID: %@ isDueToHomeGraphObjectRemoval: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      personManager2 = [(HMDUserPhotosPersonDataManager *)selfCopy personManager];
      v20 = [personManager2 removeAllAssociatedDataDueToHomeGraphObjectRemoval:removalCopy];
    }
  }

  [(HMDUserPhotosPersonDataManager *)self setPersonManager:0];
}

- (void)updateSettingsForCurrentCameraClipsAccess
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    if (([user hasCameraClipsAccess] & 1) == 0)
    {
      settings = [(HMDUserPhotosPersonDataManager *)self settings];
      defaultSettings = [objc_opt_class() defaultSettings];
      v8 = [settings isEqual:defaultSettings];

      if ((v8 & 1) == 0)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v12;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since user does not have access to camera clips: %@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        defaultSettings2 = [objc_opt_class() defaultSettings];
        v14 = [(HMDUserPhotosPersonDataManager *)selfCopy updateSettingsModelWithSettings:defaultSettings2];
      }
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
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)configurePhotosPersonManagerWithSettingsModel:(id)model
{
  *&v33[5] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  if (!user)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      v22 = "%{public}@User reference is nil";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 12;
LABEL_16:
      _os_log_impl(&dword_2531F8000, v23, v24, v22, &v30, v25);
    }

LABEL_17:

    objc_autoreleasePoolPop(v18);
    goto LABEL_18;
  }

  if (!-[HMDUserPhotosPersonDataManager supportsFaceClassification](self, "supportsFaceClassification") && ([user isCurrentUser] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v21;
      v32 = 1024;
      *v33 = [(HMDUserPhotosPersonDataManager *)selfCopy2 supportsFaceClassification];
      v33[2] = 1024;
      *&v33[3] = [user isCurrentUser];
      v22 = "%{public}@Not configuring photos person manager because self.supportsFaceClassification=%d and user.isCurrentUser=%d";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
      v25 = 24;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  zoneUUID = [modelCopy zoneUUID];
  if (zoneUUID)
  {
    personManagerFactory = [(HMDUserPhotosPersonDataManager *)self personManagerFactory];
    workQueue2 = [(HMDUserPhotosPersonDataManager *)self workQueue];
    v10 = (personManagerFactory)[2](personManagerFactory, user, zoneUUID, workQueue2);
    [(HMDUserPhotosPersonDataManager *)self setPersonManager:v10];

    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      personManager = [(HMDUserPhotosPersonDataManager *)selfCopy3 personManager];
      v30 = 138543618;
      v31 = v14;
      v32 = 2112;
      *v33 = personManager;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring photos person manager: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    personManager2 = [(HMDUserPhotosPersonDataManager *)selfCopy3 personManager];
    home = [user home];
    [personManager2 configureWithHome:home];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Not configuring photos person manager because zoneUUID is nil", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

LABEL_18:
}

- (id)photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser
{
  v39 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    home = [user home];
    homeManager = [home homeManager];
    homes = [homeManager homes];

    v9 = [homes countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v28 + 1) + 8 * i) currentUser];
          uuid = [currentUser uuid];
          uuid2 = [v5 uuid];
          v16 = [uuid isEqual:uuid2];

          if ((v16 & 1) == 0)
          {
            photosPersonDataManager = [currentUser photosPersonDataManager];
            zoneUUID = [photosPersonDataManager zoneUUID];

            if (zoneUUID)
            {
              v23 = objc_autoreleasePoolPush();
              selfCopy = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543874;
                v33 = v26;
                v34 = 2112;
                v35 = currentUser;
                v36 = 2112;
                v37 = zoneUUID;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Found current user %@ using photos person manager zone UUID: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              goto LABEL_19;
            }
          }
        }

        v10 = [homes countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  zoneUUID = 0;
LABEL_19:

  return zoneUUID;
}

- (id)persistedSettingsModel
{
  localZone = [(HMDUserPhotosPersonDataManager *)self localZone];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)self settingsModelUUID];
  v5 = [localZone fetchModelWithModelID:settingsModelUUID ofType:objc_opt_class() error:0];

  return v5;
}

- (id)settingsModelUUID
{
  v3 = objc_opt_class();
  userUUID = [(HMDUserPhotosPersonDataManager *)self userUUID];
  v5 = [v3 settingsModelUUIDWithUUID:userUUID];

  return v5;
}

- (void)handleUpdatedSettingsModel:(id)model
{
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserPhotosPersonDataManager *)self _handleUpdatedSettingsModel:modelCopy];
}

- (id)updateSettingsModelWithSettings:(id)settings
{
  v45 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v41 = 138543618;
    v42 = v9;
    v43 = 2112;
    v44 = settingsCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating photos person manager settings: %@", &v41, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [HMDPhotosPersonManagerSettingsModel alloc];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModelUUID];
  v12 = [(HMDPhotosPersonManagerSettingsModel *)v10 initWithModelID:settingsModelUUID settings:settingsCopy];

  settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModel];
  if ([settingsCopy isImportingFromPhotoLibraryEnabled])
  {
    zoneUUID = [settingsModel zoneUUID];

    if (!zoneUUID)
    {
      photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [(HMDUserPhotosPersonDataManager *)selfCopy photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
      if (photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v41 = 138543618;
          v42 = v28;
          v43 = 2112;
          v44 = photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Using existing Photo Library person manager zone UUID for current user from another home: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:uUID];
      }

      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        zoneUUID2 = [(HMDPhotosPersonManagerSettingsModel *)v12 zoneUUID];
        v41 = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = zoneUUID2;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now enabled. Updating settings with new photos person manager zone UUID: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      goto LABEL_21;
    }
  }

  if (([settingsCopy isImportingFromPhotoLibraryEnabled] & 1) != 0 || (objc_msgSend(settingsModel, "zoneUUID"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library has not changed. Not changing zone UUID", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [settingsModel zoneUUID];
    [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
LABEL_21:

    goto LABEL_22;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v41 = 138543362;
    v42 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now disabled. Updating settings to remove zone UUID", &v41, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:0];
LABEL_22:
  localZone = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
  v36 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v37 = [MEMORY[0x277D17108] optionsWithLabel:@"Update photos person manager settings"];
  v38 = [localZone addModels:v36 options:v37];
  v39 = [v38 flatMap:&__block_literal_global_39];

  return v39;
}

- (void)removeCloudDataDueToUserRemoval
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneUUID = [(HMDUserPhotosPersonDataManager *)self zoneUUID];
  [(HMDUserPhotosPersonDataManager *)self removeCloudDataForZoneUUID:zoneUUID isDueToHomeGraphObjectRemoval:1];
}

- (void)recoverDueToUUIDChangeFromOldUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Migrating photos person manager settings to use new user UUID", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [objc_opt_class() settingsModelUUIDWithUUID:dCopy];
  localZone = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
  v12 = [localZone fetchModelWithModelID:v10 ofType:objc_opt_class() error:0];

  if (v12)
  {
    v13 = [HMDPhotosPersonManagerSettingsModel alloc];
    settingsModelUUID = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModelUUID];
    v15 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
    v16 = [(HMBModel *)v13 initWithModelID:settingsModelUUID parentModelID:v15];

    [(HMBModel *)v16 hmbMergeSetPropertiesFromModel:v12];
    localZone2 = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
    v18 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v19 = MEMORY[0x277CBEB98];
    hmbModelID = [v12 hmbModelID];
    v21 = [v19 setWithObject:hmbModelID];
    v22 = [MEMORY[0x277D17108] optionsWithLabel:@"Migrate photos person manager settings"];
    v23 = [localZone2 addModels:v18 andRemoveModelIDs:v21 options:v22];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@No old settings model exists to migrate", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)configure
{
  v37[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    home = [user home];
    if (!home)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        v33 = 138543362;
        v34 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", &v33, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_16;
    }

    messageDispatcher = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v8 = *MEMORY[0x277CD14E0];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v37[0] = v9;
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v37[1] = v10;
    v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v37[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [messageDispatcher registerForMessage:v8 receiver:self policies:v12 selector:sel_handleUpdatePersonManagerSettingsMessage_];

    notificationCenter = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:v5];

    notificationCenter2 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:v5];

    notificationCenter3 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

    persistedSettingsModel = [(HMDUserPhotosPersonDataManager *)self persistedSettingsModel];
    if (persistedSettingsModel)
    {
      [(HMDUserPhotosPersonDataManager *)self setSettingsModel:persistedSettingsModel];
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy2 settingsModel];
        createSettings = [settingsModel createSettings];
        v33 = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = createSettings;
        v23 = "%{public}@Initialized photos person data manager with settings: %@";
LABEL_14:
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v23, &v33, 0x16u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy3 settingsModel];
        createSettings = [settingsModel createSettings];
        v33 = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = createSettings;
        v23 = "%{public}@Initialized photos person data manager with default settings: %@";
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v17);
    [(HMDUserPhotosPersonDataManager *)self configurePhotosPersonManagerWithSettingsModel:persistedSettingsModel];

LABEL_16:
    goto LABEL_17;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_17:
}

- (NSUUID)zoneUUID
{
  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  zoneUUID = [settingsModel zoneUUID];

  return zoneUUID;
}

- (HMPhotosPersonManagerSettings)settings
{
  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  createSettings = [settingsModel createSettings];

  return createSettings;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)observer
{
  userCopy = user;
  dispatcherCopy = dispatcher;
  zoneCopy = zone;
  queueCopy = queue;
  centerCopy = center;
  observerCopy = observer;
  if (!userCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!zoneCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!queueCopy)
  {
LABEL_11:
    v33 = _HMFPreconditionFailure();
    return __158__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_localZone_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(v33, v34, v35, v36);
  }

  v38 = observerCopy;
  v40.receiver = self;
  v40.super_class = HMDUserPhotosPersonDataManager;
  v19 = [(HMDUserPhotosPersonDataManager *)&v40 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    uuid = [userCopy uuid];
    userUUID = v20->_userUUID;
    v20->_userUUID = uuid;

    home = [userCopy home];
    uuid2 = [home uuid];
    homeUUID = v20->_homeUUID;
    v20->_homeUUID = uuid2;

    objc_storeStrong(&v20->_messageDispatcher, dispatcher);
    objc_storeStrong(&v20->_localZone, zone);
    objc_storeWeak(&v20->_user, userCopy);
    v20->_supportsFaceClassification = classification;
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_cloudPhotosSettingObserver, observer);
    v26 = [HMDPhotosPersonManagerSettingsModel alloc];
    v27 = [objc_opt_class() settingsModelUUIDWithUUID:v20->_userUUID];
    v28 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
    v29 = [(HMBModel *)v26 initWithModelID:v27 parentModelID:v28];
    settingsModel = v20->_settingsModel;
    v20->_settingsModel = v29;

    personManagerFactory = v20->_personManagerFactory;
    v20->_personManagerFactory = &__block_literal_global_16254;
  }

  return v20;
}

HMDPhotosPersonManager *__158__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_localZone_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDPhotosPersonManager alloc] initWithUser:v8 zoneUUID:v7 workQueue:v6];

  return v9;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue
{
  queueCopy = queue;
  zoneCopy = zone;
  dispatcherCopy = dispatcher;
  userCopy = user;
  v14 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFaceClassification = [v14 supportsFaceClassification];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = +[HMDCloudPhotosSettingObserver sharedInstance];
  v18 = [(HMDUserPhotosPersonDataManager *)self initWithUser:userCopy messageDispatcher:dispatcherCopy localZone:zoneCopy workQueue:queueCopy supportsFaceClassification:supportsFaceClassification notificationCenter:defaultCenter cloudPhotosSettingObserver:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_53_16276);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __45__HMDUserPhotosPersonDataManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v33;
  logCategory__hmf_once_v33 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)settingsModelUUIDWithUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"F378F892-E6AD-4A6E-927A-C04D01A75448"];
  v6 = MEMORY[0x277CCAD78];
  data = [v5 data];
  v8 = [v6 hmf_UUIDWithNamespace:dCopy data:data];

  return v8;
}

+ (HMPhotosPersonManagerSettings)defaultSettings
{
  v2 = objc_alloc_init(MEMORY[0x277CD1D00]);

  return v2;
}

@end