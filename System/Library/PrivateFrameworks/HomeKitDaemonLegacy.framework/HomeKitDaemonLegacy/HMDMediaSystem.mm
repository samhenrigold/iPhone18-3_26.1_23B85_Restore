@interface HMDMediaSystem
+ (id)destinationIdentifierForComponentRoleType:(unint64_t)type components:(id)components;
+ (id)initializeDataWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName components:(id)components;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)sortMediaComponents:(id)components;
+ (void)_configureMediaSystemComponents:(id)components mediaSystem:(id)system;
- (BOOL)_otherAccessoryUsesVersionBasedMigrationOwner;
- (BOOL)componentsSupportsHomeLevelLocationServiceSetting;
- (BOOL)isCurrentComponent;
- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller;
- (BOOL)isValid;
- (BOOL)supportsUserMediaSettings;
- (HMDAppleMediaAccessory)targetAccessory;
- (HMDApplicationData)appData;
- (HMDBackingStore)backingStore;
- (HMDHome)home;
- (HMDMediaSession)mediaSession;
- (HMDMediaSystem)initWithCoder:(id)coder;
- (HMDMediaSystem)initWithMediaSystemData:(id)data home:(id)home;
- (HMDMediaSystem)initWithMediaSystemModel:(id)model home:(id)home;
- (HMDMediaSystem)initWithUUID:(id)d configuredName:(id)name home:(id)home data:(id)data components:(id)components;
- (HMDMediaSystem)initWithUUID:(id)d configuredName:(id)name home:(id)home data:(id)data components:(id)components settingsControllerCreator:(id)creator;
- (HMDMediaSystemDataSource)dataSource;
- (HMDRoom)room;
- (HMFActivity)setupActivity;
- (HMMediaDestination)audioDestination;
- (NSArray)accessories;
- (NSArray)associatedAudioDestinationManagers;
- (NSArray)components;
- (NSString)configuredName;
- (NSString)name;
- (double)setupStartTimestamp;
- (id)_modelForMediaSystem;
- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller;
- (id)assistantObject;
- (id)attributeDescriptions;
- (id)audioDestinationIdentifier;
- (id)backingStoreObjectsForVersion:(int64_t)version;
- (id)createNewAudioDestination;
- (id)destinationControllerGroupedWithAssociatedDestination;
- (id)generateComponents;
- (id)legacyAudioDestination;
- (id)legacyComponents;
- (id)legacyConfiguredName;
- (id)legacyName;
- (id)logIdentifier;
- (id)mediaDestinationsManager:(id)manager destinationControllerWithIdentifier:(id)identifier;
- (id)mediaGroupsAggregatorMessengerForMediaDestinationsManager:(id)manager;
- (id)messageDestination;
- (id)modelForMediaSystem;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d;
- (id)modelsToMigrateSettingsForController:(id)controller;
- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target;
- (id)serialize;
- (id)supportedMultiUserLanguageCodesForAccessorySettingsController:(id)controller;
- (id)targetAccessoryBySerial;
- (id)urlString;
- (void)_appDataRemoved:(id)removed message:(id)message;
- (void)_appDataUpdated:(id)updated message:(id)message;
- (void)_handleAppData:(id)data;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_routeUpdateMediaSystem:(id)system;
- (void)_transactionMediaSystemUpdated:(id)updated message:(id)message;
- (void)_updateAppData:(id)data;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model;
- (void)auditMediaComponents;
- (void)configureAudioDestinationsManager;
- (void)configureMediaSystemComponents:(id)components;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessorySoftwareUpdated:(id)updated;
- (void)handleHomeCloudZoneReadyNotification:(id)notification;
- (void)mediaDestinationsManager:(id)manager didUpdateDestination:(id)destination;
- (void)mergeAudioDestination:(id)destination;
- (void)mergeMediaSystemData:(id)data;
- (void)reevaluateSettingOwner;
- (void)relayMessage:(id)message;
- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion;
- (void)repairAnyPreExistingAudioGroups;
- (void)setAppData:(id)data;
- (void)setComponents:(id)components;
- (void)setConfiguredName:(id)name;
- (void)setMediaSession:(id)session;
- (void)setName:(id)name;
- (void)setSetupActivity:(id)activity;
- (void)setSetupStartTimestamp:(double)timestamp;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigureMediaSystemComponents;
- (void)unconfigureMediaSystemComponents:(id)components;
@end

@implementation HMDMediaSystem

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDMediaSystemDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)componentsSupportsHomeLevelLocationServiceSetting
{
  v16 = *MEMORY[0x277D85DE8];
  accessories = [(HMDMediaSystem *)self accessories];
  v4 = [accessories na_map:&__block_literal_global_112_97815];
  v5 = [v4 count];
  if (v5 == [accessories count])
  {
    v6 = [v4 na_all:&__block_literal_global_116_97817];
  }

  else
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
      v15 = accessories;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine supports home level location services setting for all components: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

void *__67__HMDMediaSystem_componentsSupportsHomeLevelLocationServiceSetting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  components = [(HMDMediaSystem *)self components];
  v6 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(components);
        }

        accessory = [*(*(&v18 + 1) + 8 * i) accessory];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = accessory;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          [array addObject:v12];
        }
      }

      v7 = [components countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  home = [(HMDMediaSystem *)self home];
  currentUser = [home currentUser];
  assistantAccessControl = [currentUser assistantAccessControl];
  v16 = [assistantAccessControl assistantAccessControlModelWithRemovedAccessories:array];

  return v16;
}

- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target
{
  targetCopy = target;
  targetAccessory = [(HMDMediaSystem *)self targetAccessory];
  device = [targetAccessory device];

  if (device)
  {
    v8 = [HMDRemoteDeviceMessageDestination alloc];
    device2 = [targetAccessory device];
    device = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:targetCopy device:device2];
  }

  return device;
}

- (id)supportedMultiUserLanguageCodesForAccessorySettingsController:(id)controller
{
  targetAccessory = [(HMDMediaSystem *)self targetAccessory];
  supportedMultiUserLanguageCodes = [targetAccessory supportedMultiUserLanguageCodes];

  return supportedMultiUserLanguageCodes;
}

- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller
{
  home = [(HMDMediaSystem *)self home];
  isMultiUserEnabled = [home isMultiUserEnabled];

  return isMultiUserEnabled;
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason
{
  reasonCopy = reason;
  home = [(HMDMediaSystem *)self home];
  homeManager = [home homeManager];

  v7 = [[HMDHomeSaveRequest alloc] initWithReason:reasonCopy information:0 saveOptions:0];
  [homeManager saveWithRequest:v7];
  uuid = [(HMDMediaSystem *)self uuid];
  [homeManager updateGenerationCounterWithReason:reasonCopy sourceUUID:uuid shouldNotifyClients:1];
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model
{
  reasonCopy = reason;
  home = [(HMDMediaSystem *)self home];
  [home saveWithReason:reasonCopy postSyncNotification:0 objectChange:model != 0];
}

- (id)modelsToMigrateSettingsForController:(id)controller
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v35 = objc_alloc_init(HMDAccessorySettingsMetadata);
  if (v35)
  {
    v32 = controllerCopy;
    settingsController = [(HMDMediaSystem *)self settingsController];
    rootGroup = [settingsController rootGroup];
    copyIdentical = [rootGroup copyIdentical];

    settingsController2 = [(HMDMediaSystem *)self settingsController];
    rootGroup2 = [settingsController2 rootGroup];
    copyIdentical2 = [rootGroup2 copyIdentical];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(HMDMediaSystem *)self components];
    v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      selfCopy = self;
      v12 = *v37;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(obj);
          }

          accessory = [*(*(&v36 + 1) + 8 * i) accessory];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = accessory;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          settingsController3 = [v17 settingsController];
          rootGroup3 = [settingsController3 rootGroup];
          copyReplica = [rootGroup3 copyReplica];

          if (copyIdentical2)
          {
            if (copyReplica)
            {
              rootGroup4 = [(HMDAccessorySettingsMetadata *)v35 rootGroup];
              [copyIdentical2 intersectSettingGroup:copyReplica groupMetadata:rootGroup4 shouldAddMissingItems:v13 & 1];

              v13 = 0;
              rootGroup5 = copyReplica;
            }

            else
            {
              rootGroup5 = 0;
            }
          }

          else
          {
            uuid = [(HMDMediaSystem *)selfCopy uuid];
            [copyReplica setParentIdentifier:uuid];

            rootGroup5 = [(HMDAccessorySettingsMetadata *)v35 rootGroup];
            [copyReplica intersectSettingGroup:copyReplica groupMetadata:rootGroup5 shouldAddMissingItems:0];
            v13 = 0;
            copyIdentical2 = copyReplica;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v11);
    }

    if (copyIdentical2)
    {
      v24 = copyIdentical;
      controllerCopy = v32;
      if (copyIdentical && ([copyIdentical compareSettingsTree:copyIdentical2] & 1) != 0)
      {
        v25 = 0;
      }

      else
      {
        v25 = [HMDAccessorySettingTransform modelsForGroupDiff:copyIdentical fromGroup:copyIdentical2];
      }
    }

    else
    {
      v25 = 0;
      v24 = copyIdentical;
      controllerCopy = v32;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot load settings metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v25 = 0;
  }

  return v25;
}

- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d
{
  v52 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  v41 = objc_alloc_init(HMDAccessorySettingsMetadata);
  if (v41)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(HMDMediaSystem *)self components];
    v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v8)
    {
      v32 = 0;
      copyReplica2 = obj;
      goto LABEL_26;
    }

    v9 = v8;
    v38 = dCopy;
    v39 = controllerCopy;
    copyReplica2 = 0;
    v42 = *v44;
    v11 = obj;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(v11);
        }

        accessory = [*(*(&v43 + 1) + 8 * i) accessory];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = accessory;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (copyReplica2)
        {
          settingsController = [v15 settingsController];
          rootGroup = [settingsController rootGroup];
          copyReplica = [rootGroup copyReplica];

          if (copyReplica)
          {
            v19 = objc_autoreleasePoolPush();
            selfCopy = self;
            selfCopy2 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v23;
              v49 = 2112;
              v50 = v15;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Merging root group of %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            rootGroup2 = [(HMDAccessorySettingsMetadata *)v41 rootGroup];
            [copyReplica2 intersectSettingGroup:copyReplica groupMetadata:rootGroup2 shouldAddMissingItems:0];

            self = selfCopy;
            v11 = obj;
          }
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v28;
            v49 = 2112;
            v50 = v15;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Took first group from %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
          settingsController2 = [v15 settingsController];
          rootGroup3 = [settingsController2 rootGroup];
          copyReplica2 = [rootGroup3 copyReplica];

          uuid = [(HMDMediaSystem *)selfCopy3 uuid];
          [copyReplica2 setParentIdentifier:uuid];

          copyReplica = [(HMDAccessorySettingsMetadata *)v41 rootGroup];
          [copyReplica2 intersectSettingGroup:copyReplica2 groupMetadata:copyReplica shouldAddMissingItems:0];
        }
      }

      v9 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v9);

    controllerCopy = v39;
    if (copyReplica2)
    {
      v32 = [HMDAccessorySettingTransform modelsForGroup:copyReplica2];
      dCopy = v38;
LABEL_26:

      goto LABEL_28;
    }

    v32 = 0;
    dCopy = v38;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot load settings metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

LABEL_28:

  return v32;
}

- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Remove managed configuration profile not supported", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  completionCopy[2](completionCopy, v12);
}

- (double)setupStartTimestamp
{
  home = [(HMDMediaSystem *)self home];
  homeManager = [home homeManager];
  [homeManager setupStartTimestamp];
  v5 = v4;

  return v5;
}

- (void)setSetupStartTimestamp:(double)timestamp
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDMediaSystem *)selfCopy home];
  homeManager = [home homeManager];
  [homeManager setSetupStartTimestamp:timestamp];
}

- (HMFActivity)setupActivity
{
  home = [(HMDMediaSystem *)self home];
  homeManager = [home homeManager];
  setupActivity = [homeManager setupActivity];

  return setupActivity;
}

- (void)setSetupActivity:(id)activity
{
  activityCopy = activity;
  home = [(HMDMediaSystem *)self home];
  homeManager = [home homeManager];
  [homeManager setSetupActivity:activityCopy];
}

- (HMDBackingStore)backingStore
{
  home = [(HMDMediaSystem *)self home];
  backingStore = [home backingStore];

  return backingStore;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v31 = *MEMORY[0x277D85DE8];
  modelForMediaSystem = [(HMDMediaSystem *)self modelForMediaSystem];
  v6 = modelForMediaSystem;
  if (modelForMediaSystem)
  {
    [modelForMediaSystem setObjectChangeType:type];
    configuredName = [(HMDMediaSystem *)self configuredName];
    [v6 setConfiguredName:configuredName];

    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    components = [(HMDMediaSystem *)self components];
    v10 = [components countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(components);
          }

          serialize = [*(*(&v22 + 1) + 8 * i) serialize];
          [array addObject:serialize];
        }

        v11 = [components countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [v6 setMediaSystemComponents:array];
    v15 = v6;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive media system model with change type: %@ due to no provided model for media system", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  return v6;
}

- (id)backingStoreObjectsForVersion:(int64_t)version
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = [(HMDMediaSystem *)self modelObjectWithChangeType:1];
  if (v5)
  {
    [array addObject:v5];
  }

  settingsController = [(HMDMediaSystem *)self settingsController];
  v7 = settingsController;
  if (settingsController)
  {
    modelObjectsForSettings = [settingsController modelObjectsForSettings];
    [array addObjectsFromArray:modelObjectsForSettings];
  }

  v9 = objc_msgSend_copy(array);

  return v9;
}

- (void)mergeMediaSystemData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  data = [(HMDMediaSystem *)self data];
  v6 = [data isEqual:dataCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = dataCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging media system data: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMediaSystem *)selfCopy setData:dataCopy];
  }
}

- (void)mergeAudioDestination:(id)destination
{
  destinationCopy = destination;
  audioDestinationsManager = [(HMDMediaSystem *)self audioDestinationsManager];
  [audioDestinationsManager mergeDestination:destinationCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  home = [(HMDMediaSystem *)self home];
  name = [(HMDMediaSystem *)self name];
  [coderCopy encodeObject:name forKey:*MEMORY[0x277CD2458]];

  configuredName = [(HMDMediaSystem *)self configuredName];
  [coderCopy encodeObject:configuredName forKey:*MEMORY[0x277CD2440]];

  uuid = [(HMDMediaSystem *)self uuid];
  [coderCopy encodeObject:uuid forKey:*MEMORY[0x277CD2470]];

  components = [(HMDMediaSystem *)self components];
  [coderCopy encodeObject:components forKey:*MEMORY[0x277CD2438]];

  if ([coderCopy hmd_isForLocalStore])
  {
    data = [(HMDMediaSystem *)self data];
    codingKey = [MEMORY[0x277CD1C08] codingKey];
    [coderCopy encodeObject:data forKey:codingKey];
  }

  if (![coderCopy hmd_isForXPCTransport] || objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    audioDestination = [(HMDMediaSystem *)self audioDestination];
    [coderCopy encodeObject:audioDestination forKey:*MEMORY[0x277CD09B8]];
  }

  [coderCopy encodeConditionalObject:home forKey:@"home"];
  if (([coderCopy hmd_homeManagerOptions] & 0x20) != 0 && ((objc_msgSend(coderCopy, "hmd_isForRemoteTransport") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForXPCTransport") && (objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForLocalStore")))
  {
    settingsController = [(HMDMediaSystem *)self settingsController];
    [settingsController encodeWithCoder:coderCopy];
  }

  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  appData = [(HMDMediaSystem *)self appData];
  v15 = appData;
  if (hmd_isForXPCTransport)
  {
    [appData encodeForXPCTransportWithCoder:coderCopy key:@"HM.appData"];
  }

  else
  {
    [coderCopy encodeObject:appData forKey:@"HM.appDataRepository"];
  }
}

- (HMDMediaSystem)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2470]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2440]];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v8 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:*MEMORY[0x277CD2438]];

  v12 = objc_opt_class();
  codingKey = [MEMORY[0x277CD1C08] codingKey];
  v14 = [coderCopy decodeObjectOfClass:v12 forKey:codingKey];

  v15 = [(HMDMediaSystem *)self initWithUUID:v5 configuredName:v6 home:v7 data:v14 components:v11];
  if (v15)
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2458]];
    hm_truncatedNameString = [v16 hm_truncatedNameString];
    name = v15->_name;
    v15->_name = hm_truncatedNameString;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v15->_appData;
    v15->_appData = v19;

    [(HMDApplicationData *)v15->_appData updateParentUUIDIfNil:v15->_uuid];
    [(HMDAccessorySettingsController *)v15->_settingsController decodeWithCoder:coderCopy];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD09B8]];
    audioDestination = v15->_audioDestination;
    v15->_audioDestination = v21;
  }

  return v15;
}

