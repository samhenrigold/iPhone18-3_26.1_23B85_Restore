@interface HMDCameraProfileSettingsManager
+ (id)logCategory;
+ (id)zoneNameForHome:(id)home;
- (BOOL)_evaluateHomePresence;
- (BOOL)_migrateNotificationSettings:(id)settings;
- (BOOL)_migrateSettingsModel:(id)model;
- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)home;
- (BOOL)canRevealCurrentAccessMode;
- (BOOL)isCameraManuallyDisabled;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isRecordingEnabled;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDCameraProfileSettingsDerivedPropertiesModel)derivedPropertiesModel;
- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)accessory home:(id)home workQueue:(id)queue;
- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)identifier hapAccessory:(id)accessory workQueue:(id)queue zoneManager:(id)manager notificationCenter:(id)center bulletinBoard:(id)board characteristicsAvailabilityListener:(id)listener quotaCoordinator:(id)self0 featuresDataSource:(id)self1;
- (HMDCameraProfileSettingsModel)defaultSettingsModel;
- (HMDHAPAccessory)hapAccessory;
- (NSString)zoneName;
- (NSUUID)derivedPropertiesModelID;
- (_HMCameraUserSettings)currentSettings;
- (id)_createNotificationSettingsUsingSettingsModel:(id)model;
- (id)_isAnyUserAtHomeForPresence:(id)presence;
- (id)_localZoneUpdateCompletionForMessage:(id)message;
- (id)_payloadForSettings:(id)settings;
- (id)_processingOptionsForLabel:(id)label;
- (id)_settingsFromSettingsModel:(id)model;
- (id)_settingsModelForUpdate;
- (id)_updatedDerivedPropertiesModelWithSettingsModel:(id)model userInitiated:(BOOL)initiated didCreateModel:(BOOL *)createModel;
- (id)currentNotificationSettings;
- (id)currentSettingsModel;
- (id)doorbellInputEventCharacteristic;
- (id)logIdentifier;
- (id)manuallyDisabledCharacteristic;
- (id)messageDestination;
- (unint64_t)supportedFeatures;
- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)array currentAccessMode:(unint64_t)mode;
- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)array currentAccessMode:(unint64_t)mode;
- (void)_addNightVisionCharacteristicWriteRequestToArray:(id)array nightVisionEnabled:(BOOL)enabled;
- (void)_addOperatingModeIndicatorCharacteristicWriteRequestToArray:(id)array accessModeIndicatorEnabled:(BOOL)enabled;
- (void)_addPeriodicSnapshotsActiveCharacteristicWriteRequestToArray:(id)array periodicSnapshotsAllowed:(BOOL)allowed;
- (void)_addRecordingAudioEnabledWriteRequestToArray:(id)array recordingAudioEnabled:(BOOL)enabled;
- (void)_addSnapshotsActiveCharacteristicWriteRequestToArray:(id)array snapshotsAllowed:(BOOL)allowed;
- (void)_addWriteRequestToArray:(id)array forCharacteristicWithType:(id)type ofServiceWithType:(id)withType value:(id)value;
- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)notification;
- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)notification;
- (void)_enablePackageNotificationsOnSettings:(id)settings;
- (void)_handleBulletinBoardNotificationCommitMessage:(id)message;
- (void)_handleCharacteristicWriteRequests:(id)requests completion:(id)completion;
- (void)_handleConnectedToAccessory;
- (void)_handleModelUpdate:(id)update previousModel:(id)model;
- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)message;
- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)message;
- (void)_handleUpdateAccessModeMessage:(id)message;
- (void)_handleUpdateActivityZonesMessage:(id)message;
- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)message;
- (void)_handleUpdateRecordingTriggerEventsMessage:(id)message;
- (void)_handleUpdatedDerivedProperties:(id)properties previousProperties:(id)previousProperties;
- (void)_handleUpdatedSettings:(id)settings previousSettings:(id)previousSettings;
- (void)_initializeNotificationSettingsUsingSettingsModel:(id)model;
- (void)_notifyClientsOfChangedSettings:(id)settings isInitialSettingsUpdate:(BOOL)update;
- (void)_notifyClientsOfChangedSettingsModel:(id)model isInitialSettingsUpdate:(BOOL)update;
- (void)_notifyClientsOfCurrentSettings;
- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)properties currentSettings:(id)settings userInitiated:(BOOL)initiated didUpdateField:(BOOL *)field;
- (void)_setManuallyDisabledCharacteristicNotificationsEnabled:(BOOL)enabled;
- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)completion;
- (void)_synchronizeSettingsModelForBackwardCompatibilityForCharacteristic:(id)characteristic;
- (void)_updateDerivedPropertiesModelWithSettingsModel:(id)model userInitiated:(BOOL)initiated reason:(id)reason;
- (void)_updateDerivedPropertiesOnSettingsModel:(id)model;
- (void)_updateNotificationSettings:(id)settings forMessage:(id)message;
- (void)_writeInitialSettingsCharacteristicsToCamera;
- (void)configureWithMessageDispatcher:(id)dispatcher adminMessageDispatcher:(id)messageDispatcher deviceIsResidentCapable:(BOOL)capable;
- (void)dealloc;
- (void)disableRecordingAccessModes;
- (void)handleAccessoryConfiguredNotification:(id)notification;
- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)notification;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)handleHomePresenceEvaluatedNotification:(id)notification;
- (void)handlePrimaryResidentUpdatedNotification:(id)notification;
- (void)handleRecordingManagementServiceDidUpdateNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)remove;
- (void)start;
- (void)synchronizeCloudStorageWithRecordingAccessModes;
- (void)synchronizeSettingsToCameraWithCompletion:(id)completion;
- (void)updateSettingsModelUsingBlock:(id)block completion:(id)completion;
- (void)zoneManagerDidStart:(id)start;
- (void)zoneManagerDidStop:(id)stop;
@end

@implementation HMDCameraProfileSettingsManager

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    home = [hapAccessory home];
    name = [home name];
    name2 = [hapAccessory name];
    uuid = [hapAccessory uuid];
    uUIDString = [v3 stringWithFormat:@"%@/%@/%@", name, name2, uuid];
  }

  else
  {
    home = [hapAccessory uuid];
    uUIDString = [home UUIDString];
  }

  return uUIDString;
}

- (void)zoneManagerDidStop:(id)stop
{
  v12 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Zone Manager stopped unexpectedly", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)zoneManagerDidStart:(id)start
{
  v63 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Zone Manager started, initializing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  localZone = [zoneManager localZone];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)selfCopy uniqueIdentifier];
  v58 = 0;
  defaultSettingsModel = [localZone fetchModelWithModelID:uniqueIdentifier ofType:objc_opt_class() error:&v58];
  v15 = v58;

  [(HMDCameraProfileSettingsManager *)selfCopy _initializeNotificationSettingsUsingSettingsModel:defaultSettingsModel];
  if (!defaultSettingsModel)
  {
    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v19;
        v61 = 2112;
        v62 = v15;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error fetching currentSettings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v60 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Initializing settings with default values", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    defaultSettingsModel = [(HMDCameraProfileSettingsManager *)v21 defaultSettingsModel];
    [v9 addObject:defaultSettingsModel];
    [(HMDCameraProfileSettingsManager *)v21 _writeInitialSettingsCharacteristicsToCamera];
  }

  [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesOnSettingsModel:defaultSettingsModel];
  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    [(HMDCameraProfileSettingsManager *)v25 _settingsFromSettingsModel:defaultSettingsModel];
    v29 = v28 = v15;
    *buf = 138543618;
    v60 = v27;
    v61 = 2112;
    v62 = v29;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Initializing with current settings: %@", buf, 0x16u);

    v15 = v28;
  }

  objc_autoreleasePoolPop(v24);
  if ([(HMDCameraProfileSettingsManager *)v25 isCurrentDeviceConfirmedPrimaryResident])
  {
    if ([(HMDCameraProfileSettingsManager *)v25 _migrateSettingsModel:defaultSettingsModel])
    {
      [v10 addObject:defaultSettingsModel];
    }

    v57 = 0;
    v30 = [(HMDCameraProfileSettingsManager *)v25 _updatedDerivedPropertiesModelWithSettingsModel:defaultSettingsModel userInitiated:0 didCreateModel:&v57, v15];
    if (v30)
    {
      if (v57)
      {
        v31 = v9;
      }

      else
      {
        v31 = v10;
      }

      [v31 addObject:v30];
    }

    v32 = objc_autoreleasePoolPush();
    v33 = v25;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v30 debugDescription];
      *buf = 138543618;
      v60 = v35;
      v61 = 2112;
      v62 = v36;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Initializing with current derived properties: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v15 = v55;
  }

  if (([v9 containsObject:defaultSettingsModel] & 1) == 0 && (objc_msgSend(v10, "containsObject:", defaultSettingsModel) & 1) == 0)
  {
    [(HMDCameraProfileSettingsManager *)v25 _notifyClientsOfChangedSettingsModel:defaultSettingsModel isInitialSettingsUpdate:1];
  }

  hapAccessory = [(HMDCameraProfileSettingsManager *)v25 hapAccessory];
  home = [hapAccessory home];
  [home registerCameraReachabilityEventNotificationsWithCompletionHandler:0];

  zoneManager2 = [(HMDCameraProfileSettingsManager *)v25 zoneManager];
  localZone2 = [zoneManager2 localZone];
  uniqueIdentifier2 = [(HMDCameraProfileSettingsManager *)v25 uniqueIdentifier];
  [localZone2 addObserver:v25 forModelWithID:uniqueIdentifier2];

  zoneManager3 = [(HMDCameraProfileSettingsManager *)v25 zoneManager];
  localZone3 = [zoneManager3 localZone];
  derivedPropertiesModelID = [(HMDCameraProfileSettingsManager *)v25 derivedPropertiesModelID];
  [localZone3 addObserver:v25 forModelWithID:derivedPropertiesModelID];

  zoneManager4 = [(HMDCameraProfileSettingsManager *)v25 zoneManager];
  localZone4 = [zoneManager4 localZone];
  [localZone4 startUp];

  characteristicsAvailabilityListener = [(HMDCameraProfileSettingsManager *)v25 characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener setDelegate:v25];

  characteristicsAvailabilityListener2 = [(HMDCameraProfileSettingsManager *)v25 characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener2 start];

  quotaCoordinator = [(HMDCameraProfileSettingsManager *)v25 quotaCoordinator];
  [quotaCoordinator setDelegate:v25];

  if ([v9 count])
  {
    v50 = [MEMORY[0x277D17108] optionsWithLabel:@"Initial settings creation"];
    zoneManager5 = [(HMDCameraProfileSettingsManager *)v25 zoneManager];
    localZone5 = [zoneManager5 localZone];
    v53 = [localZone5 createModels:v9 options:v50];
LABEL_31:

    goto LABEL_32;
  }

  if ([v10 count])
  {
    v50 = [MEMORY[0x277D17108] optionsWithLabel:@"Initial settings update"];
    zoneManager5 = [(HMDCameraProfileSettingsManager *)v25 zoneManager];
    localZone5 = [zoneManager5 localZone];
    v54 = [localZone5 updateModels:v10 options:v50];
    goto LABEL_31;
  }

LABEL_32:
}

- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue ^ 1;
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  v40 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  characteristicsCopy = characteristics;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v11;
    v38 = 2112;
    v39 = characteristicsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received updated available characteristics: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = characteristicsCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      v30 = v14;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        service = [v17 service];
        bulletinBoardNotification = [service bulletinBoardNotification];

        if (bulletinBoardNotification)
        {
          notificationCenter = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
          [notificationCenter removeObserver:selfCopy name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:bulletinBoardNotification];

          notificationCenter2 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
          [notificationCenter2 addObserver:selfCopy selector:sel_handleBulletinNotificationEnableStateDidChangeNotification_ name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:bulletinBoardNotification];

          [(HMDCameraProfileSettingsManager *)selfCopy _coordinateNotificationSettingsWithServiceBulletinNotification:bulletinBoardNotification];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v15;
            v27 = v26 = v12;
            service2 = [v17 service];
            *buf = 138543618;
            v37 = v27;
            v38 = 2112;
            v39 = service2;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Service unexpectedly does not have a bulletin board notification: %@", buf, 0x16u);

            v12 = v26;
            v15 = v25;
            v14 = v30;
          }

          objc_autoreleasePoolPop(v22);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }
}

- (void)updateSettingsModelUsingBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  blockCopy[2](blockCopy, currentSettingsModel);

  hmbSetProperties = [currentSettingsModel hmbSetProperties];
  v11 = [hmbSetProperties count];

  if (v11)
  {
    v12 = [(HMDCameraProfileSettingsManager *)self _processingOptionsForLabel:@"Update camera access mode"];
    zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
    localZone = [zoneManager localZone];
    v15 = [MEMORY[0x277CBEB98] setWithObject:currentSettingsModel];
    v16 = [localZone addModels:v15 options:v12];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__HMDCameraProfileSettingsManager_updateSettingsModelUsingBlock_completion___block_invoke;
    v18[3] = &unk_279731610;
    v19 = completionCopy;
    v17 = [v16 addCompletionBlock:v18];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __76__HMDCameraProfileSettingsManager_updateSettingsModelUsingBlock_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    a3 = 0;
  }

  return (*(v3 + 16))(v3, a3);
}

- (void)_handleUpdatedSettings:(id)settings previousSettings:(id)previousSettings
{
  v29 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  previousSettingsCopy = previousSettings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = 0;
  [settingsCopy hmbIsDifferentFromModel:previousSettingsCopy differingFields:&v20];
  v9 = v20;
  hmf_isEmpty = [v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (hmf_isEmpty)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No changed fields for updated settings model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [settingsCopy debugDescription];
      v18 = [previousSettingsCopy debugDescription];
      *buf = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@, previous settings model: %@, changed fields: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesOnSettingsModel:settingsCopy];
    [(HMDCameraProfileSettingsManager *)selfCopy _notifyClientsOfChangedSettingsModel:settingsCopy isInitialSettingsUpdate:0];
    if (-[HMDCameraProfileSettingsManager isCurrentDeviceConfirmedPrimaryResident](selfCopy, "isCurrentDeviceConfirmedPrimaryResident") && (([v9 containsObject:@"accessModeAtHomeField"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"accessModeNotAtHomeField")))
    {
      currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
      [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesModelWithSettingsModel:currentSettingsModel userInitiated:1 reason:@"Settings model updated"];
    }
  }
}

- (void)_updateDerivedPropertiesOnSettingsModel:(id)model
{
  modelCopy = model;
  derivedPropertiesModel = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModel];
  [modelCopy setCurrentAccessMode:{objc_msgSend(derivedPropertiesModel, "currentAccessMode")}];
  if ([derivedPropertiesModel currentAccessMode])
  {
    v5 = 0;
  }

  else
  {
    v5 = [derivedPropertiesModel currentAccessModeChangeReason] == 5;
  }

  [modelCopy setCameraManuallyDisabled:v5];
}

- (void)_handleUpdatedDerivedProperties:(id)properties previousProperties:(id)previousProperties
{
  v77 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  previousPropertiesCopy = previousProperties;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v64 = 0;
  [propertiesCopy hmbIsDifferentFromModel:previousPropertiesCopy differingFields:&v64];
  v9 = v64;
  hmf_isEmpty = [(__CFString *)v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (hmf_isEmpty)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No changed fields for updated derived properties model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [propertiesCopy debugDescription];
      v18 = [previousPropertiesCopy debugDescription];
      *buf = 138544130;
      v66 = v16;
      v67 = 2112;
      v68 = v17;
      v69 = 2112;
      v70 = v18;
      v71 = 2112;
      v72 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling updated derived properties model: %@\nprevious derived properties model: %@\nchanged fields: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraProfileSettingsManager *)selfCopy _notifyClientsOfCurrentSettings];
    currentAccessMode = [propertiesCopy currentAccessMode];
    if ([(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMCameraAccessModeAsString();
        *buf = 138543618;
        v66 = v23;
        v67 = 2112;
        v68 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Handling currentAccessMode of %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [(HMDCameraProfileSettingsManager *)v21 _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
    }

    if ([(__CFString *)v9 containsObject:@"currentAccessModeField"])
    {
      hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
      home = [hapAccessory home];
      currentNotificationSettings = [(HMDCameraProfileSettingsManager *)selfCopy currentNotificationSettings];
      isAccessModeChangeNotificationEnabled = [currentNotificationSettings isAccessModeChangeNotificationEnabled];

      cameraProfiles = [hapAccessory cameraProfiles];
      anyObject = [cameraProfiles anyObject];

      v63 = anyObject;
      if (previousPropertiesCopy && (anyObject ? (v31 = isAccessModeChangeNotificationEnabled) : (v31 = 0), v31 == 1 && home && [(HMDCameraProfileSettingsManager *)selfCopy canRevealCurrentAccessMode]))
      {
        v32 = objc_autoreleasePoolPush();
        v61 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          [previousPropertiesCopy currentAccessMode];
          v35 = HMCameraAccessModeAsString();
          HMCameraAccessModeAsString();
          v36 = v59 = v32;
          *buf = 138543874;
          v66 = v34;
          v67 = 2112;
          v68 = v35;
          v69 = 2112;
          v70 = v36;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Current access mode changed from %@ to %@", buf, 0x20u);

          v32 = v59;
        }

        objc_autoreleasePoolPop(v32);
        v37 = [HMDCameraAccessModeChangedBulletin alloc];
        currentAccessModeChangeReason = [propertiesCopy currentAccessModeChangeReason];
        currentAccessModeChangeDate = [propertiesCopy currentAccessModeChangeDate];
        if (currentAccessModeChangeDate)
        {
          v40 = [(HMDCameraAccessModeChangedBulletin *)v37 initWithAccessMode:currentAccessMode camera:v63 home:home changeReason:currentAccessModeChangeReason changeDate:currentAccessModeChangeDate];
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          v40 = [(HMDCameraAccessModeChangedBulletin *)v37 initWithAccessMode:currentAccessMode camera:v63 home:home changeReason:currentAccessModeChangeReason changeDate:date];
        }

        if (v40)
        {
          v51 = objc_autoreleasePoolPush();
          v52 = v61;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543618;
            v66 = v54;
            v67 = 2112;
            v68 = v40;
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Inserting camera access mode changed bulletin: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v51);
          bulletinBoard = [(HMDCameraProfileSettingsManager *)v52 bulletinBoard];
          [bulletinBoard insertCameraAccessModeChangedBulletin:v40];
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = selfCopy;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          v60 = hapAccessory;
          v62 = home;
          v45 = @"<nil>";
          if (previousPropertiesCopy)
          {
            v46 = @"<not nil>";
          }

          else
          {
            v46 = @"<nil>";
          }

          v56 = v46;
          v47 = HMFBooleanToString();
          v58 = v41;
          if (v63)
          {
            v48 = @"<not nil>";
          }

          else
          {
            v48 = @"<nil>";
          }

          if (home)
          {
            v45 = @"<not nil>";
          }

          [(HMDCameraProfileSettingsManager *)v42 canRevealCurrentAccessMode];
          v49 = HMFBooleanToString();
          *buf = 138544642;
          v66 = v44;
          v67 = 2112;
          v68 = v57;
          v69 = 2112;
          v70 = v47;
          v71 = 2112;
          v72 = v48;
          v73 = 2112;
          v74 = v45;
          v41 = v58;
          hapAccessory = v60;
          v75 = 2112;
          v76 = v49;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Not posting access mode change notification because previousProperties=%@ accessModeChangeNotificationEnabled=%@ cameraProfile=%@ home=%@ canRevealCurrentAccessMode=%@", buf, 0x3Eu);

          home = v62;
        }

        objc_autoreleasePoolPop(v41);
      }
    }
  }
}

- (void)_handleModelUpdate:(id)update previousModel:(id)model
{
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = updateCopy;
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

  v12 = modelCopy;
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

  if (v11 && (!v12 || v14))
  {
    [(HMDCameraProfileSettingsManager *)self _handleUpdatedSettings:v11 previousSettings:v14];
  }

  else
  {

    v15 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v17 && (!v18 || v20))
    {
      [(HMDCameraProfileSettingsManager *)self _handleUpdatedDerivedProperties:v17 previousProperties:v20];
    }

    else
    {

      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v24;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid updated (%@) or previous (%@) model received", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v16 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = deletionCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received model deletion: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = updateCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received model update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDCameraProfileSettingsManager *)selfCopy workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__HMDCameraProfileSettingsManager_localZone_didProcessModelUpdate___block_invoke;
  v14[3] = &unk_2797359B0;
  v14[4] = selfCopy;
  v15 = updateCopy;
  v13 = updateCopy;
  dispatch_async(workQueue, v14);
}

void __67__HMDCameraProfileSettingsManager_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) model];
  v3 = [*(a1 + 40) previousModel];
  [v2 _handleModelUpdate:v4 previousModel:v3];
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  v20 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  creationCopy = creation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = creationCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received model creation: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDCameraProfileSettingsManager *)selfCopy workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDCameraProfileSettingsManager_localZone_didProcessModelCreation___block_invoke;
  v14[3] = &unk_2797359B0;
  v14[4] = selfCopy;
  v15 = creationCopy;
  v13 = creationCopy;
  dispatch_async(workQueue, v14);
}

void __69__HMDCameraProfileSettingsManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) model];
  [v1 _handleModelUpdate:v2 previousModel:0];
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDCameraProfileSettingsManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (BOOL)canRevealCurrentAccessMode
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  currentUser = [home currentUser];
  isRemoteAccessAllowed = [currentUser isRemoteAccessAllowed];

  return isRemoteAccessAllowed;
}

- (void)_enablePackageNotificationsOnSettings:(id)settings
{
  v3 = MEMORY[0x277CD1C48];
  settingsCopy = settings;
  v7 = objc_alloc_init(v3);
  v5 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:16];
  [v7 setSignificantEventReasonCondition:v5];

  [settingsCopy setSmartBulletinBoardNotificationEnabled:1];
  predicate = [v7 predicate];
  [settingsCopy setSmartBulletinBoardNotificationCondition:predicate];
}

- (void)_setManuallyDisabledCharacteristicNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9[1] = *MEMORY[0x277D85DE8];
  manuallyDisabledCharacteristic = [(HMDCameraProfileSettingsManager *)self manuallyDisabledCharacteristic];
  if (manuallyDisabledCharacteristic)
  {
    hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    v9[0] = manuallyDisabledCharacteristic;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    clientIdentifier = [(HMDCameraProfileSettingsManager *)self clientIdentifier];
    [hapAccessory enableNotification:enabledCopy forCharacteristics:v7 message:0 clientIdentifier:clientIdentifier];
  }
}

- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([notificationCopy isEnabled])
  {
    currentSettings = [(HMDCameraProfileSettingsManager *)self currentSettings];
    notificationSettings = [currentSettings notificationSettings];
    isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

    if ((isSmartBulletinBoardNotificationEnabled & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        service = [notificationCopy service];
        v17 = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = service;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Bulletin board notification is enabled for service %@, so enabling smart bulletin board notification with empty significant event types", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      notificationSettings2 = [currentSettings notificationSettings];
      v15 = [notificationSettings2 mutableCopy];

      [v15 setSmartBulletinBoardNotificationEnabled:1];
      v16 = [MEMORY[0x277CD18C0] predicateForSignificantEventTypes:0];
      [v15 setSmartBulletinBoardNotificationCondition:v16];

      [(HMDCameraProfileSettingsManager *)selfCopy _updateNotificationSettings:v15 forMessage:0];
    }
  }
}

- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [notificationCopy service];
  type = [service type];
  v8 = [type isEqualToString:*MEMORY[0x277CD0EC0]];

  if (v8)
  {
    [(HMDCameraProfileSettingsManager *)self _coordinateSmartBulletinNotificationWithServiceBulletinNotification:notificationCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      service2 = [notificationCopy service];
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = notificationCopy;
      v18 = 2112;
      v19 = service2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected bulletin board notification: %@ service: %@ when coordinating settings", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_addRecordingAudioEnabledWriteRequestToArray:(id)array recordingAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:enabledCopy];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:*MEMORY[0x277CCFA00] ofServiceWithType:*MEMORY[0x277CD0E08] value:v8];
}

- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)array currentAccessMode:(unint64_t)mode
{
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = HMIsStreamingAllowedForCameraAccessMode();
  v8 = *MEMORY[0x277CCF748];
  v9 = *MEMORY[0x277CD0E00];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];

  v11 = HMIsRecordingAllowedForCameraAccessMode();
  v12 = *MEMORY[0x277CD0E08];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v12 value:v13];
}

- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)array currentAccessMode:(unint64_t)mode
{
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CD0DF8];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:mode != 0];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:@"0000021B-0000-1000-8000-0026BB765291" ofServiceWithType:v8 value:v9];
}

- (void)_addSnapshotsActiveCharacteristicWriteRequestToArray:(id)array snapshotsAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CCF898];
  v9 = *MEMORY[0x277CD0DF8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:allowedCopy];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];
}

- (void)_addPeriodicSnapshotsActiveCharacteristicWriteRequestToArray:(id)array periodicSnapshotsAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CD0DF8];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:allowedCopy];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:@"00000225-0000-1000-8000-0026BB765291" ofServiceWithType:v8 value:v9];
}

- (void)_addOperatingModeIndicatorCharacteristicWriteRequestToArray:(id)array accessModeIndicatorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CCF798];
  v9 = *MEMORY[0x277CD0DF8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];
}

- (void)_addNightVisionCharacteristicWriteRequestToArray:(id)array nightVisionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CCF990];
  v9 = *MEMORY[0x277CD0DF8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];
}

- (void)_addWriteRequestToArray:(id)array forCharacteristicWithType:(id)type ofServiceWithType:(id)withType value:(id)value
{
  v33 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  typeCopy = type;
  withTypeCopy = withType;
  valueCopy = value;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  services = [hapAccessory services];

  v16 = [services countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(services);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = objc_msgSend_serviceType(v20);
        v22 = [v21 isEqualToString:withTypeCopy];

        if (v22)
        {
          v23 = [v20 findCharacteristicWithType:typeCopy];
          v24 = v23;
          if (v23)
          {
            authorizationData = [v23 authorizationData];
            v26 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v24 value:valueCopy authorizationData:authorizationData type:1];

            [arrayCopy addObject:v26];
          }
        }
      }

      v17 = [services countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)_handleCharacteristicWriteRequests:(id)requests completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([requestsCopy count])
  {
    hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    home = [hapAccessory home];

    if (home)
    {
      v29 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Write settings characteristics"];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        identifier = [v29 identifier];
        shortDescription = [identifier shortDescription];
        *buf = 138543874;
        v31 = v14;
        v32 = 2114;
        v33 = shortDescription;
        v34 = 2112;
        v35 = requestsCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received request to write characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      uUID = [MEMORY[0x277CCAD78] UUID];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke;
      v25[3] = &unk_279733980;
      v25[4] = selfCopy;
      v26 = v29;
      v28 = completionCopy;
      v27 = requestsCopy;
      [home writeCharacteristicValues:v27 source:1070 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v25];

      __HMFActivityScopeLeave();
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle characteristic write requests because accessory/home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }

  else
  {
    v18 = _Block_copy(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }
  }
}

void __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke_2;
  v12[3] = &unk_279734848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v42 = v5;
      v43 = 2114;
      v44 = v7;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to write any settings to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = _Block_copy(*(a1 + 72));
    v10 = v9;
    if (v9)
    {
      v11 = v9[2];
LABEL_6:
      v11();
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = *(a1 + 56);
    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(a1 + 64);
          v17 = [*(*(&v36 + 1) + 8 * i) characteristic];
          v35 = 0;
          v18 = [v16 hmd_valueOfCharacteristic:v17 error:&v35];
          v19 = v35;

          if (!v18)
          {
            v27 = objc_autoreleasePoolPush();
            v28 = *(a1 + 40);
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = HMFGetLogIdentifier();
              v31 = [*(a1 + 48) identifier];
              v32 = [v31 shortDescription];
              *buf = 138543874;
              v42 = v30;
              v43 = 2114;
              v44 = v32;
              v45 = 2112;
              v46 = v19;
              _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to write settings to accessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v27);
            v33 = _Block_copy(*(a1 + 72));
            v34 = v33;
            if (v33)
            {
              (*(v33 + 2))(v33, v19);
            }

            goto LABEL_24;
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 48) identifier];
      v25 = [v24 shortDescription];
      *buf = 138543618;
      v42 = v23;
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully wrote settings to accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = _Block_copy(*(a1 + 72));
    v10 = v26;
    if (v26)
    {
      v11 = v26[2];
      goto LABEL_6;
    }
  }

LABEL_24:
}

- (void)_writeInitialSettingsCharacteristicsToCamera
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Writing initial settings characteristics to camera", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)selfCopy setNeedsInitialSettingsCharacteristicSynchronization:1];
  array = [MEMORY[0x277CBEB18] array];
  [(HMDCameraProfileSettingsManager *)selfCopy _addOperatingModeIndicatorCharacteristicWriteRequestToArray:array accessModeIndicatorEnabled:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addNightVisionCharacteristicWriteRequestToArray:array nightVisionEnabled:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addSnapshotsActiveCharacteristicWriteRequestToArray:array snapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addPeriodicSnapshotsActiveCharacteristicWriteRequestToArray:array periodicSnapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addRecordingAudioEnabledWriteRequestToArray:array recordingAudioEnabled:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HMDCameraProfileSettingsManager__writeInitialSettingsCharacteristicsToCamera__block_invoke;
  v9[3] = &unk_2797359D8;
  v9[4] = selfCopy;
  [(HMDCameraProfileSettingsManager *)selfCopy _handleCharacteristicWriteRequests:array completion:v9];
}

void __79__HMDCameraProfileSettingsManager__writeInitialSettingsCharacteristicsToCamera__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write initial settings characteristics: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote initial settings characteristics", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setNeedsInitialSettingsCharacteristicSynchronization:0];
  }
}

- (void)_updateNotificationSettings:(id)settings forMessage:(id)message
{
  messageCopy = message;
  settingsCopy = settings;
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  [hapAccessory updateCameraProfileNotificationSettings:settingsCopy];

  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfCurrentSettings];
  [messageCopy respondWithSuccess];
}

- (void)_notifyClientsOfChangedSettings:(id)settings isInitialSettingsUpdate:(BOOL)update
{
  updateCopy = update;
  v37 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = settingsCopy;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of changed settings: %@ isInitialSettingsUpdate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDCameraProfileSettingsManager *)selfCopy _payloadForSettings:settingsCopy];
  v14 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCF648] messagePayload:v13];
  messageDestination = [(HMDCameraProfileSettingsManager *)selfCopy messageDestination];
  [v14 setDestination:messageDestination];

  msgDispatcher = [(HMDCameraProfileSettingsManager *)selfCopy msgDispatcher];
  [msgDispatcher sendMessage:v14 completionHandler:0];

  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  v18 = hapAccessory;
  if (hapAccessory)
  {
    home = [hapAccessory home];
    homeManager = [home homeManager];
    uniqueIdentifier = [(HMDCameraProfileSettingsManager *)selfCopy uniqueIdentifier];
    [homeManager updateGenerationCounterWithReason:@"Camera Settings Updated" sourceUUID:uniqueIdentifier shouldNotifyClients:1];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{updateCopy, @"HMDCameraProfileSettingsNotificationKey", @"HMDCameraProfileSettingsIsInitialSettingsUpdateNotificationKey", settingsCopy}];
    v30[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:2];

    notificationCenter = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter postNotificationName:@"HMDCameraProfileSettingsDidChangeNotification" object:v18 userInfo:v23];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory reference was nil while notifying clients of changed settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

- (void)_notifyClientsOfChangedSettingsModel:(id)model isInitialSettingsUpdate:(BOOL)update
{
  updateCopy = update;
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDCameraProfileSettingsManager *)self _settingsFromSettingsModel:modelCopy];

  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfChangedSettings:v8 isInitialSettingsUpdate:updateCopy];
}

- (void)_notifyClientsOfCurrentSettings
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettings = [(HMDCameraProfileSettingsManager *)self currentSettings];
  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfChangedSettings:currentSettings isInitialSettingsUpdate:0];
}

- (id)_payloadForSettings:(id)settings
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCF650];
  v3 = encodeRootObjectForSPIClients(settings);
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)_settingsFromSettingsModel:(id)model
{
  v4 = MEMORY[0x277CD1F68];
  modelCopy = model;
  v6 = [v4 alloc];
  hmbModelID = [modelCopy hmbModelID];
  v8 = [v6 initWithUUID:hmbModelID];

  [v8 setSupportedFeatures:{-[HMDCameraProfileSettingsManager supportedFeatures](self, "supportedFeatures")}];
  [v8 setAccessModeAtHome:{objc_msgSend(modelCopy, "accessModeAtHome")}];
  [v8 setAccessModeNotAtHome:{objc_msgSend(modelCopy, "accessModeNotAtHome")}];
  [v8 setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers")}];
  [v8 setCameraManuallyDisabled:{objc_msgSend(modelCopy, "cameraManuallyDisabled")}];
  currentNotificationSettings = [(HMDCameraProfileSettingsManager *)self currentNotificationSettings];
  [v8 setNotificationSettings:currentNotificationSettings];

  activityZones = [modelCopy activityZones];
  [v8 setActivityZones:activityZones];

  [v8 setActivityZonesIncludedForSignificantEventDetection:{objc_msgSend(modelCopy, "activityZonesIncludedForSignificantEventDetection")}];
  if ([(HMDCameraProfileSettingsManager *)self canRevealCurrentAccessMode])
  {
    currentAccessMode = [modelCopy currentAccessMode];
  }

  else
  {
    currentAccessMode = [modelCopy mostPrivateAccessMode];
  }

  v12 = currentAccessMode;

  [v8 setCurrentAccessMode:v12];
  v13 = objc_msgSend_copy(v8);

  return v13;
}

- (NSUUID)derivedPropertiesModelID
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAD78];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  v7[0] = @"2b32a3ee-3908-406e-890d-74f9c410ef2b";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 hm_deriveUUIDFromBaseUUID:uniqueIdentifier withSalts:v4];

  return v5;
}

- (id)_settingsModelForUpdate
{
  v3 = [HMDCameraProfileSettingsModel alloc];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  uuid = [hapAccessory uuid];
  v7 = [(HMBModel *)v3 initWithModelID:uniqueIdentifier parentModelID:uuid];

  return v7;
}

- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing current access mode settings to camera", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
  array = [MEMORY[0x277CBEB18] array];
  -[HMDCameraProfileSettingsManager _addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:](selfCopy, "_addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:", array, [currentSettingsModel currentAccessMode]);
  -[HMDCameraProfileSettingsManager _addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:](selfCopy, "_addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:", array, [currentSettingsModel currentAccessMode]);
  [(HMDCameraProfileSettingsManager *)selfCopy _handleCharacteristicWriteRequests:array completion:completionCopy];
}

- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)properties currentSettings:(id)settings userInitiated:(BOOL)initiated didUpdateField:(BOOL *)field
{
  initiatedCopy = initiated;
  v88 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  settingsCopy = settings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (field)
  {
    *field = 0;
  }

  if ([settingsCopy hmbPropertyWasSet:@"accessModeAtHomeField"] && (objc_msgSend(settingsCopy, "hmbPropertyWasSet:", @"accessModeNotAtHomeField") & 1) != 0)
  {
    accessModeAtHome = [settingsCopy accessModeAtHome];
    accessModeNotAtHome = [settingsCopy accessModeNotAtHome];
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)self isAnyUserAtHome];
    v77 = isAnyUserAtHome;
    if ([(HMDCameraProfileSettingsManager *)self isCameraManuallyDisabled])
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v79 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Camera is manually disabled, setting current access mode to off", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = 0;
      v21 = 5;
    }

    else if (isAnyUserAtHome)
    {
      bOOLValue = [isAnyUserAtHome BOOLValue];
      v28 = 1;
      if (!bOOLValue)
      {
        v28 = 2;
      }

      v72 = v28;
      if (bOOLValue)
      {
        v20 = accessModeAtHome;
      }

      else
      {
        v20 = accessModeNotAtHome;
      }

      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v69 = HMFGetLogIdentifier();
        v68 = HMCameraAccessModeAsString();
        [v77 BOOLValue];
        HMFBooleanToString();
        v31 = v67 = selfCopy2;
        v32 = HMCameraAccessModeAsString();
        v33 = HMCameraAccessModeAsString();
        *buf = 138544386;
        v79 = v69;
        v80 = 2112;
        v81 = v68;
        v82 = 2112;
        v83 = v31;
        v84 = 2112;
        v85 = v32;
        v86 = 2112;
        v87 = v33;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Determined expected access mode of %@ based on isAnyUserAtHome = %@, accessModeAtHome = %@, accessModeNotAtHome = %@", buf, 0x34u);

        selfCopy2 = v67;
      }

      objc_autoreleasePoolPop(context);
      if (initiatedCopy)
      {
        v21 = 4;
      }

      else
      {
        v21 = v72;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (accessModeAtHome != accessModeNotAtHome)
      {
        if (v37)
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543362;
          v79 = v66;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Presence is unavailable; not updating current access mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        goto LABEL_49;
      }

      if (v37)
      {
        contexta = HMFGetLogIdentifier();
        v73 = v34;
        v38 = HMCameraAccessModeAsString();
        v39 = HMCameraAccessModeAsString();
        HMCameraAccessModeAsString();
        *buf = 138544130;
        v79 = contexta;
        v80 = 2112;
        v81 = v38;
        v82 = 2112;
        v83 = v39;
        v85 = v84 = 2112;
        v40 = v85;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Determined expected access mode of %@ because accessModeAtHome (%@) and accessModeNotAtHome (%@) are the same", buf, 0x2Au);

        v34 = v73;
      }

      objc_autoreleasePoolPop(v34);
      v21 = 4;
      v20 = accessModeAtHome;
    }

    if (([propertiesCopy hmbPropertyWasSet:{@"currentAccessModeField", v67}] & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v74 = v21;
        v45 = HMCameraAccessModeAsString();
        *buf = 138543618;
        v79 = v44;
        v80 = 2112;
        v81 = v45;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Setting initial currentAccessMode to %@", buf, 0x16u);

        v21 = v74;
      }

      objc_autoreleasePoolPop(v41);
      [propertiesCopy setCurrentAccessMode:v20];
      if (field)
      {
        *field = 1;
      }
    }

    if (([propertiesCopy hmbPropertyWasSet:@"currentAccessModeChangeReasonField"] & 1) == 0)
    {
      v46 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithInteger:v21];
        v75 = v20;
        v51 = v50 = v21;
        *buf = 138543618;
        v79 = v49;
        v80 = 2112;
        v81 = v51;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Setting initial currentAccessModeChangeReason to %@", buf, 0x16u);

        v21 = v50;
        v20 = v75;
      }

      objc_autoreleasePoolPop(v46);
      [propertiesCopy setCurrentAccessModeChangeReason:v21];
      if (field)
      {
        *field = 1;
      }
    }

    if ([propertiesCopy currentAccessMode] != v20)
    {
      v52 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        [propertiesCopy currentAccessMode];
        v56 = HMCameraAccessModeAsString();
        HMCameraAccessModeAsString();
        v76 = v52;
        v57 = v20;
        v59 = v58 = v21;
        *buf = 138543874;
        v79 = v55;
        v80 = 2112;
        v81 = v56;
        v82 = 2112;
        v83 = v59;
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Changing currentAccessMode field from %@ to %@", buf, 0x20u);

        v21 = v58;
        v20 = v57;
        v52 = v76;
      }

      objc_autoreleasePoolPop(v52);
      [propertiesCopy setCurrentAccessMode:v20];
      if ([propertiesCopy currentAccessModeChangeReason] != v21)
      {
        v60 = objc_autoreleasePoolPush();
        v61 = selfCopy6;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = HMFGetLogIdentifier();
          v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(propertiesCopy, "currentAccessModeChangeReason")}];
          v65 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
          *buf = 138543874;
          v79 = v63;
          v80 = 2112;
          v81 = v64;
          v82 = 2112;
          v83 = v65;
          _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Changing currentAccessModeChangeReason from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v60);
        [propertiesCopy setCurrentAccessModeChangeReason:v21];
      }

      if (field)
      {
        *field = 1;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [settingsCopy debugDescription];
    *buf = 138543618;
    v79 = v25;
    v80 = 2112;
    v81 = v26;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot update currentAccessMode, settings model does not include accessMode values: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_50:
}

- (id)_updatedDerivedPropertiesModelWithSettingsModel:(id)model userInitiated:(BOOL)initiated didCreateModel:(BOOL *)createModel
{
  initiatedCopy = initiated;
  v28 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (createModel)
  {
    *createModel = 0;
  }

  zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
  localZone = [zoneManager localZone];
  derivedPropertiesModelID = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModelID];
  v13 = [localZone fetchModelWithModelID:derivedPropertiesModelID ofType:objc_opt_class() error:0];

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating a new derived properties model because one doesn't exist already", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [HMDCameraProfileSettingsDerivedPropertiesModel alloc];
    derivedPropertiesModelID2 = [(HMDCameraProfileSettingsManager *)selfCopy derivedPropertiesModelID];
    uniqueIdentifier = [(HMDCameraProfileSettingsManager *)selfCopy uniqueIdentifier];
    v22 = [(HMBModel *)v19 initWithModelID:derivedPropertiesModelID2 parentModelID:uniqueIdentifier];

    v23 = v22;
    v13 = v23;
    if (createModel)
    {
      *createModel = 1;
    }

    v14 = v23;
  }

  LOBYTE(v26) = 0;
  [(HMDCameraProfileSettingsManager *)self _populateCurrentAccessModeFieldForDerivedProperties:v13 currentSettings:modelCopy userInitiated:initiatedCopy didUpdateField:&v26];
  if (v26 == 1)
  {
    v24 = v13;

    v14 = v24;
  }

  return v14;
}

- (void)_updateDerivedPropertiesModelWithSettingsModel:(id)model userInitiated:(BOOL)initiated reason:(id)reason
{
  initiatedCopy = initiated;
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  reasonCopy = reason;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    v24 = 138543874;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating derived properties with userInitiated=%@ due to %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  LOBYTE(v24) = 0;
  v16 = [(HMDCameraProfileSettingsManager *)selfCopy _updatedDerivedPropertiesModelWithSettingsModel:modelCopy userInitiated:initiatedCopy didCreateModel:&v24];
  if (v16)
  {
    v17 = [MEMORY[0x277D17108] optionsWithLabel:reasonCopy];
    v18 = v24;
    zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
    localZone = [zoneManager localZone];
    v21 = [MEMORY[0x277CBEB98] setWithObject:v16];
    if (v18 == 1)
    {
      v22 = [localZone createModels:v21 options:v17];
    }

    else
    {
      v23 = [localZone updateModels:v21 options:v17];
    }
  }
}

- (BOOL)isCameraManuallyDisabled
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  manuallyDisabledCharacteristic = [(HMDCameraProfileSettingsManager *)self manuallyDisabledCharacteristic];
  v5 = manuallyDisabledCharacteristic;
  if (manuallyDisabledCharacteristic)
  {
    value = [manuallyDisabledCharacteristic value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v13;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = 0;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Characteristic %@ has unhandled value type: %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)doorbellInputEventCharacteristic
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [hapAccessory findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];

  return v3;
}

- (id)manuallyDisabledCharacteristic
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [hapAccessory findCharacteristicType:@"00000227-0000-1000-8000-0026BB765291" forServiceType:*MEMORY[0x277CD0DF8]];

  return v3;
}

- (BOOL)_migrateSettingsModel:(id)model
{
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  version = [modelCopy version];
  if (version != 1)
  {
    if (version)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_16;
    }

    doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

    if (doorbellInputEventCharacteristic)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        [modelCopy recordingEventTriggers];
        v11 = HMCameraSignificantEventTypesAsString();
        v24 = 138543618;
        v25 = v10;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing recording event triggers: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [modelCopy setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers") | 0x10}];
    }

    if ([modelCopy recordingEventTriggers])
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        [modelCopy recordingEventTriggers];
        v16 = HMCameraSignificantEventTypesAsString();
        v24 = 138543618;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Settings have Any Motion recording trigger; adding all significant event types to existing recording event triggers: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [modelCopy setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers") | 0x1F}];
    }
  }

  if ([modelCopy version] == 1)
  {
    goto LABEL_12;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    version2 = [modelCopy version];
    v24 = 138543874;
    v25 = v21;
    v26 = 2048;
    v27 = version2;
    v28 = 2048;
    v29 = 1;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating settings model version from %ld to %ld", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 1;
  [modelCopy setVersion:1];
LABEL_16:

  return v17;
}

- (BOOL)_migrateNotificationSettings:(id)settings
{
  v58 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  version = [settingsCopy version];
  v7 = 0;
  if (version == 1)
  {
    goto LABEL_22;
  }

  if (version)
  {
    goto LABEL_38;
  }

  doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (doorbellInputEventCharacteristic)
  {
    smartBulletinBoardNotificationCondition = [settingsCopy smartBulletinBoardNotificationCondition];
    if (!smartBulletinBoardNotificationCondition)
    {
      if (isAppleTV())
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v52 = 138543362;
          v53 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there is no notification condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v52, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        [(HMDCameraProfileSettingsManager *)selfCopy _enablePackageNotificationsOnSettings:settingsCopy];
        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_21;
    }

    v10 = [objc_alloc(MEMORY[0x277CD18B8]) initWithPredicate:smartBulletinBoardNotificationCondition];
    significantEventReasonCondition = [v10 significantEventReasonCondition];
    significantEventTypes = [significantEventReasonCondition significantEventTypes];

    if (significantEventTypes)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        significantEventReasonCondition2 = [v10 significantEventReasonCondition];
        v52 = 138543618;
        v53 = v16;
        v54 = 2112;
        v55 = significantEventReasonCondition2;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing significant event notification condition: %@", &v52, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      significantEventReasonCondition3 = [v10 significantEventReasonCondition];
      significantEventTypes2 = [significantEventReasonCondition3 significantEventTypes];

      v20 = [v10 mutableCopy];
      0x10 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:significantEventTypes2 | 0x10];
      [v20 setSignificantEventReasonCondition:0x10];

      predicate = [v20 predicate];
      [settingsCopy setSmartBulletinBoardNotificationCondition:predicate];
    }

    else
    {
      if (!isAppleTV())
      {
        v7 = 0;
        goto LABEL_19;
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v52 = 138543362;
        v53 = v30;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there are no significantEventTypes in the condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v52, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDCameraProfileSettingsManager *)selfCopy3 _enablePackageNotificationsOnSettings:settingsCopy];
    }

    v7 = 1;