- (void)_appDataRemoved:(id)removed message:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling removal of app data", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaSystem *)selfCopy setAppData:0];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = removedCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDMediaSystem *)self _appDataRemoved:v9 message:messageCopy];
    v10 = removedCopy;
  }

  else
  {
    v10 = removedCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      settingsController = [(HMDMediaSystem *)self settingsController];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __51__HMDMediaSystem_transactionObjectRemoved_message___block_invoke;
      v19[3] = &unk_2797359D8;
      v19[4] = self;
      [settingsController handleRemovedGroupModel:v12 completion:v19];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = objc_opt_class();
        v18 = v25;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v10];
    }
  }
}

void __51__HMDMediaSystem_transactionObjectRemoved_message___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error removing root group.", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_appDataUpdated:(id)updated message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  appData = [(HMDMediaSystem *)self appData];

  if (appData)
  {
    appData2 = [(HMDMediaSystem *)self appData];
    [appData2 updateWithModel:updatedCopy];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    appDataDictionary = [updatedCopy appDataDictionary];
    uuid = [(HMDMediaSystem *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDMediaSystem *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      appDataDictionary2 = [updatedCopy appDataDictionary];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = appDataDictionary2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)_transactionMediaSystemUpdated:(id)updated message:(id)message
{
  v61 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Applying the changes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Skipping transaction update due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    setProperties = [updatedCopy setProperties];
    v17 = [setProperties containsObject:@"configuredName"];

    if (v17)
    {
      configuredName = [updatedCopy configuredName];
      [(HMDMediaSystem *)selfCopy setConfiguredName:configuredName];
    }

    setProperties2 = [updatedCopy setProperties];
    v20 = [setProperties2 containsObject:@"mediaSystemComponents"];

    if (v20)
    {
      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v47 = updatedCopy;
      mediaSystemComponents = [updatedCopy mediaSystemComponents];
      v23 = [mediaSystemComponents countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(mediaSystemComponents);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            home = [(HMDMediaSystem *)selfCopy home];
            v29 = [HMDMediaSystemComponent mediaSystemComponentWithDictionary:v27 home:home];

            if (!v29)
            {
              v42 = objc_autoreleasePoolPush();
              v43 = selfCopy;
              v44 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v45 = HMFGetLogIdentifier();
                *buf = 138543618;
                v55 = v45;
                v56 = 2112;
                v57 = v27;
                _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize a mediaSystemComponent from %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v42);
              v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
              [messageCopy respondWithError:v46];

              updatedCopy = v47;
              goto LABEL_26;
            }

            [array addObject:v29];
          }

          v24 = [mediaSystemComponents countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v55 = v33;
        v56 = 2112;
        v57 = v31;
        v58 = 2112;
        v59 = array;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Updated the media system %@ components to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = objc_msgSend_copy(array);
      [(HMDMediaSystem *)v31 setComponents:v34];

      [(HMDMediaSystem *)v31 reevaluateSettingOwner];
      updatedCopy = v47;
    }

    v52 = *MEMORY[0x277CD2418];
    serialize = [(HMDMediaSystem *)selfCopy serialize];
    v53 = serialize;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [messageCopy respondWithPayload:v36];

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];
    [transactionResult markSaveToAssistant];
    serialize2 = [(HMDMediaSystem *)selfCopy serialize];
    v39 = [MEMORY[0x277D0F818] entitledMessageWithName:*MEMORY[0x277CD2478] messagePayload:serialize2];
    msgDispatcher = [(HMDMediaSystem *)selfCopy msgDispatcher];
    uuid = [(HMDMediaSystem *)selfCopy uuid];
    [msgDispatcher sendMessage:v39 target:uuid];
  }

LABEL_26:
}

- (void)reevaluateSettingOwner
{
  if (self)
  {
    workQueue = [self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HMDMediaSystem_reevaluateSettingOwner__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_sync(workQueue, block);
  }
}

void __40__HMDMediaSystem_reevaluateSettingOwner__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) targetAccessory];
  v3 = [v2 isCurrentAccessory];
  v4 = [*(a1 + 32) settingsController];
  v5 = [v4 isSettingOwner];

  if (v3 != v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Target accessory sorting order has changed updating setting owner to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [*(a1 + 32) settingsController];
    [v10 updateSettingOwner:v3];
  }

  if ([(HMDMediaSystem *)*(a1 + 32) _otherAccessoryUsesVersionBasedMigrationOwner])
  {
    v11 = [*(a1 + 32) settingsController];
    [v11 didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner];
  }
}

- (BOOL)_otherAccessoryUsesVersionBasedMigrationOwner
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  components = [self components];
  v2 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v13 != v4)
      {
        objc_enumerationMutation(components);
      }

      accessory = [*(*(&v12 + 1) + 8 * v5) accessory];
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0 ? accessory : 0;
      v8 = v7;

      if (v8)
      {
        if (![v8 isCurrentAccessory])
        {
          break;
        }
      }

      if (v3 == ++v5)
      {
        v3 = [components countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v3)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

    softwareVersion = [v8 softwareVersion];

    if (!softwareVersion)
    {
      goto LABEL_17;
    }

    objc_msgSend_operatingSystemVersion(softwareVersion);
    v12 = *MEMORY[0x277D0F228];
    *&v13 = *(MEMORY[0x277D0F228] + 16);
    v10 = HMFOperatingSystemVersionCompare() == -1;
  }

  else
  {
LABEL_14:

    softwareVersion = 0;
LABEL_17:
    v10 = 0;
  }

  return v10;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received transaction object updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = valuesCopy;
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

  if (v17)
  {
    [(HMDMediaSystem *)selfCopy _transactionMediaSystemUpdated:v17 message:messageCopy];
    v18 = v15;
  }

  else
  {
    v18 = v15;
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

    if (v20)
    {
      [(HMDMediaSystem *)selfCopy _appDataUpdated:v20 message:messageCopy];
    }

    else
    {
      v18 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v18;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      v26 = v25;
      if (v22)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v27;
          v35 = 2112;
          v36 = v22;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Handling add of root settings %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        settingsController = [(HMDMediaSystem *)v24 settingsController];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__HMDMediaSystem_transactionObjectUpdated_newValues_message___block_invoke;
        v32[3] = &unk_2797359D8;
        v32[4] = v24;
        [settingsController handleUpdatedGroupModel:v22 completion:v32];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = objc_opt_class();
          *buf = 138543874;
          v34 = v29;
          v35 = 2112;
          v36 = v18;
          v37 = 2112;
          v38 = v30;
          v31 = v30;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v18];
      }
    }
  }
}

void __61__HMDMediaSystem_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error adding root group.", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (id)targetAccessoryBySerial
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(HMDMediaSystem *)self components];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    selfCopy = self;
    v5 = 0;
    v6 = *v30;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v30 != v6)
      {
        objc_enumerationMutation(obj);
      }

      accessory = [*(*(&v29 + 1) + 8 * v7) accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = accessory;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (!v10)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v21;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing accessory cannot determine target.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        goto LABEL_27;
      }

      serialNumber = [v10 serialNumber];

      if (!serialNumber)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Missing serial cannot determine target.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
LABEL_27:

        v17 = 0;
        goto LABEL_28;
      }

      if (!v5)
      {
        break;
      }

      serialNumber2 = [v5 serialNumber];
      serialNumber3 = [v10 serialNumber];
      v14 = [serialNumber2 compare:serialNumber3];

      if (v14 == -1)
      {
        v15 = v10;

LABEL_15:
        v5 = accessory;
      }

      if (v4 == ++v7)
      {
        v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    v16 = v10;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_20:

  v5 = v5;
  v17 = v5;
LABEL_28:

  return v17;
}

- (HMDAppleMediaAccessory)targetAccessory
{
  components = [(HMDMediaSystem *)self components];
  v3 = [HMDMediaSystem sortMediaComponents:components];

  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    accessory = [firstObject accessory];
  }

  else
  {
    accessory = 0;
  }

  return accessory;
}

- (void)setAppData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  appData = self->_appData;
  self->_appData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDApplicationData)appData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_appData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMediaSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_mediaSession, session);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDMediaSession)mediaSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)accessories
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  components = [(HMDMediaSystem *)self components];
  v5 = objc_msgSend_copy(components);

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        accessory = [*(*(&v13 + 1) + 8 * i) accessory];
        if (accessory)
        {
          [array addObject:accessory];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = objc_msgSend_copy(array);

  return v11;
}

- (void)setComponents:(id)components
{
  componentsCopy = components;
  os_unfair_lock_lock_with_options();
  [(HMDMediaSystem *)self unconfigureMediaSystemComponents:self->_components];
  objc_storeStrong(&self->_components, components);
  [(HMDMediaSystem *)self configureMediaSystemComponents:componentsCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)legacyComponents
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_components);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)generateComponents
{
  data = [(HMDMediaSystem *)self data];
  home = [(HMDMediaSystem *)self home];
  appleMediaAccessories = [home appleMediaAccessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__HMDMediaSystem_generateComponents__block_invoke;
  v9[3] = &unk_27972A708;
  v10 = data;
  v6 = data;
  v7 = [appleMediaAccessories na_map:v9];

  return v7;
}

HMDMediaSystemComponent *__36__HMDMediaSystem_generateComponents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 audioDestination];
  v5 = [*(a1 + 32) leftDestinationIdentifier];
  v6 = [v4 uniqueIdentifier];
  if ([v5 hmf_isEqualToUUID:v6])
  {

LABEL_4:
    v10 = [HMDMediaSystemComponent alloc];
    v11 = [v4 uniqueIdentifier];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x277CCAD78] UUID];
    }

    v13 = objc_alloc(MEMORY[0x277CD1C10]);
    v14 = 1;
    goto LABEL_7;
  }

  v7 = [*(a1 + 32) leftDestinationIdentifier];
  v8 = [v3 uuid];
  v9 = [v7 hmf_isEqualToUUID:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v18 = [*(a1 + 32) rightDestinationIdentifier];
  v19 = [v4 uniqueIdentifier];
  if ([v18 hmf_isEqualToUUID:v19])
  {
  }

  else
  {
    v20 = [*(a1 + 32) rightDestinationIdentifier];
    v21 = [v3 uuid];
    v22 = [v20 hmf_isEqualToUUID:v21];

    if (!v22)
    {
      v16 = 0;
      goto LABEL_10;
    }
  }

  v10 = [HMDMediaSystemComponent alloc];
  v11 = [v4 uniqueIdentifier];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
  }

  v13 = objc_alloc(MEMORY[0x277CD1C10]);
  v14 = 2;
LABEL_7:
  v15 = [v13 initWithRole:v14];
  v16 = [(HMDMediaSystemComponent *)v10 initWithUUID:v12 accessory:v3 role:v15];

  if (!v11)
  {

    v11 = 0;
  }

LABEL_10:

  return v16;
}

- (NSArray)components
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    generateComponents = [(HMDMediaSystem *)self generateComponents];
  }

  else
  {
    generateComponents = [(HMDMediaSystem *)self legacyComponents];
  }

  return generateComponents;
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)legacyConfiguredName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)configuredName
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    data = [(HMDMediaSystem *)self data];
    isDefaultName = [data isDefaultName];

    if (isDefaultName)
    {
      name = 0;
    }

    else
    {
      data2 = [(HMDMediaSystem *)self data];
      name = [data2 name];
    }
  }

  else
  {
    name = [(HMDMediaSystem *)self legacyConfiguredName];
  }

  return name;
}

- (HMDRoom)room
{
  targetAccessory = [(HMDMediaSystem *)self targetAccessory];
  room = [targetAccessory room];

  return room;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  name = self->_name;
  self->_name = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)legacyName
{
  room = [(HMDMediaSystem *)self room];
  name = [room name];

  os_unfair_lock_lock_with_options();
  configuredName = self->_configuredName;
  if (!configuredName)
  {
    configuredName = name;
  }

  v6 = configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSString)name
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    data = [(HMDMediaSystem *)self data];
    name = [data name];
  }

  else
  {
    name = [(HMDMediaSystem *)self legacyName];
  }

  return name;
}

- (id)serialize
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(HMDMediaSystem *)self name];

  if (name)
  {
    name2 = [(HMDMediaSystem *)self name];
    [dictionary setObject:name2 forKeyedSubscript:*MEMORY[0x277CD2458]];
  }

  configuredName = [(HMDMediaSystem *)self configuredName];

  if (configuredName)
  {
    configuredName2 = [(HMDMediaSystem *)self configuredName];
    [dictionary setObject:configuredName2 forKeyedSubscript:*MEMORY[0x277CD2440]];
  }

  uuid = [(HMDMediaSystem *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2470]];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2420]];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  components = [(HMDMediaSystem *)self components];
  v12 = [components countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(components);
        }

        serialize = [*(*(&v19 + 1) + 8 * i) serialize];
        [array addObject:serialize];
      }

      v13 = [components countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [dictionary setObject:array forKeyedSubscript:*MEMORY[0x277CD2438]];
  v17 = objc_msgSend_copy(dictionary);

  return v17;
}

- (void)relayMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy isRemote])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v8;
      v35 = 2112;
      v36 = messageCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay remote message: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    msgDispatcher = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [messageCopy respondWithError:msgDispatcher];
  }

  else
  {
    msgDispatcher = [(HMDMediaSystem *)self msgDispatcher];
    if (msgDispatcher)
    {
      targetAccessory = [(HMDMediaSystem *)self targetAccessory];
      device = [targetAccessory device];

      if (device)
      {
        v12 = [HMDRemoteDeviceMessageDestination alloc];
        messageTargetUUID = [(HMDMediaSystem *)self messageTargetUUID];
        v14 = [(HMDRemoteDeviceMessageDestination *)v12 initWithTarget:messageTargetUUID device:device];

        if (v14)
        {
          name = [messageCopy name];
          qualityOfService = [messageCopy qualityOfService];
          messagePayload = [messageCopy messagePayload];
          v18 = [HMDRemoteMessage secureMessageWithName:name qualityOfService:qualityOfService destination:v14 messagePayload:messagePayload];

          responseHandler = [messageCopy responseHandler];
          [v18 setResponseHandler:responseHandler];

          [msgDispatcher sendMessage:v18];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v33 = 138543618;
            v34 = v31;
            v35 = 2112;
            v36 = messageCopy;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message destination to relay message: %@", &v33, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
          [messageCopy respondWithError:v32];

          v14 = 0;
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v33 = 138543618;
          v34 = v27;
          v35 = 2112;
          v36 = messageCopy;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get target device to relay message: %@", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        [messageCopy respondWithError:v14];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v23;
        v35 = 2112;
        v36 = messageCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message dispatcher to relay message: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      device = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [messageCopy respondWithError:device];
    }
  }
}

- (void)handleAccessorySoftwareUpdated:(id)updated
{
  object = [updated object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;

  v6 = v9;
  if (v9)
  {
    accessories = [(HMDMediaSystem *)self accessories];
    v8 = [accessories containsObject:v9];

    v6 = v9;
    if (v8)
    {
      [(HMDMediaSystem *)self reevaluateSettingOwner];
      v6 = v9;
    }
  }
}

- (void)handleHomeCloudZoneReadyNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_UUIDForKey:@"HMDCR.id"];
  if (v6)
  {
    home = [(HMDMediaSystem *)self home];
    zoneID = [home zoneID];
    if (([v6 isEqual:zoneID] & 1) == 0)
    {

LABEL_8:
      goto LABEL_9;
    }

    targetAccessory = [(HMDMediaSystem *)self targetAccessory];
    isCurrentAccessory = [targetAccessory isCurrentAccessory];

    if (isCurrentAccessory)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        uuid = [(HMDMediaSystem *)selfCopy uuid];
        uUIDString = [uuid UUIDString];
        uUIDString2 = [v6 UUIDString];
        v18 = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = uUIDString;
        v22 = 2112;
        v23 = uUIDString2;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received zone ready for media system %@/%@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      home = [(HMDMediaSystem *)selfCopy settingsController];
      [home auditOnFirstFetch];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_updateAppData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = dataCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating app data with message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDMediaSystem *)selfCopy home];
  if (home)
  {
    v23 = 0;
    v10 = [dataCopy appDataDictionaryWithError:&v23];
    v11 = v23;
    if (v10)
    {
      appData = [(HMDMediaSystem *)selfCopy appData];
      uuid = [(HMDMediaSystem *)selfCopy uuid];
      v14 = [HMDApplicationDataModel modelWithAppDataPayload:v10 existingAppData:appData parentUUID:uuid];

      if (v14)
      {
        backingStore = [home backingStore];
        name = [dataCopy name];
        v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v18 = [backingStore transaction:name options:v17];

        [v18 add:v14 withMessage:dataCopy];
        [v18 run];
      }

      else
      {
        [dataCopy respondWithSuccess];
      }
    }

    else
    {
      [dataCopy respondWithError:v11];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Attempted to set appData on an media system that is no longer part of a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
    [dataCopy respondWithError:v11];
  }
}