LABEL_19:

LABEL_21:
    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  if (isAppleTV())
  {
    if ([settingsCopy isAccessModeChangeNotificationEnabled])
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v52 = 138543362;
        v53 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Forcing access mode notification to disabled during settings migration on Apple TV", &v52, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      [settingsCopy setAccessModeChangeNotificationEnabled:0];
      v7 = 1;
    }

    if ([settingsCopy isReachabilityEventNotificationEnabled])
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v52 = 138543362;
        v53 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Forcing reachability notification to disabled during settings migration on Apple TV", &v52, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      [settingsCopy setReachabilityEventNotificationEnabled:0];
      v7 = 1;
    }
  }

  if (isHomePod() || isWatch())
  {
    v39 = objc_alloc_init(MEMORY[0x277CD1958]);
    if (([settingsCopy isEqual:v39] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v52 = 138543362;
        v53 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Forcing all notification settings to disabled during settings migration on HomePod / Watch", &v52, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      [settingsCopy setAccessModeChangeNotificationEnabled:0];
      [settingsCopy setReachabilityEventNotificationEnabled:0];
      [settingsCopy setSmartBulletinBoardNotificationEnabled:0];
      [settingsCopy setSmartBulletinBoardNotificationCondition:0];
      v7 = 1;
    }
  }

LABEL_38:
  version2 = [settingsCopy version];
  v45 = *MEMORY[0x277CCF628];
  if (version2 != *MEMORY[0x277CCF628])
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = HMFGetLogIdentifier();
      version3 = [settingsCopy version];
      v52 = 138543874;
      v53 = v49;
      v54 = 2048;
      v55 = version3;
      v56 = 2048;
      v57 = 1;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Updating notification settings version from %ld to %ld", &v52, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    [settingsCopy setVersion:v45];
    v7 = 1;
  }

  return v7;
}

- (id)_createNotificationSettingsUsingSettingsModel:(id)model
{
  v32 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277CD1C50]);
  hasAnyNotificationFieldsSet = [modelCopy hasAnyNotificationFieldsSet];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (hasAnyNotificationFieldsSet)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [modelCopy debugDescription];
      smartBulletinBoardNotification = [modelCopy smartBulletinBoardNotification];
      v26 = 138543874;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = smartBulletinBoardNotification;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Migrating notification settings from settings model: %@, smart bulletin board notification: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setVersion:*MEMORY[0x277CCF628]];
    [v6 setAccessModeChangeNotificationEnabled:{objc_msgSend(modelCopy, "accessModeChangeNotificationEnabled")}];
    [v6 setReachabilityEventNotificationEnabled:{objc_msgSend(modelCopy, "reachabilityEventNotificationEnabled")}];
    smartBulletinBoardNotification2 = [modelCopy smartBulletinBoardNotification];
    [v6 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(smartBulletinBoardNotification2, "isEnabled")}];

    smartBulletinBoardNotification3 = [modelCopy smartBulletinBoardNotification];
    condition = [smartBulletinBoardNotification3 condition];
    [v6 setSmartBulletinBoardNotificationCondition:condition];

    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Migrated to new notification settings: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    if (v11)
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating new notification settings using default values", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setVersion:*MEMORY[0x277CCF628]];
    [v6 setAccessModeChangeNotificationEnabled:1];
    [v6 setReachabilityEventNotificationEnabled:1];
    doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)selfCopy doorbellInputEventCharacteristic];

    if (doorbellInputEventCharacteristic && isAppleTV())
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _enablePackageNotificationsOnSettings:v6];
    }
  }

  v24 = objc_msgSend_copy(v6);

  return v24;
}

- (void)_initializeNotificationSettingsUsingSettingsModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v7 = hapAccessory;
  if (hapAccessory)
  {
    cameraProfileNotificationSettings = [hapAccessory cameraProfileNotificationSettings];
    v9 = [cameraProfileNotificationSettings mutableCopy];

    if (v9)
    {
      if ([(HMDCameraProfileSettingsManager *)self _migrateNotificationSettings:v9])
      {
        [v7 updateCameraProfileNotificationSettings:v9];
      }
    }

    else
    {
      v14 = [(HMDCameraProfileSettingsManager *)self _createNotificationSettingsUsingSettingsModel:modelCopy];
      [v7 updateCameraProfileNotificationSettings:v14];
    }
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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference is nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_synchronizeSettingsModelForBackwardCompatibilityForCharacteristic:(id)characteristic
{
  v81 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  type = [characteristicCopy type];
  if ([type isEqualToString:*MEMORY[0x277CCF898]])
  {
    type2 = [service type];
    v8 = [type2 isEqualToString:*MEMORY[0x277CD0DF8]];

    if (v8)
    {
      value = [characteristicCopy value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = value;
      }

      else
      {
        v10 = 0;
      }

      type7 = v10;

      if (type7)
      {
        bOOLValue = [type7 BOOLValue];
        currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
        snapshotsAllowed = [currentSettingsModel snapshotsAllowed];

        if (bOOLValue != snapshotsAllowed)
        {
          _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
          [_settingsModelForUpdate setSnapshotsAllowed:bOOLValue];
          v16 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            v20 = HMFBooleanToString();
            *buf = 138543618;
            v76 = v19;
            v77 = 2112;
            v78 = v20;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic value change by updating snapshots allowed to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v21 = MEMORY[0x277D17108];
          v22 = @"Updating snapshots allowed setting in response to characteristic change";
LABEL_44:
          v58 = [v21 optionsWithLabel:v22];
          zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy7 zoneManager];
          localZone = [zoneManager localZone];
          v61 = [MEMORY[0x277CBEB98] setWithObject:_settingsModelForUpdate];
          v62 = [localZone updateModels:v61 options:v58];

          goto LABEL_55;
        }

        goto LABEL_55;
      }

      v63 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        value2 = [characteristicCopy value];
        v68 = objc_opt_class();
        v74 = v68;
        value3 = [characteristicCopy value];
        *buf = 138543874;
        v76 = v66;
        v77 = 2112;
        v78 = v68;
        v79 = 2112;
        v80 = value3;
        v70 = "%{public}@HMCharacteristicTypeEventSnapshotsActive characteristic value was of unexpected class %@: %@";
LABEL_53:
        _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, v70, buf, 0x20u);

        goto LABEL_54;
      }

      goto LABEL_54;
    }
  }

  else
  {
  }

  type3 = [characteristicCopy type];
  if ([type3 isEqualToString:*MEMORY[0x277CCF798]])
  {
    type4 = [service type];
    v25 = [type4 isEqualToString:*MEMORY[0x277CD0DF8]];

    if (v25)
    {
      value4 = [characteristicCopy value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = value4;
      }

      else
      {
        v27 = 0;
      }

      type7 = v27;

      if (type7)
      {
        bOOLValue2 = [type7 BOOLValue];
        currentSettingsModel2 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
        accessModeIndicatorEnabled = [currentSettingsModel2 accessModeIndicatorEnabled];

        if (bOOLValue2 != accessModeIndicatorEnabled)
        {
          _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
          [_settingsModelForUpdate setAccessModeIndicatorEnabled:bOOLValue2];
          v31 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v34 = HMFBooleanToString();
            *buf = 138543618;
            v76 = v33;
            v77 = 2112;
            v78 = v34;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic value change by updating access mode indicator enabled to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
          v21 = MEMORY[0x277D17108];
          v22 = @"Updating access mode indicator enabled setting in response to characteristic change";
          goto LABEL_44;
        }

LABEL_55:

        goto LABEL_56;
      }

      v63 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        value2 = [characteristicCopy value];
        v71 = objc_opt_class();
        v74 = v71;
        value3 = [characteristicCopy value];
        *buf = 138543874;
        v76 = v66;
        v77 = 2112;
        v78 = v71;
        v79 = 2112;
        v80 = value3;
        v70 = "%{public}@HMCharacteristicTypeCameraOperatingModeIndicator characteristic value was of unexpected class %@: %@";
        goto LABEL_53;
      }

LABEL_54:

      objc_autoreleasePoolPop(v63);
      goto LABEL_55;
    }
  }

  else
  {
  }

  type5 = [characteristicCopy type];
  if ([type5 isEqualToString:*MEMORY[0x277CCF990]])
  {
    type6 = [service type];
    v37 = [type6 isEqualToString:*MEMORY[0x277CD0DF8]];

    if (v37)
    {
      value5 = [characteristicCopy value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = value5;
      }

      else
      {
        v39 = 0;
      }

      type7 = v39;

      if (type7)
      {
        bOOLValue3 = [type7 BOOLValue];
        currentSettingsModel3 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
        nightVisionModeEnabled = [currentSettingsModel3 nightVisionModeEnabled];

        if (bOOLValue3 != nightVisionModeEnabled)
        {
          _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
          [_settingsModelForUpdate setNightVisionModeEnabled:bOOLValue3];
          v43 = objc_autoreleasePoolPush();
          selfCopy7 = self;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            v46 = HMFBooleanToString();
            *buf = 138543618;
            v76 = v45;
            v77 = 2112;
            v78 = v46;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic value change by updating night vision mode enabled to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
          v21 = MEMORY[0x277D17108];
          v22 = @"Updating night vision mode enabled setting in response to characteristic change";
          goto LABEL_44;
        }

        goto LABEL_55;
      }

      v63 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        value2 = [characteristicCopy value];
        v72 = objc_opt_class();
        v74 = v72;
        value3 = [characteristicCopy value];
        *buf = 138543874;
        v76 = v66;
        v77 = 2112;
        v78 = v72;
        v79 = 2112;
        v80 = value3;
        v70 = "%{public}@HMCharacteristicTypeNightVision characteristic value was of unexpected class %@: %@";
        goto LABEL_53;
      }

      goto LABEL_54;
    }
  }

  else
  {
  }

  type7 = [characteristicCopy type];
  if (([type7 isEqualToString:*MEMORY[0x277CCFA00]] & 1) == 0)
  {
    goto LABEL_55;
  }

  type8 = [service type];
  v48 = [type8 isEqualToString:*MEMORY[0x277CD0E08]];

  if (v48)
  {
    value6 = [characteristicCopy value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = value6;
    }

    else
    {
      v50 = 0;
    }

    type7 = v50;

    if (type7)
    {
      bOOLValue4 = [type7 BOOLValue];
      currentSettingsModel4 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
      recordingAudioEnabled = [currentSettingsModel4 recordingAudioEnabled];

      if (bOOLValue4 != recordingAudioEnabled)
      {
        _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
        [_settingsModelForUpdate setRecordingAudioEnabled:bOOLValue4];
        v54 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          v57 = HMFBooleanToString();
          *buf = 138543618;
          v76 = v56;
          v77 = 2112;
          v78 = v57;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Handling characteristic value change by updating recording audio enabled to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v54);
        v21 = MEMORY[0x277D17108];
        v22 = @"Updating recording audio enabled setting in response to characteristic change";
        goto LABEL_44;
      }

      goto LABEL_55;
    }

    v63 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = HMFGetLogIdentifier();
      value2 = [characteristicCopy value];
      v73 = objc_opt_class();
      v74 = v73;
      value3 = [characteristicCopy value];
      *buf = 138543874;
      v76 = v66;
      v77 = 2112;
      v78 = v73;
      v79 = 2112;
      v80 = value3;
      v70 = "%{public}@HMCharacteristicTypeRecordingAudioActive characteristic value was of unexpected class %@: %@";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

LABEL_56:
}