- (void)_handleAppData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  home = [(HMDMediaSystem *)self home];
  mediaSystemController = [home mediaSystemController];
  v7 = [mediaSystemController processedMediaSystemBuilderMessageFor:dataCopy];

  if (v7)
  {
    [(HMDMediaSystem *)self _updateAppData:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = dataCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to pre process update media system app data message: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_routeUpdateMediaSystem:(id)system
{
  systemCopy = system;
  home = [(HMDMediaSystem *)self home];
  mediaSystemController = [home mediaSystemController];
  [mediaSystemController routeMediaSystemWithMessage:systemCopy];
}

- (void)_registerForNotifications
{
  notificationCenter = [(HMDMediaSystem *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleHomeCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];

  notificationCenter2 = [(HMDMediaSystem *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleRemovedAccessory_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

  notificationCenter3 = [(HMDMediaSystem *)self notificationCenter];
  [notificationCenter3 addObserver:self selector:sel_handleAccessorySoftwareUpdated_ name:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:0];
}

- (void)_registerForMessages
{
  v16[4] = *MEMORY[0x277D85DE8];
  home = [(HMDMediaSystem *)self home];
  msgDispatcher = [(HMDMediaSystem *)self msgDispatcher];
  v5 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v5 setRoles:{objc_msgSend(v5, "roles") | 4}];
  v6 = objc_msgSend_copy(v5);
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v16[0] = v7;
  v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v16[1] = v8;
  v16[2] = v6;
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  [msgDispatcher registerForMessage:*MEMORY[0x277CD2778] receiver:self policies:v10 selector:sel__routeUpdateMediaSystem_];
  v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
  v15[0] = v11;
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v15[1] = v12;
  v15[2] = v6;
  v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v15[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];

  [msgDispatcher registerForMessage:*MEMORY[0x277CD2468] receiver:self policies:v14 selector:sel__handleAppData_];
}

- (void)auditMediaComponents
{
  v11 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Skipping audit due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    workQueue = [(HMDMediaSystem *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__HMDMediaSystem_auditMediaComponents__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __38__HMDMediaSystem_auditMediaComponents__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isValid] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Media system isn't valid anymore, removing it", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [*(a1 + 32) home];
    v7 = [(HMDMediaSystem *)*(a1 + 32) _modelForMediaSystem];
    v8 = v7;
    if (v7)
    {
      [v7 setObjectChangeType:3];
      v9 = [v6 backingStore];
      v10 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v11 = [v9 transaction:@"Remove-Invalid-Media-System" options:v10];

      [v11 add:v8 withMessage:0];
      [v11 run];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain media system model, not deleting.", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }
}

- (id)_modelForMediaSystem
{
  selfCopy = self;
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    accessories = [self accessories];
    v3 = objc_msgSend_copy(accessories);

    firstObject = [v3 firstObject];
    if (firstObject)
    {
      home = [selfCopy home];
      uuid = [home uuid];
      v7 = firstObject;
      objc_opt_class();
      v8 = objc_opt_isKindOfClass() & 1;
      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v8)
      {
        v11 = off_27971A1C8;
      }

      else
      {
        v16 = v7;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v11 = off_27971A1B8;
        if (isKindOfClass)
        {
          v11 = off_27971A1C0;
        }
      }

      v18 = objc_alloc(*v11);
      uuid2 = [selfCopy uuid];
      selfCopy = [v18 initWithUUID:uuid2 parentUUID:uuid];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine model type due to no accessories in media system", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)unconfigureMediaSystemComponents:(id)components
{
  componentsCopy = components;
  workQueue = [(HMDMediaSystem *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDMediaSystem_unconfigureMediaSystemComponents___block_invoke;
  block[3] = &unk_279735D00;
  v8 = componentsCopy;
  v6 = componentsCopy;
  dispatch_async(workQueue, block);
}

- (void)unconfigureMediaSystemComponents
{
  workQueue = [(HMDMediaSystem *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDMediaSystem_unconfigureMediaSystemComponents__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __50__HMDMediaSystem_unconfigureMediaSystemComponents__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) components];
  [HMDMediaSystem _configureMediaSystemComponents:v2 mediaSystem:0];

  v3 = [*(a1 + 32) settingsController];
  [v3 removeAllDependants];
}

- (void)mediaDestinationsManager:(id)manager didUpdateDestination:(id)destination
{
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  destinationCopy = destination;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating home and siri sync data due to updated destination: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDMediaSystem *)selfCopy home];
  homeManager = [home homeManager];

  v14 = *MEMORY[0x277CD0850];
  uuid = [(HMDMediaSystem *)selfCopy uuid];
  [homeManager updateGenerationCounterWithReason:v14 sourceUUID:uuid shouldNotifyClients:1];

  [homeManager assistantSyncDataChanged:v14];
}

- (id)mediaDestinationsManager:(id)manager destinationControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  home = [(HMDMediaSystem *)self home];
  v7 = [home destinationControllerWithIdentifier:identifierCopy];

  return v7;
}

- (id)mediaGroupsAggregatorMessengerForMediaDestinationsManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  home = [(HMDMediaSystem *)self home];
  mediaGroupsAggregator = [home mediaGroupsAggregator];
  messenger = [mediaGroupsAggregator messenger];
  v8 = messenger;
  if (messenger)
  {
    v9 = messenger;
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
      v18 = home;
      v19 = 2112;
      v20 = mediaGroupsAggregator;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get messenger from dependencies home: %@ aggregator: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  return v8;
}

- (BOOL)isCurrentComponent
{
  components = [(HMDMediaSystem *)self components];
  v3 = [components na_any:&__block_literal_global_68];

  return v3;
}

uint64_t __36__HMDMediaSystem_isCurrentComponent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 isCurrentAccessory];

  return v3;
}

- (id)destinationControllerGroupedWithAssociatedDestination
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  associatedAudioDestinationManagers = [(HMDMediaSystem *)self associatedAudioDestinationManagers];
  v4 = [associatedAudioDestinationManagers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(associatedAudioDestinationManagers);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      home = [(HMDMediaSystem *)self home];
      identifier = [v8 identifier];
      v11 = [home destinationControllerWithDestinationIdentifier:identifier];

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [associatedAudioDestinationManagers countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (void)repairAnyPreExistingAudioGroups
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaSystem *)self isCurrentComponent])
  {
    home = [(HMDMediaSystem *)self home];
    audioDestinationIdentifier = [(HMDMediaSystem *)self audioDestinationIdentifier];
    v5 = [home destinationControllerWithCommittedDestinationIdentifier:audioDestinationIdentifier];

    if (!v5)
    {
      uuid = [(HMDMediaSystem *)self uuid];
      v5 = [home destinationControllerWithCommittedDestinationIdentifier:uuid];

      if (!v5)
      {
        destinationControllerGroupedWithAssociatedDestination = [(HMDMediaSystem *)self destinationControllerGroupedWithAssociatedDestination];
        if (!destinationControllerGroupedWithAssociatedDestination)
        {
LABEL_9:

          return;
        }

        v5 = destinationControllerGroupedWithAssociatedDestination;
      }
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Repairing existing audio group with destination controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    audioDestinationsManager = [(HMDMediaSystem *)selfCopy audioDestinationsManager];
    messageHandler = [audioDestinationsManager messageHandler];
    identifier = [v5 identifier];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HMDMediaSystem_repairAnyPreExistingAudioGroups__block_invoke;
    v15[3] = &unk_2797359D8;
    v15[4] = selfCopy;
    [messageHandler sendRequestToUpdateAudioGroupIdentifier:identifier completion:v15];

    goto LABEL_9;
  }
}

void __49__HMDMediaSystem_repairAnyPreExistingAudioGroups__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Repair existing audio group request completed with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Repair existing audio group request completed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
}

- (id)createNewAudioDestination
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x277CD1B80]);
  audioDestinationIdentifier = [(HMDMediaSystem *)selfCopy audioDestinationIdentifier];
  uuid = [(HMDMediaSystem *)selfCopy uuid];
  v10 = [v7 initWithUniqueIdentifier:audioDestinationIdentifier parentIdentifier:uuid supportedOptions:0];

  return v10;
}

- (void)configureAudioDestinationsManager
{
  audioDestination = [(HMDMediaSystem *)self audioDestination];
  v4 = audioDestination;
  if (!audioDestination)
  {
    audioDestination = [(HMDMediaSystem *)self createNewAudioDestination];
  }

  v11 = audioDestination;
  audioDestinationsManagerFactory = [(HMDMediaSystem *)self audioDestinationsManagerFactory];
  msgDispatcher = [(HMDMediaSystem *)self msgDispatcher];
  notificationCenter = [(HMDMediaSystem *)self notificationCenter];
  v8 = (audioDestinationsManagerFactory)[2](audioDestinationsManagerFactory, v11, msgDispatcher, notificationCenter, self, self);
  [(HMDMediaSystem *)self setAudioDestinationsManager:v8];

  audioDestinationsManager = [(HMDMediaSystem *)self audioDestinationsManager];
  home = [(HMDMediaSystem *)self home];
  [audioDestinationsManager configureWithHome:home];

  if (!v4)
  {
    [(HMDMediaSystem *)self repairAnyPreExistingAudioGroups];
  }
}

- (NSArray)associatedAudioDestinationManagers
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaSystem *)self isValid])
  {
    components = [(HMDMediaSystem *)self components];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HMDMediaSystem_associatedAudioDestinationManagers__block_invoke;
    v13[3] = &unk_27972A6C0;
    v13[4] = self;
    v4 = [components na_map:v13];
    v5 = [v4 count];
    if (v5 == [components count])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
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
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get associated destination managers due to invalid media system", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

id __52__HMDMediaSystem_associatedAudioDestinationManagers__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v3 accessory];
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

  v8 = [v7 audioDestinationManager];
  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138544130;
      v15 = v12;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@No audio destination manager found for component: %@ accessory: %@ apple media accessory: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (id)legacyAudioDestination
{
  audioDestinationsManager = [(HMDMediaSystem *)self audioDestinationsManager];
  v4 = audioDestinationsManager;
  if (audioDestinationsManager)
  {
    destination = [audioDestinationsManager destination];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    destination = self->_audioDestination;
    os_unfair_lock_unlock(&self->_lock);
  }

  return destination;
}

- (HMMediaDestination)audioDestination
{
  v15 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    dataSource = [(HMDMediaSystem *)self dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      v5 = [dataSource destinationForMediaSystem:self];
      os_unfair_lock_lock_with_options();
      audioDestination = v5;
      if (!v5)
      {
        audioDestination = self->_audioDestination;
      }

      legacyAudioDestination = audioDestination;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination data due to no data source set", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      legacyAudioDestination = 0;
    }
  }

  else
  {
    legacyAudioDestination = [(HMDMediaSystem *)self legacyAudioDestination];
  }

  return legacyAudioDestination;
}

- (id)audioDestinationIdentifier
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"222AA6C0-21DB-4EE6-8E62-019974477350"];
  v4 = MEMORY[0x277CCAD78];
  uuid = [(HMDMediaSystem *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];
  v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

  return v8;
}