- (id)_localZoneUpdateCompletionForMessage:(id)message
{
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HMDCameraProfileSettingsManager__localZoneUpdateCompletionForMessage___block_invoke;
  v9[3] = &unk_2797315E8;
  v9[4] = self;
  v10 = messageCopy;
  v6 = messageCopy;
  v7 = _Block_copy(v9);

  return v7;
}

void __72__HMDCameraProfileSettingsManager__localZoneUpdateCompletionForMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HMDCameraProfileSettingsManager__localZoneUpdateCompletionForMessage___block_invoke_2;
  v12[3] = &unk_279734870;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __72__HMDCameraProfileSettingsManager__localZoneUpdateCompletionForMessage___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 48) name];
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Updated settings for message %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 48) respondWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) name];
      v11 = *(a1 + 56);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings for message %@: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v12 respondWithError:v13];
  }
}

- (id)_processingOptionsForLabel:(id)label
{
  labelCopy = label;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [MEMORY[0x277D17108] optionsWithLabel:labelCopy];

  zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  [v6 setShouldEnqueueMirrorOutput:{objc_msgSend(defaultConfiguration, "isZoneOwner")}];

  return v6;
}

- (HMDCameraProfileSettingsDerivedPropertiesModel)derivedPropertiesModel
{
  v21 = *MEMORY[0x277D85DE8];
  zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
  localZone = [zoneManager localZone];
  derivedPropertiesModelID = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModelID];
  v16 = 0;
  v6 = [localZone fetchModelWithModelID:derivedPropertiesModelID ofType:objc_opt_class() error:&v16];
  v7 = v16;

  if (!v6)
  {
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error fetching derived properties: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v12 = [HMDCameraProfileSettingsDerivedPropertiesModel alloc];
    derivedPropertiesModelID2 = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModelID];
    uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
    v6 = [(HMBModel *)v12 initWithModelID:derivedPropertiesModelID2 parentModelID:uniqueIdentifier];

    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v6 setCurrentAccessModeChangeReason:0];
    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v6 setCurrentAccessMode:1];
  }

  return v6;
}

- (void)_handleConnectedToAccessory
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:1];
  if ([(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
  {
    currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
    [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesModelWithSettingsModel:currentSettingsModel userInitiated:0 reason:@"Accessory became reachable"];

    [(HMDCameraProfileSettingsManager *)selfCopy _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
    if ([(HMDCameraProfileSettingsManager *)selfCopy needsInitialSettingsCharacteristicSynchronization])
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _writeInitialSettingsCharacteristicsToCamera];
    }
  }
}

- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HMDCameraProfileSettingsManager_handleBulletinNotificationEnableStateDidChangeNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __94__HMDCameraProfileSettingsManager_handleBulletinNotificationEnableStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
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

  if (v4)
  {
    [*(a1 + 40) _coordinateNotificationSettingsWithServiceBulletinNotification:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) name];
      v10 = [*(a1 + 32) object];
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected notification object for %@: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDCameraProfileSettingsManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __79__HMDCameraProfileSettingsManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Current user's remote access changed, so notifying clients of current settings", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _notifyClientsOfCurrentSettings];
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDCameraProfileSettingsManager_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __76__HMDCameraProfileSettingsManager_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kModifiedCharacteristicsKey"];

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

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 40) _synchronizeSettingsModelForBackwardCompatibilityForCharacteristic:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)handleCharacteristicsValueUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDCameraProfileSettingsManager_handleCharacteristicsValueUpdatedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __81__HMDCameraProfileSettingsManager_handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

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

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      *&v7 = 138543618;
      v20 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 type];
          v13 = [v12 isEqual:@"00000227-0000-1000-8000-0026BB765291"];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v20;
              v27 = v17;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling Manually Disabled characteristic change: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            v18 = *(a1 + 32);
            v19 = [v18 currentSettingsModel];
            [v18 _updateDerivedPropertiesModelWithSettingsModel:v19 userInitiated:1 reason:@"Manually disabled characteristic"];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }
  }
}

- (void)handleRecordingManagementServiceDidUpdateNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraProfileSettingsManager_handleRecordingManagementServiceDidUpdateNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __89__HMDCameraProfileSettingsManager_handleRecordingManagementServiceDidUpdateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isReachable];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _handleConnectedToAccessory];
  }
}

- (void)handleAccessoryConfiguredNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDCameraProfileSettingsManager_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_isAnyUserAtHomeForPresence:(id)presence
{
  presenceCopy = presence;
  if ([presenceCopy hasPresenceRegionForAllUsers])
  {
    v4 = MEMORY[0x277CCABB0];
    isAnyUserAtHome = [presenceCopy isAnyUserAtHome];

    v6 = [v4 numberWithBool:isAnyUserAtHome];
  }

  else
  {
    isAnyUserAtHome2 = [presenceCopy isAnyUserAtHome];

    if (isAnyUserAtHome2)
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)home
{
  v32 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  presenceMonitor = [homeCopy presenceMonitor];
  currentHomePresence = [presenceMonitor currentHomePresence];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = currentHomePresence;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (currentHomePresence)
  {
    v12 = [(HMDCameraProfileSettingsManager *)selfCopy _isAnyUserAtHomeForPresence:currentHomePresence];
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)selfCopy isAnyUserAtHome];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        isAnyUserAtHome2 = [(HMDCameraProfileSettingsManager *)v16 isAnyUserAtHome];
        v26 = 138543874;
        v27 = v18;
        v28 = 2112;
        v29 = isAnyUserAtHome2;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating isAnyUserAtHome from %@ to %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDCameraProfileSettingsManager *)v16 setAnyUserAtHome:v12];
    }

    v20 = v14 ^ 1;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Presence is unavailable; setting isAnyUserAtHome to nil", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMDCameraProfileSettingsManager *)v22 setAnyUserAtHome:0];
    v20 = 0;
  }

  return v20;
}

- (BOOL)_evaluateHomePresence
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];

  if (home)
  {
    v6 = [(HMDCameraProfileSettingsManager *)self _setAnyUserAtHomeFromPresenceMonitorWithHome:home];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Home is nil; setting isAnyUserAtHome to nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraProfileSettingsManager *)selfCopy setAnyUserAtHome:0];
    v6 = 0;
  }

  return v6;
}

- (void)handleHomePresenceEvaluatedNotification:(id)notification
{
  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDCameraProfileSettingsManager_handleHomePresenceEvaluatedNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __75__HMDCameraProfileSettingsManager_handleHomePresenceEvaluatedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received Home Presence Evaluated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) _evaluateHomePresence])
  {
    v6 = *(a1 + 32);
    v7 = [v6 currentSettingsModel];
    [v6 _updateDerivedPropertiesModelWithSettingsModel:v7 userInitiated:0 reason:@"Presence changed"];
  }
}

- (void)handlePrimaryResidentUpdatedNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDCameraProfileSettingsManager_handlePrimaryResidentUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __76__HMDCameraProfileSettingsManager_handlePrimaryResidentUpdatedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@We are now the primary resident", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _evaluateHomePresence];
    v8 = *(a1 + 32);
    v9 = [v8 currentSettingsModel];
    [v8 _updateDerivedPropertiesModelWithSettingsModel:v9 userInitiated:0 reason:@"Current device became primary resident"];

    return [*(a1 + 32) _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Another device is primary resident, clearing anyUserAtHome", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) setAnyUserAtHome:0];
  }
}

- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change reachability event notification enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if (bulletinNotificationsSupported)
  {
    messagePayload = [messageCopy messagePayload];
    v14 = [messagePayload hmf_BOOLForKey:*MEMORY[0x277CCF660]];

    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFEnabledStatusToString();
      *buf = 138543618;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Registering reachability event notifications as %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v16 currentNotificationSettings];
    v21 = [currentNotificationSettings mutableCopy];

    [v21 setReachabilityEventNotificationEnabled:v14];
    hapAccessory2 = [(HMDCameraProfileSettingsManager *)v16 hapAccessory];
    home2 = [hapAccessory2 home];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __92__HMDCameraProfileSettingsManager__handleUpdateReachabilityEventNotificationEnabledMessage___block_invoke;
    v29[3] = &unk_2797315B8;
    v29[4] = v16;
    v32 = v14;
    v30 = messageCopy;
    v31 = v21;
    v24 = v21;
    [home2 setCameraReachabilityEventNotificationsEnabled:v14 forAccessory:hapAccessory2 completionHandler:v29];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Camera reachability notification cannot be modified when bulletin notifications are not supported.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    hapAccessory2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:hapAccessory2];
  }
}

void __92__HMDCameraProfileSettingsManager__handleUpdateReachabilityEventNotificationEnabledMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDCameraProfileSettingsManager__handleUpdateReachabilityEventNotificationEnabledMessage___block_invoke_2;
  block[3] = &unk_279731590;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v13 = *(a1 + 56);
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __92__HMDCameraProfileSettingsManager__handleUpdateReachabilityEventNotificationEnabledMessage___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update reachability event notification enabled to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 48) respondWithError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating reachability event notification enabled to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 40) _updateNotificationSettings:*(a1 + 56) forMessage:*(a1 + 48)];
  }
}

- (void)_handleUpdateActivityZonesMessage:(id)message
{
  v61[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to update activity zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v11 supportedFeatures];
      v14 = HMCameraSupportedFeaturesAsString();
      *buf = 138543618;
      v56 = v13;
      v57 = 2112;
      v58 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CCA9B8];
    v16 = 48;
LABEL_16:
    v19 = [v15 hmErrorWithCode:v16];
    [messageCopy respondWithError:v19];
    goto LABEL_25;
  }

  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  localZone = [zoneManager localZone];

  if (!localZone)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v43;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Local zone not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    v15 = MEMORY[0x277CCA9B8];
    v16 = -1;
    goto LABEL_16;
  }

  v19 = [messageCopy dataForKey:*MEMORY[0x277CCF688]];
  if (v19)
  {
    v20 = MEMORY[0x277CCAAC8];
    v21 = MEMORY[0x277CBEB98];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v23 = [v21 setWithArray:v22];
    v54 = 0;
    v24 = [v20 unarchivedObjectOfClasses:v23 fromData:v19 error:&v54];
    v25 = v54;

    if (v24)
    {
      v53 = v25;
      v26 = [messageCopy BOOLForKey:*MEMORY[0x277CCF640]];
      currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
      [currentSettingsModel setActivityZones:v24];
      [currentSettingsModel setActivityZonesIncludedForSignificantEventDetection:v26];
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = HMFBooleanToString();
        *buf = 138543874;
        v56 = v31;
        v57 = 2112;
        v58 = v24;
        v59 = 2112;
        v60 = v32;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating activity zones: %@ activityZonesIncludedForSignificantEventDetection: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = [(HMDCameraProfileSettingsManager *)v29 _processingOptionsForLabel:@"Update camera activity zones"];
      zoneManager2 = [(HMDCameraProfileSettingsManager *)v29 zoneManager];
      localZone2 = [zoneManager2 localZone];
      v36 = [MEMORY[0x277CBEB98] setWithObject:currentSettingsModel];
      v37 = [localZone2 addModels:v36 options:v33];
      v38 = [(HMDCameraProfileSettingsManager *)v29 _localZoneUpdateCompletionForMessage:messageCopy];
      v39 = [v37 addCompletionBlock:v38];

      v25 = v53;
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v52;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize activity zones: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      currentSettingsModel = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:currentSettingsModel];
    }
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v56 = v47;
      v57 = 2112;
      v58 = messagePayload;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find activity zones in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v25];
  }

LABEL_25:
}

- (void)_handleBulletinBoardNotificationCommitMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change bulletin board", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if ((bulletinNotificationsSupported & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", &v31, 0xCu);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
    goto LABEL_19;
  }

  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v14 supportedFeatures];
      v17 = HMCameraSupportedFeaturesAsString();
      v31 = 138543618;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", &v31, 0x16u);

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v19 = *MEMORY[0x277CD20E0];
  v18 = [messageCopy numberForKey:*MEMORY[0x277CD20E0]];
  if (v18)
  {
    v20 = [messageCopy predicateForKey:*MEMORY[0x277CD20D8]];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v24;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating smart bulletin board notification to enabled: %@, condition: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v22 currentNotificationSettings];
    v26 = [currentNotificationSettings mutableCopy];

    [v26 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(v18, "BOOLValue")}];
    [v26 setSmartBulletinBoardNotificationCondition:v20];
    [(HMDCameraProfileSettingsManager *)v22 _updateNotificationSettings:v26 forMessage:messageCopy];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v30;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board commit message missing key: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v20];
  }

LABEL_19:
}

- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode change notification enabled", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if ((bulletinNotificationsSupported & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Access mode change notification cannot be modified when bulletin notifications are not supported.", &v26, 0xCu);
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
    goto LABEL_15;
  }

  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 1) == 0 && ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 4) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v14 supportedFeatures];
      v17 = HMCameraSupportedFeaturesAsString();
      v26 = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ support neither streaming nor recording access control.", &v26, 0x16u);

LABEL_10:
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v19 = [messageCopy BOOLForKey:*MEMORY[0x277CCF630]];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMFBooleanToString();
    v26 = 138543618;
    v27 = v23;
    v28 = 2112;
    v29 = v24;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating access mode change notification enabled to %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v21 currentNotificationSettings];
  v18 = [currentNotificationSettings mutableCopy];

  [v18 setAccessModeChangeNotificationEnabled:v19];
  [(HMDCameraProfileSettingsManager *)v21 _updateNotificationSettings:v18 forMessage:messageCopy];
LABEL_15:
}

- (void)_handleUpdateRecordingTriggerEventsMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v41 = 138543362;
    v42 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change recording trigger events", &v41, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v11 supportedFeatures];
      v14 = HMCameraSupportedFeaturesAsString();
      v41 = 138543618;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CCA9B8];
    v16 = 48;
LABEL_15:
    v19 = [v15 hmErrorWithCode:v16];
    [messageCopy respondWithError:v19];
    goto LABEL_20;
  }

  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  localZone = [zoneManager localZone];

  if (!localZone)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Local zone not ready", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v15 = MEMORY[0x277CCA9B8];
    v16 = -1;
    goto LABEL_15;
  }

  v19 = [messageCopy numberForKey:*MEMORY[0x277CCF668]];
  if (v19)
  {
    currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
    [currentSettingsModel setRecordingEventTriggers:{objc_msgSend(currentSettingsModel, "recordingEventTriggers") & 0xFFFFFFFFFFFFFFE0 | objc_msgSend(v19, "unsignedIntegerValue") & 0x1F}];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMCameraSignificantEventTypesAsString();
      v41 = 138543618;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating recordingTriggerEvents to %@", &v41, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = [(HMDCameraProfileSettingsManager *)v22 _processingOptionsForLabel:@"Update camera recording trigger events"];
    zoneManager2 = [(HMDCameraProfileSettingsManager *)v22 zoneManager];
    localZone2 = [zoneManager2 localZone];
    v29 = [MEMORY[0x277CBEB98] setWithObject:currentSettingsModel];
    v30 = [localZone2 addModels:v29 options:v26];
    v31 = [(HMDCameraProfileSettingsManager *)v22 _localZoneUpdateCompletionForMessage:messageCopy];
    v32 = [v30 addCompletionBlock:v31];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      v41 = 138543874;
      v42 = v40;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = messageCopy;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Invalid parameter: %@ for message: %@", &v41, 0x20u);
    }

    objc_autoreleasePoolPop(v37);
    currentSettingsModel = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:currentSettingsModel];
  }

LABEL_20:
}

- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing remote request to synchronize cloud storage with recording access modes", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
  [quotaCoordinator synchronizeCloudStorageWithRecordingAccessModes];
}

- (void)_handleUpdateAccessModeMessage:(id)message
{
  v80 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [messageCopy numberForKey:*MEMORY[0x277CCF638]];
  v11 = [messageCopy numberForKey:*MEMORY[0x277CCF658]];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v75 = v17;
      v76 = 2112;
      v77 = messagePayload;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot find required parameters in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 20;
    goto LABEL_24;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  unsignedIntegerValue2 = [v12 unsignedIntegerValue];
  v23 = unsignedIntegerValue2;
  if ((unsignedIntegerValue2 - 3) >= 2)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v75 = v34;
      v76 = 2048;
      v77 = v23;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Invalid presence type enum value received: %ld", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if (unsignedIntegerValue >= 4)
  {
    v31 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v75 = v37;
      v76 = 2048;
      v77 = unsignedIntegerValue;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid access mode enum value received: %ld", buf, 0x16u);
    }

LABEL_23:
    objc_autoreleasePoolPop(v31);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 3;
LABEL_24:
    primaryResident = [v19 hmErrorWithCode:v20];
    [messageCopy respondWithError:primaryResident];
    goto LABEL_25;
  }

  if (HMIsRecordingAllowedForCameraAccessMode() && ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMCameraAccessModeAsString();
      [(HMDCameraProfileSettingsManager *)v25 supportedFeatures];
      v29 = HMCameraSupportedFeaturesAsString();
      *buf = 138543874;
      v75 = v27;
      v76 = 2112;
      v77 = v28;
      v78 = 2112;
      v79 = v29;
      v30 = "%{public}@Requested access mode %@ enables recording but supported features do not include recording: %@";
LABEL_30:
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, v30, buf, 0x20u);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (HMIsStreamingAllowedForCameraAccessMode() && ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMCameraAccessModeAsString();
      [(HMDCameraProfileSettingsManager *)v25 supportedFeatures];
      v29 = HMCameraSupportedFeaturesAsString();
      *buf = 138543874;
      v75 = v27;
      v76 = 2112;
      v77 = v28;
      v78 = 2112;
      v79 = v29;
      v30 = "%{public}@Requested access mode %@ enables streaming but supported features do not include streaming: %@";
      goto LABEL_30;
    }

LABEL_31:

    objc_autoreleasePoolPop(v24);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 48;
    goto LABEL_24;
  }

  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  primaryResident = [home primaryResident];

  if (primaryResident)
  {
    if ([primaryResident isCurrentDevice])
    {
      zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
      localZone = [zoneManager localZone];

      if (localZone)
      {
        quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_83;
        v68[3] = &unk_2797358C8;
        v68[4] = selfCopy;
        v69 = messageCopy;
        [quotaCoordinator updateCloudStorageAndSettingsWithAccessMode:unsignedIntegerValue forCameraHomePresence:v23 completion:v68];
      }

      else
      {
        v60 = objc_autoreleasePoolPush();
        v61 = selfCopy;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          *buf = 138543362;
          v75 = v63;
          _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Local zone not ready", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v60);
        v64 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [messageCopy respondWithError:v64];
      }
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        [primaryResident shortDescription];
        v53 = v66 = v49;
        *buf = 138543618;
        v75 = v52;
        v76 = 2112;
        v77 = v53;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Forwarding update access mode message to primary resident: %@", buf, 0x16u);

        v49 = v66;
      }

      objc_autoreleasePoolPop(v49);
      v54 = [messageCopy mutableCopy];
      [v54 setRemote:1];
      [v54 setSecureRemote:1];
      v55 = [HMDRemoteDeviceMessageDestination alloc];
      destination = [messageCopy destination];
      [destination target];
      v56 = v67 = v50;
      device = [primaryResident device];
      v58 = [(HMDRemoteDeviceMessageDestination *)v55 initWithTarget:v56 device:device];
      [v54 setDestination:v58];

      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke;
      v70[3] = &unk_279731568;
      v70[4] = v67;
      v71 = messageCopy;
      v72 = unsignedIntegerValue;
      v73 = v23;
      [v54 setResponseHandler:v70];
      msgDispatcher = [(HMDCameraProfileSettingsManager *)v67 msgDispatcher];
      [msgDispatcher sendMessage:v54];
    }
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v47;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Cannot find primary resident to forward update access mode message to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
    [messageCopy respondWithError:v48];

    primaryResident = 0;
  }

LABEL_25:
}

void __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Forwarded update access mode message failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    v11 = [*(a1 + 32) workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_80;
    v13[3] = &unk_279731540;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v14 = v12;
    dispatch_async(v11, v13);
  }
}

void __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_83(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) shortDescription];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings for message %@: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) shortDescription];
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updated settings for message: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }
}

void __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_80(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Forwarded update access mode message succeeded. Updating local database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) quotaCoordinator];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_81;
  v9[3] = &unk_2797359D8;
  v10 = *(a1 + 40);
  [v6 updateCloudStorageAndSettingsWithAccessMode:v7 forCameraHomePresence:v8 completion:v9];
}

uint64_t __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)synchronizeSettingsToCameraWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraProfileSettingsManager_synchronizeSettingsToCameraWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (BOOL)isRecordingEnabled
{
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  [currentSettingsModel accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v4 = 1;
  }

  else
  {
    currentSettingsModel2 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
    [currentSettingsModel2 accessModeNotAtHome];
    v4 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v4;
}

- (NSString)zoneName
{
  zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
  zoneName = [zoneManager zoneName];

  return zoneName;
}

- (void)synchronizeCloudStorageWithRecordingAccessModes
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  primaryResident = [home primaryResident];

  if (primaryResident)
  {
    isCurrentDevice = [primaryResident isCurrentDevice];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (isCurrentDevice)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Locally synchronizing cloud storage with recording access modes because we are the primary resident", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
      [quotaCoordinator synchronizeCloudStorageWithRecordingAccessModes];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        shortDescription = [primaryResident shortDescription];
        v26 = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = shortDescription;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Forwarding request to synchronize cloud storage with recording access modes to primary resident: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v20 = [HMDRemoteDeviceMessageDestination alloc];
      messageTargetUUID = [(HMDCameraProfileSettingsManager *)selfCopy messageTargetUUID];
      device = [primaryResident device];
      v23 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:messageTargetUUID device:device];

      v24 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" destination:v23 payload:0 type:3 timeout:1 secure:0.0];
      msgDispatcher = [(HMDCameraProfileSettingsManager *)selfCopy msgDispatcher];
      [msgDispatcher sendMessage:v24];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot find primary resident to synchronize cloud storage with recording access modes", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)disableRecordingAccessModes
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  quotaCoordinator = [(HMDCameraProfileSettingsManager *)self quotaCoordinator];
  [quotaCoordinator disableRecordingAccessModes];
}

- (unint64_t)supportedFeatures
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  services = [hapAccessory services];

  obj = services;
  v4 = [services countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v35;
    v8 = *MEMORY[0x277CD0E00];
    v9 = *MEMORY[0x277CD0E08];
    v32 = *MEMORY[0x277CD0DF8];
    v30 = *MEMORY[0x277CCF798];
    v29 = *MEMORY[0x277CCF990];
    v28 = *MEMORY[0x277CCF898];
    v10 = *MEMORY[0x277CCF748];
    v31 = *MEMORY[0x277CCFA00];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = objc_msgSend_serviceType(v12, v28);
        v14 = [v13 isEqualToString:v8];

        if (v14)
        {
          v15 = [v12 findCharacteristicWithType:v10];

          v6 |= v15 != 0;
          continue;
        }

        v16 = objc_msgSend_serviceType(v12);
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          v18 = [v12 findCharacteristicWithType:v10];

          v19 = 6;
          if (!v18)
          {
            v19 = 2;
          }

          v20 = v19 | v6;
          v21 = [v12 findCharacteristicWithType:v31];

          v22 = v20 | 0x40;
        }

        else
        {
          v23 = objc_msgSend_serviceType(v12);
          v24 = [v23 isEqualToString:v32];

          if (!v24)
          {
            continue;
          }

          v25 = [v12 findCharacteristicWithType:v30];

          if (v25)
          {
            v20 = v6 | 0x10;
          }

          else
          {
            v20 = v6;
          }

          v26 = [v12 findCharacteristicWithType:v29];

          if (v26)
          {
            v20 |= 8uLL;
          }

          v21 = [v12 findCharacteristicWithType:v28];

          v22 = v20 | 0x20;
        }

        if (v21)
        {
          v6 = v22;
        }

        else
        {
          v6 = v20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v5)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 0;
LABEL_26:

  return v6;
}

- (HMDCameraProfileSettingsModel)defaultSettingsModel
{
  _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
  [_settingsModelForUpdate setVersion:1];
  [_settingsModelForUpdate setAccessModeAtHome:1];
  [_settingsModelForUpdate setAccessModeNotAtHome:1];
  [_settingsModelForUpdate setRecordingEventTriggers:14];
  doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (doorbellInputEventCharacteristic)
  {
    [_settingsModelForUpdate setRecordingEventTriggers:{objc_msgSend(_settingsModelForUpdate, "recordingEventTriggers") | 0x10}];
  }

  return _settingsModelForUpdate;
}

- (id)currentSettingsModel
{
  v22 = *MEMORY[0x277D85DE8];
  zoneManager = [(HMDCameraProfileSettingsManager *)self zoneManager];
  localZone = [zoneManager localZone];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  v17 = 0;
  defaultSettingsModel = [localZone fetchModelWithModelID:uniqueIdentifier ofType:objc_opt_class() error:&v17];
  v7 = v17;

  if (!defaultSettingsModel)
  {
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error fetching currentSettings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting unavailable, using default values", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    defaultSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy2 defaultSettingsModel];
  }

  [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesOnSettingsModel:defaultSettingsModel];

  return defaultSettingsModel;
}

- (id)currentNotificationSettings
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  cameraProfileNotificationSettings = [hapAccessory cameraProfileNotificationSettings];
  v4 = cameraProfileNotificationSettings;
  if (cameraProfileNotificationSettings)
  {
    v5 = cameraProfileNotificationSettings;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CD1958]);
  }

  v6 = v5;

  return v6;
}

- (_HMCameraUserSettings)currentSettings
{
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  v4 = [(HMDCameraProfileSettingsManager *)self _settingsFromSettingsModel:currentSettingsModel];

  return v4;
}

- (void)remove
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Deleting camera settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  localZone = [zoneManager localZone];
  v10 = MEMORY[0x277CBEB98];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)selfCopy uniqueIdentifier];
  v19[0] = uniqueIdentifier;
  derivedPropertiesModelID = [(HMDCameraProfileSettingsManager *)selfCopy derivedPropertiesModelID];
  v19[1] = derivedPropertiesModelID;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v14 = [v10 setWithArray:v13];
  v15 = [MEMORY[0x277D17108] optionsWithLabel:@"Delete Camera Settings"];
  v16 = [localZone removeModelIDs:v14 options:v15];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__HMDCameraProfileSettingsManager_remove__block_invoke;
  v18[3] = &unk_2797359D8;
  v18[4] = selfCopy;
  v17 = [v16 addFailureBlock:v18];
}

void __41__HMDCameraProfileSettingsManager_remove__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete camera settings: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  cameraProfiles = [hapAccessory cameraProfiles];
  anyObject = [cameraProfiles anyObject];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    logIdentifier = [anyObject logIdentifier];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = logIdentifier;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting settings manager for camera profile %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  [zoneManager start];
}

- (void)configureWithMessageDispatcher:(id)dispatcher adminMessageDispatcher:(id)messageDispatcher deviceIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  v73 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageDispatcherCopy = messageDispatcher;
  v58 = dispatcherCopy;
  [(HMDCameraProfileSettingsManager *)self setMsgDispatcher:dispatcherCopy];
  v61 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v60 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v59 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v59 setRoles:4];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    [(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident];
    v14 = HMFBooleanToString();
    *buf = 138543874;
    v68 = v12;
    v69 = 2112;
    v70 = v13;
    v71 = 2112;
    v72 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Configured with deviceIsResidentCapable=%@ and isCurrentDevicePrimaryResident=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  [hapAccessory home];
  v16 = v57 = capableCopy;
  v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:4 remoteAccessRequired:0];
  v66[0] = v61;
  v66[1] = v60;
  v66[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
  v65[0] = v61;
  v65[1] = v60;
  v65[2] = v17;
  v65[3] = v59;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
  [dispatcherCopy registerForMessage:*MEMORY[0x277CCF678] receiver:selfCopy policies:v19 selector:sel__handleUpdateAccessModeMessage_];

  [messageDispatcherCopy registerForMessage:*MEMORY[0x277CCF698] receiver:selfCopy policies:v18 selector:sel__handleUpdateRecordingTriggerEventsMessage_];
  [messageDispatcherCopy registerForMessage:*MEMORY[0x277CCF680] receiver:selfCopy policies:v18 selector:sel__handleUpdateActivityZonesMessage_];

  v20 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:3 remoteAccessRequired:0];
  v64[0] = v20;
  v64[1] = v59;
  v21 = hapAccessory;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  [v58 registerForMessage:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" receiver:selfCopy policies:v22 selector:sel__handleSynchronizeCloudStorageWithRecordingAccessModesMessage_];

  v63[0] = v61;
  v63[1] = v60;
  v23 = v16;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  [v58 registerForMessage:*MEMORY[0x277CD20D0] receiver:selfCopy policies:v24 selector:sel__handleBulletinBoardNotificationCommitMessage_];
  [v58 registerForMessage:*MEMORY[0x277CCF670] receiver:selfCopy policies:v24 selector:sel__handleUpdateAccessModeChangeNotificationEnabledMessage_];
  [v58 registerForMessage:*MEMORY[0x277CCF690] receiver:selfCopy policies:v24 selector:sel__handleUpdateReachabilityEventNotificationEnabledMessage_];

  notificationCenter = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy];

  notificationCenter2 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
  currentUser = [v16 currentUser];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:currentUser];

  notificationCenter3 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:hapAccessory];

  if (v57)
  {
    notificationCenter4 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    residentDeviceManager = [v16 residentDeviceManager];
    [notificationCenter4 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

    notificationCenter5 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter5 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

    notificationCenter6 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    presenceMonitor = [v16 presenceMonitor];
    [notificationCenter6 addObserver:selfCopy selector:sel_handleHomePresenceEvaluatedNotification_ name:@"HMDHomePresenceEvaluatedNotification" object:presenceMonitor];

    notificationCenter7 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter7 addObserver:selfCopy selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:hapAccessory];

    notificationCenter8 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter8 addObserver:selfCopy selector:sel_handleRecordingManagementServiceDidUpdateNotification_ name:@"HMDRecordingManagementServiceDidUpdateNotification" object:hapAccessory];

    notificationCenter9 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter9 addObserver:selfCopy selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:hapAccessory];

    if ([hapAccessory isReachable])
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:1];
    }

    presenceMonitor2 = [v16 presenceMonitor];
    currentHomePresence = [presenceMonitor2 currentHomePresence];

    if (currentHomePresence)
    {
      v39 = [(HMDCameraProfileSettingsManager *)selfCopy _isAnyUserAtHomeForPresence:currentHomePresence];
      [(HMDCameraProfileSettingsManager *)selfCopy setAnyUserAtHome:v39];

      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)v41 isAnyUserAtHome];
        *buf = 138543618;
        v68 = v43;
        v69 = 2112;
        v70 = isAnyUserAtHome;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Initial isAnyUserAtHome is %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v68 = v48;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Current home presence is unavailable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      [(HMDCameraProfileSettingsManager *)v46 setAnyUserAtHome:0];
    }
  }

  zoneManager = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  v51 = [defaultConfiguration mutableCopy];

  [v51 setZoneOwner:{objc_msgSend(v23, "isOwnerUser")}];
  [v51 setExternalRecordTypesForSubscriptions:0];
  v52 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v52 setShouldRebuildOnManateeKeyLoss:1];
  [v51 setCloudZoneConfiguration:v52];
  zoneManager2 = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  [zoneManager2 setDefaultConfiguration:v51];

  zoneManager3 = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  [zoneManager3 setDataSource:selfCopy];

  zoneManager4 = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  [zoneManager4 setDelegate:selfCopy];

  zoneManager5 = [(HMDCameraProfileSettingsManager *)selfCopy zoneManager];
  [zoneManager5 configure];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating camera profile settings manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:0];
  v7.receiver = selfCopy;
  v7.super_class = HMDCameraProfileSettingsManager;
  [(HMDCameraProfileSettingsManager *)&v7 dealloc];
}

- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)accessory home:(id)home workQueue:(id)queue
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAD78];
  queueCopy = queue;
  homeCopy = home;
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  v30[0] = @"HMDCameraProfileSettingsUUIDSalt";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v13 = [v7 hm_deriveUUIDFromBaseUUID:uuid withSalts:v12];

  v14 = [HMDDatabaseZoneManager alloc];
  v15 = +[HMDDatabase defaultDatabase];
  v16 = [HMDCameraProfileSettingsManager zoneNameForHome:homeCopy];
  v17 = [(HMDDatabaseZoneManager *)v14 initWithDatabase:v15 zoneName:v16 home:homeCopy messageTargetUUID:v13 workQueue:queueCopy];

  v18 = objc_alloc_init(HMDFeaturesDataSource);
  v19 = [[HMDCameraProfileSettingsQuotaCoordinator alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];
  v28 = *MEMORY[0x277CD0EC0];
  v20 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF978]];
  v29 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v22 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v21];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v24 = +[HMDBulletinBoard sharedBulletinBoard];
  v27 = [(HMDCameraProfileSettingsManager *)self initWithUniqueIdentifier:v13 hapAccessory:accessoryCopy workQueue:queueCopy zoneManager:v17 notificationCenter:defaultCenter bulletinBoard:v24 characteristicsAvailabilityListener:v22 quotaCoordinator:v19 featuresDataSource:v18];

  return v27;
}

- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)identifier hapAccessory:(id)accessory workQueue:(id)queue zoneManager:(id)manager notificationCenter:(id)center bulletinBoard:(id)board characteristicsAvailabilityListener:(id)listener quotaCoordinator:(id)self0 featuresDataSource:(id)self1
{
  identifierCopy = identifier;
  obj = accessory;
  queueCopy = queue;
  managerCopy = manager;
  centerCopy = center;
  boardCopy = board;
  listenerCopy = listener;
  coordinatorCopy = coordinator;
  sourceCopy = source;
  v35.receiver = self;
  v35.super_class = HMDCameraProfileSettingsManager;
  v19 = [(HMDCameraProfileSettingsManager *)&v35 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueIdentifier, identifier);
    objc_storeWeak(&v20->_hapAccessory, obj);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_zoneManager, manager);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_bulletinBoard, board);
    objc_storeStrong(&v20->_quotaCoordinator, coordinator);
    objc_storeStrong(&v20->_characteristicsAvailabilityListener, listener);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v21 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifierCopy = [v21 stringWithFormat:@"%@.HMDCameraProfileSettingsManager.%@", @"com.apple.HomeKitDaemon.Local", uUIDString, coordinatorCopy, listenerCopy, boardCopy, centerCopy, managerCopy, queueCopy, identifierCopy];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = identifierCopy;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t148_171000 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t148_171000, &__block_literal_global_171001);
  }

  v3 = logCategory__hmf_once_v149_171002;

  return v3;
}

uint64_t __46__HMDCameraProfileSettingsManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v149_171002;
  logCategory__hmf_once_v149_171002 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)zoneNameForHome:(id)home
{
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v5 = [@"accessory-profile-data-" stringByAppendingString:uUIDString];

  return v5;
}

@end