- (void)configureMediaSystemComponents:(id)components
{
  componentsCopy = components;
  workQueue = [(HMDMediaSystem *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDMediaSystem_configureMediaSystemComponents___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = componentsCopy;
  selfCopy = self;
  v6 = componentsCopy;
  dispatch_async(workQueue, v7);
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  v41 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    components = [(HMDMediaSystem *)selfCopy components];
    *buf = 138543618;
    v38 = v8;
    v39 = 2112;
    v40 = components;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring media system with components: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v31 = dispatcherCopy;
  [(HMDMediaSystem *)selfCopy setMsgDispatcher:dispatcherCopy];
  [(HMDMediaSystem *)selfCopy _registerForMessages];
  [(HMDMediaSystem *)selfCopy _registerForNotifications];
  components2 = [(HMDMediaSystem *)selfCopy components];
  [HMDMediaSystem _configureMediaSystemComponents:components2 mediaSystem:selfCopy];

  home = [(HMDMediaSystem *)selfCopy home];
  targetAccessoryBySerial = [(HMDMediaSystem *)selfCopy targetAccessoryBySerial];
  isCurrentAccessory = [targetAccessoryBySerial isCurrentAccessory];

  settingsController = [(HMDMediaSystem *)selfCopy settingsController];
  targetAccessory = [(HMDMediaSystem *)selfCopy targetAccessory];
  [settingsController configureIsSettingOwner:objc_msgSend(targetAccessory migrationOwner:"isCurrentAccessory") home:isCurrentAccessory legacySettingsAdaptor:{home, 0}];

  if ((isCurrentAccessory & 1) == 0 && [(HMDMediaSystem *)selfCopy _otherAccessoryUsesVersionBasedMigrationOwner])
  {
    settingsController2 = [(HMDMediaSystem *)selfCopy settingsController];
    [settingsController2 didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner];
  }

  settingsController3 = [(HMDMediaSystem *)selfCopy settingsController];
  messageHandler = [settingsController3 messageHandler];
  msgDispatcher = [(HMDMediaSystem *)selfCopy msgDispatcher];
  [messageHandler configureWithMessageDispatcher:msgDispatcher];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  components3 = [(HMDMediaSystem *)selfCopy components];
  v21 = [components3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      v24 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(components3);
        }

        accessory = [*(*(&v32 + 1) + 8 * v24) accessory];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = accessory;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        settingsController4 = [v27 settingsController];

        if (settingsController4)
        {
          settingsController5 = [(HMDMediaSystem *)selfCopy settingsController];
          settingsController6 = [v27 settingsController];
          [settingsController5 addDependant:settingsController6];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [components3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  [(HMDMediaSystem *)selfCopy configureAudioDestinationsManager];
}

- (BOOL)supportsUserMediaSettings
{
  accessories = [(HMDMediaSystem *)self accessories];
  v4 = [accessories na_any:&__block_literal_global_62];

  if (!v4)
  {
    return 0;
  }

  accessories2 = [(HMDMediaSystem *)self accessories];
  v6 = [accessories2 count] != 0;

  return v6;
}

- (BOOL)isValid
{
  v36 = *MEMORY[0x277D85DE8];
  components = [(HMDMediaSystem *)self components];
  v4 = [components count];

  if (v4 > 1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    components2 = [(HMDMediaSystem *)self components];
    v11 = [components2 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(components2);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          accessory = [v15 accessory];
          if (!accessory || (-[HMDMediaSystem home](self, "home"), v17 = objc_claimAutoreleasedReturnValue(), [v17 accessories], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", accessory), v18, v17, (v19 & 1) == 0))
          {
            v20 = objc_autoreleasePoolPush();
            selfCopy = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v30 = v23;
              v31 = 2112;
              v32 = v15;
              v33 = 2112;
              v34 = accessory;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Component %@ contains an invalid accessory %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v20);
            v9 = 0;
            goto LABEL_19;
          }
        }

        v12 = [components2 countByEnumeratingWithState:&v25 objects:v35 count:16];
        v9 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_19:
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v8;
      v31 = 2112;
      v32 = &unk_286628708;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@There are fewer than %@ components, not valid", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return v9;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDMediaSystem *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc-ing MediaSystem", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDMediaSystem;
  [(HMDMediaSystem *)&v7 dealloc];
}

- (id)logIdentifier
{
  uuid = [(HMDMediaSystem *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v20[5] = *MEMORY[0x277D85DE8];
  components = [(HMDMediaSystem *)self components];
  v4 = objc_msgSend_copy(components);

  v18 = [v4 na_map:&__block_literal_global_30];
  v5 = [v4 na_map:&__block_literal_global_32_97953];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDMediaSystem *)self uuid];
  v7 = [v6 initWithName:@"uuid" value:uuid];
  v20[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDMediaSystem *)self name];
  v10 = [v8 initWithName:@"name" value:name];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  configuredName = [(HMDMediaSystem *)self configuredName];
  v13 = [v11 initWithName:@"configuredName" value:configuredName];
  v20[2] = v13;
  v14 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"componentUUIDs" value:v18];
  v20[3] = v14;
  v15 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"accessoryUUIDs" value:v5];
  v20[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  return v16;
}

id __39__HMDMediaSystem_attributeDescriptions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 uuid];

  return v3;
}

- (id)modelForMediaSystem
{
  accessories = [(HMDMediaSystem *)self accessories];
  v4 = objc_msgSend_copy(accessories);

  if ([v4 count])
  {
    _modelForMediaSystem = [(HMDMediaSystem *)self _modelForMediaSystem];
  }

  else
  {
    _modelForMediaSystem = 0;
  }

  return _modelForMediaSystem;
}

- (HMDMediaSystem)initWithMediaSystemModel:(id)model home:(id)home
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mediaSystemComponents = [modelCopy mediaSystemComponents];
  v10 = [mediaSystemComponents countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(mediaSystemComponents);
        }

        v14 = [HMDMediaSystemComponent mediaSystemComponentWithDictionary:*(*(&v19 + 1) + 8 * v13) home:homeCopy];
        if (!v14)
        {
          selfCopy = 0;
          goto LABEL_11;
        }

        v15 = v14;
        [array addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [mediaSystemComponents countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  mediaSystemComponents = [modelCopy uuid];
  configuredName = [modelCopy configuredName];
  self = [(HMDMediaSystem *)self initWithUUID:mediaSystemComponents configuredName:configuredName home:homeCopy data:0 components:array];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (HMDMediaSystem)initWithUUID:(id)d configuredName:(id)name home:(id)home data:(id)data components:(id)components settingsControllerCreator:(id)creator
{
  dCopy = d;
  nameCopy = name;
  homeCopy = home;
  dataCopy = data;
  componentsCopy = components;
  creatorCopy = creator;
  if (dataCopy)
  {
    v21 = creatorCopy;
    v54.receiver = self;
    v54.super_class = HMDMediaSystem;
    v22 = [(HMDMediaSystem *)&v54 init];
    if (v22)
    {
      HMDispatchQueueNameString();
      v23 = v53 = dCopy;
      obj = components;
      v24 = v21;
      v25 = homeCopy;
      v26 = componentsCopy;
      v27 = nameCopy;
      uTF8String = [v23 UTF8String];
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = v52 = dataCopy;
      v30 = uTF8String;
      nameCopy = v27;
      componentsCopy = v26;
      homeCopy = v25;
      v21 = v24;
      v31 = dispatch_queue_create(v30, v29);
      workQueue = v22->_workQueue;
      v22->_workQueue = v31;

      objc_storeStrong(&v22->_uuid, d);
      hm_truncatedNameString = [nameCopy hm_truncatedNameString];
      configuredName = v22->_configuredName;
      v22->_configuredName = hm_truncatedNameString;

      objc_storeWeak(&v22->_home, homeCopy);
      objc_storeStrong(&v22->_data, data);
      objc_storeStrong(&v22->_components, obj);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      notificationCenter = v22->_notificationCenter;
      v22->_notificationCenter = defaultCenter;

      workQueue = [(HMDMediaSystem *)v22 workQueue];
      uuid = [(HMDMediaSystem *)v22 uuid];
      v39 = (*(v24 + 2))(v24, workQueue, v22, v22, uuid, *MEMORY[0x277CD2460]);
      settingsController = v22->_settingsController;
      v22->_settingsController = v39;

      dataCopy = v52;
      dCopy = v53;
      audioDestinationsManagerFactory = v22->_audioDestinationsManagerFactory;
      v22->_audioDestinationsManagerFactory = &__block_literal_global_97969;

      mediaGroupsAggregateConsumer = [homeCopy mediaGroupsAggregateConsumer];
      aggregateDataProvider = v22->_aggregateDataProvider;
      v22->_aggregateDataProvider = mediaGroupsAggregateConsumer;
    }

    return v22;
  }

  else
  {
    v45 = _HMFPreconditionFailure();
    return __93__HMDMediaSystem_initWithUUID_configuredName_home_data_components_settingsControllerCreator___block_invoke(v45, v46, v47, v48, v49, v50);
  }
}

HMDMediaDestinationsManager *__93__HMDMediaSystem_initWithUUID_configuredName_home_data_components_settingsControllerCreator___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = [[HMDMediaDestinationsManager alloc] initWithDestination:v14 messageDispatcher:v13 notificationCenter:v12 dataSource:v11 delegate:v10];

  return v15;
}

- (HMDMediaSystem)initWithUUID:(id)d configuredName:(id)name home:(id)home data:(id)data components:(id)components
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  homeCopy = home;
  dataCopy = data;
  componentsCopy = components;
  if (!dataCopy)
  {
    uuid = [homeCopy uuid];
    if (nameCopy)
    {
      dataCopy = [HMDMediaSystem initializeDataWithIdentifier:dCopy parentIdentifier:uuid name:nameCopy defaultName:0 components:componentsCopy];
    }

    else
    {
      roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
      dataCopy = [HMDMediaSystem initializeDataWithIdentifier:dCopy parentIdentifier:uuid name:roomNameSentinel defaultName:1 components:componentsCopy];
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = dataCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Initializing with derived data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__HMDMediaSystem_initWithUUID_configuredName_home_data_components___block_invoke;
  v26[3] = &unk_27972A638;
  v27 = homeCopy;
  v23 = homeCopy;
  v24 = [(HMDMediaSystem *)self initWithUUID:dCopy configuredName:nameCopy home:v23 data:dataCopy components:componentsCopy settingsControllerCreator:v26];

  return v24;
}

HMDAccessorySettingsController *__67__HMDMediaSystem_initWithUUID_configuredName_home_data_components___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = [HMDAccessorySettingsController alloc];
  v17 = [*(a1 + 32) logEventSubmitter];
  v18 = [(HMDAccessorySettingsController *)v16 initWithQueue:v15 delegate:v14 dataSource:v13 parentUUID:v12 codingKey:v11 logEventSubmitter:v17];

  return v18;
}

- (HMDMediaSystem)initWithMediaSystemData:(id)data home:(id)home
{
  homeCopy = home;
  dataCopy = data;
  identifier = [dataCopy identifier];
  name = [dataCopy name];
  v10 = [(HMDMediaSystem *)self initWithUUID:identifier configuredName:name home:homeCopy data:dataCopy components:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)sortMediaComponents:(id)components
{
  componentsCopy = components;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __38__HMDMediaSystem_sortMediaComponents___block_invoke;
  v13 = &unk_27972A730;
  v14 = componentsCopy;
  selfCopy = self;
  v5 = componentsCopy;
  v6 = [v5 sortedArrayUsingComparator:&v10];
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

uint64_t __38__HMDMediaSystem_sortMediaComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 accessory];
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

  v10 = [v6 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      v27 = 138544130;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unexpected media accessory not found for components %@, acc1: %@, acc2: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    if (v9)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }
  }

  else
  {
    v19 = [v9 softwareVersion];
    v20 = [v12 softwareVersion];
    v21 = [v19 compare:v20];

    if (!v21)
    {
      v22 = [v9 uuid];
      v23 = [v22 UUIDString];
      v24 = [v12 uuid];
      v25 = [v24 UUIDString];
      v21 = [v23 compare:v25];
    }
  }

  return v21;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v45 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  home = [v12 home];
  if (home)
  {
    v36 = dispatcherCopy;
    v14 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v14 setRoles:{objc_msgSend(v14, "roles") | 4}];
    v15 = objc_msgSend_copy(v14);
    v16 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v38[0] = v16;
    v17 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v38[1] = v17;
    v38[2] = v15;
    v18 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
    v38[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];

    name = [messageCopy name];
    LODWORD(v17) = HMFEqualObjects();

    if (v17)
    {
      name2 = [messageCopy name];
      v22 = HMFCreateMessageBindingWithReceiver();
    }

    else
    {
      v35 = v19;
      v29 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
      v37[0] = v29;
      v30 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v37[1] = v30;
      v37[2] = v15;
      v31 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
      v37[3] = v31;
      name2 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

      name3 = [messageCopy name];
      LODWORD(v31) = HMFEqualObjects();

      if (v31)
      {
        name4 = [messageCopy name];
        HMFCreateMessageBindingWithReceiver();
      }

      else
      {
        name4 = [v12 settingsController];
        [objc_opt_class() messageBindingForDispatcher:v36 message:messageCopy receiver:receiverCopy];
      }
      v22 = ;

      v19 = v35;
    }

    dispatcherCopy = v36;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      [messageCopy name];
      v28 = v27 = dispatcherCopy;
      *buf = 138543874;
      v40 = v26;
      v41 = 2112;
      v42 = v28;
      v43 = 2112;
      v44 = receiverCopy;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);

      dispatcherCopy = v27;
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

+ (void)_configureMediaSystemComponents:(id)components mediaSystem:(id)system
{
  v19 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  systemCopy = system;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(componentsCopy);
        }

        mediaProfile = [*(*(&v14 + 1) + 8 * v10) mediaProfile];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = mediaProfile;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [v13 setMediaSystem:systemCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [componentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [systemCopy auditMediaComponents];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_97997 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_97997, &__block_literal_global_52);
  }

  v3 = logCategory__hmf_once_v6_97998;

  return v3;
}

uint64_t __29__HMDMediaSystem_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6_97998;
  logCategory__hmf_once_v6_97998 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)destinationIdentifierForComponentRoleType:(unint64_t)type components:(id)components
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMDMediaSystem_destinationIdentifierForComponentRoleType_components___block_invoke;
  v11[3] = &__block_descriptor_40_e33_B16__0__HMDMediaSystemComponent_8l;
  v11[4] = type;
  v4 = [components na_firstObjectPassingTest:v11];
  accessory = [v4 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  audioDestination = [v7 audioDestination];

  uniqueIdentifier = [audioDestination uniqueIdentifier];

  return uniqueIdentifier;
}

BOOL __71__HMDMediaSystem_destinationIdentifierForComponentRoleType_components___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 type] == *(a1 + 32);

  return v4;
}

+ (id)initializeDataWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier name:(id)name defaultName:(BOOL)defaultName components:(id)components
{
  defaultNameCopy = defaultName;
  componentsCopy = components;
  nameCopy = name;
  parentIdentifierCopy = parentIdentifier;
  identifierCopy = identifier;
  unknownDestinationSentinel = [HMDMediaSystem destinationIdentifierForComponentRoleType:1 components:componentsCopy];
  unknownDestinationSentinel2 = [HMDMediaSystem destinationIdentifierForComponentRoleType:2 components:componentsCopy];

  if (unknownDestinationSentinel)
  {
    if (unknownDestinationSentinel2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    unknownDestinationSentinel = [MEMORY[0x277CD1C08] unknownDestinationSentinel];
    if (unknownDestinationSentinel2)
    {
      goto LABEL_3;
    }
  }

  unknownDestinationSentinel2 = [MEMORY[0x277CD1C08] unknownDestinationSentinel];
LABEL_3:
  v17 = [objc_alloc(MEMORY[0x277CD1C08]) initWithIdentifier:identifierCopy parentIdentifier:parentIdentifierCopy name:nameCopy defaultName:defaultNameCopy associatedGroupIdentifier:0 leftDestinationIdentifier:unknownDestinationSentinel rightDestinationIdentifier:unknownDestinationSentinel2];

  return v17;
}

- (id)assistantObject
{
  v67 = *MEMORY[0x277D85DE8];
  home = [(HMDMediaSystem *)self home];
  name = [(HMDMediaSystem *)self name];
  v5 = name;
  if (name && home)
  {
    name2 = [home name];

    if (name2)
    {
      v7 = *MEMORY[0x277D48200];
      components = [(HMDMediaSystem *)self components];
      v9 = [components count];

      if (v9 == 2)
      {
        v10 = *MEMORY[0x277D48208];

        v7 = v10;
      }

      v58[0] = *MEMORY[0x277D48150];
      v57[0] = @"objectType";
      v57[1] = @"objectName";
      name3 = [(HMDMediaSystem *)self name];
      v58[1] = name3;
      v57[2] = @"objectIdentifier";
      urlString = [(HMDMediaSystem *)self urlString];
      v58[2] = urlString;
      v57[3] = @"objectHome";
      name4 = [home name];
      v58[3] = name4;
      v57[4] = @"objectHomeIdentifier";
      [home urlString];
      v14 = v46 = home;
      v58[4] = v14;
      v58[5] = self;
      v57[5] = @"objectReference";
      v57[6] = @"objectServiceType";
      v58[6] = *MEMORY[0x277D48350];
      v58[7] = v7;
      v57[7] = @"objectServiceSubType";
      v57[8] = @"objectGroupType";
      v58[8] = *MEMORY[0x277D48188];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:9];
      v45 = [v15 mutableCopy];

      home = v46;
      audioDestination = [(HMDMediaSystem *)self audioDestination];
      if (!audioDestination)
      {
        goto LABEL_26;
      }

      accessories = [v46 accessories];
      v17 = [accessories na_map:&__block_literal_global_37_115774];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        obj = v18;
        v48 = 0;
        v44 = v7;
        v21 = 0;
        v22 = *v51;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            audioDestinationController = [v24 audioDestinationController];
            data = [audioDestinationController data];
            destinationIdentifier = [data destinationIdentifier];
            uniqueIdentifier = [audioDestination uniqueIdentifier];
            v29 = [destinationIdentifier hmf_isEqualToUUID:uniqueIdentifier];

            if (v29)
            {
              name5 = [v24 name];

              urlString2 = [audioDestinationController urlString];

              v21 = name5;
              v48 = urlString2;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v20);
        v18 = obj;

        v32 = v21;
        if (!v21)
        {
          home = v46;
          v7 = v44;
          v33 = v48;
          goto LABEL_25;
        }

        home = v46;
        v33 = v48;
        if (!v48)
        {
          v7 = v44;
          goto LABEL_25;
        }

        v55 = v32;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v45 setObject:v34 forKey:@"objectGroups"];

        v54 = v48;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        [v45 setObject:v35 forKey:@"objectGroupIdentifiers"];
        v7 = v44;
      }

      else
      {
        v33 = 0;
        v32 = 0;
        v35 = v18;
      }

LABEL_25:
LABEL_26:
      v42 = objc_msgSend_copy(v45);

      goto LABEL_27;
    }
  }

  else
  {
  }

  v36 = objc_autoreleasePoolPush();
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = HMFGetLogIdentifier();
    name6 = [(HMDMediaSystem *)self name];
    uuid = [(HMDMediaSystem *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v60 = v38;
    v61 = 2112;
    v62 = name6;
    v63 = 2112;
    v64 = uUIDString;
    v65 = 2112;
    v66 = home;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil self %@/%@  self.home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
  v42 = 0;
LABEL_27:

  return v42;
}

void *__44__HMDMediaSystem_Assistant__assistantObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

- (id)urlString
{
  uuid = [(HMDMediaSystem *)self uuid];
  v3 = hm_assistantIdentifier();

  return v3;
}

@end