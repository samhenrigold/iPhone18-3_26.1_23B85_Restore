@interface HMDAppleMediaAccessory
+ (BOOL)shouldAcceptMessage:(id)message home:(id)home privilege:(unint64_t)privilege;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)clients;
- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients;
- (BOOL)hasValidHome:(id)home backingStore:(id)store messageDispatcher:(id)dispatcher;
- (BOOL)isAppleTV;
- (BOOL)isCurrentAccessory;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isDeviceReachable;
- (BOOL)isDoorbellChimeSettingEnabled;
- (BOOL)isHH1EOLEnabled;
- (BOOL)isHomePod;
- (BOOL)isMatchingCachedEventPublicPairingIdentity:(id)identity;
- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller;
- (BOOL)isReadyForSensorPairing:(id)pairing;
- (BOOL)isRemotelyReachable;
- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)manager;
- (BOOL)legacyLocationServicesEnabled;
- (BOOL)shouldUpdateWithDevice:(id)device initialConfiguration:(BOOL)configuration;
- (BOOL)supportsAnnounce;
- (BOOL)supportsAudioAnalysis;
- (BOOL)supportsAudioReturnChannel;
- (BOOL)supportsCompanionInitiatedObliterate;
- (BOOL)supportsCompanionInitiatedRestart;
- (BOOL)supportsCoordinationDoorbellChime;
- (BOOL)supportsCoordinationFreeDoorbellChime;
- (BOOL)supportsCrossfadeAsAirPlaySource;
- (BOOL)supportsDoorbellChime;
- (BOOL)supportsDropIn;
- (BOOL)supportsHomeHub;
- (BOOL)supportsHomeLevelLocationServiceSetting;
- (BOOL)supportsJustSiri;
- (BOOL)supportsManagedConfigurationProfile;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMediaContentProfile;
- (BOOL)supportsMultiUser;
- (BOOL)supportsMusicAlarm;
- (BOOL)supportsNetworkDiagnostics;
- (BOOL)supportsPreferredMediaUser;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsSoftwareUpdate;
- (BOOL)supportsSoftwareUpdateV2;
- (BOOL)supportsStereoOdeonTTSUBypassingPrimary;
- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification;
- (BOOL)supportsTargetControl;
- (BOOL)supportsThirdPartyMusic;
- (BOOL)supportsUserMediaSettings;
- (BOOL)supportsWiFiRepairV2;
- (HMAccessoryCapabilities)capabilitiesInternal;
- (HMDAccessorySetupMetricDispatcher)accessorySetupMetricDispatcher;
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessoryLocalMessageHandler:(id)handler;
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager;
- (HMDAppleMediaAccessory)init;
- (HMDAppleMediaAccessory)initWithCoder:(id)coder;
- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)factory deviceMediaRouteIdentifierFactory:(id)identifierFactory;
- (HMDAppleMediaAccessory)initWithDeviceController:(id)controller deviceIdentifierFactory:(id)factory;
- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home dependencyFactory:(id)factory;
- (HMDAppleMediaAccessoryDataSource)dataSource;
- (HMDBackingStore)backingStore;
- (HMDCurrentAccessorySetupMetricDispatcher)currentAccessorySetupMetricDispatcher;
- (HMDDevice)device;
- (HMDDevice)deviceForDirectMessaging;
- (HMDDeviceAddress)deviceAddress;
- (HMDDoorbellChimeProfile)doorbellChimeProfile;
- (HMDMediaDestinationControllerFactory)mediaDestinationControllerFactory;
- (HMDMediaDestinationManagerFactory)mediaDestinationManagerFactory;
- (HMDMessageRouter)messageRouter;
- (HMEEventForwarder)eventForwarder;
- (HMELastEventStoreReadHandle)eventStoreReadHandle;
- (HMFActivity)setupActivity;
- (HMFPairingIdentity)pairingIdentity;
- (HMFSoftwareVersion)softwareVersion;
- (HMFWiFiNetworkInfo)lastStagedWifiNetworkInfo;
- (HMFWiFiNetworkInfo)wifiNetworkInfo;
- (HMMLogEventSubmitting)logEventSubmitter;
- (HMMediaDestination)audioDestination;
- (HMMediaDestinationControllerData)audioDestinationControllerData;
- (NSData)deviceIRK;
- (NSData)rawCapabilities;
- (NSString)description;
- (NSUUID)idsIdentifier;
- (NSUUID)sensorAccessoryUUID;
- (double)setupStartTimestamp;
- (id)_createMediaProfile;
- (id)_dumpStateCachedSettingsForHome:(id)home accessory:(id)accessory eventStoreReadHandle:(id)handle;
- (id)_initWithCoder:(id)coder;
- (id)_scanForSoftwareUpdate;
- (id)_scanForSoftwareUpdateWithRetries;
- (id)_softwareUpdateV2FromDescriptor:(id)descriptor;
- (id)accessoriesWithHostUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager;
- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)manager;
- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)controller;
- (id)accessoryInfoControllerTopicForWifiInfo;
- (id)appleMediaProfileForAccessoryUUID:(id)d;
- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller;
- (id)assistantObject;
- (id)availableDestinationIdentifiersForMediaDestinationController:(id)controller;
- (id)backingStoreObjectForMediaDestination;
- (id)backingStoreObjectForMediaDestinationControllerData;
- (id)backingStoreObjects:(int64_t)objects;
- (id)cachedEventPairingIdentity;
- (id)committedAudioDestination;
- (id)committedAudioDestinationControllerData;
- (id)controller:(id)controller topicForKeyPath:(id)path;
- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler;
- (id)currentAccessorySoftwareVersion;
- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher;
- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher;
- (id)deviceMonitor;
- (id)dumpSimpleState;
- (id)dumpStateLocalSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)controller;
- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)controller;
- (id)firstCloudKitImportFutureForAppleMediaAccessorySensorManager:(id)manager;
- (id)homeUUID;
- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)manager;
- (id)idsIdentifierInternal;
- (id)languageValueList;
- (id)legacyAudioDestination;
- (id)legacyAudioDestinationControllerData;
- (id)legacyCommittedAudioDestination;
- (id)legacyCommittedAudioDestinationControllerData;
- (id)logIdentifier;
- (id)mediaDestinationController:(id)controller destinationManagerWithIdentifier:(id)identifier;
- (id)mediaDestinationController:(id)controller destinationWithParentIdentifier:(id)identifier;
- (id)mediaDestinationController:(id)controller rootDestinationWithDecendantIdentifier:(id)identifier;
- (id)mediaDestinationControllerWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1;
- (id)mediaDestinationManager:(id)manager destinationControllerWithIdentifier:(id)identifier;
- (id)mediaDestinationManagerWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center backingStore:(id)store targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)controller;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)manager;
- (id)messageSendPolicy;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d;
- (id)modelsToMigrateSettingsForController:(id)controller;
- (id)pairingIdentityTopic;
- (id)remoteMessageDestination;
- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target;
- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)manager;
- (id)residentSyncClientDidSyncFutureForAppleMediaAccessorySensorManager:(id)manager;
- (id)rootDestinationManagerForMediaDestinationManager:(id)manager;
- (id)runtimeState;
- (id)subscriptionProvider;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)dispatcher destinationTypeForDestinationWithIdentifier:(id)identifier;
- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)productColor;
- (int64_t)reachableTransports;
- (unint64_t)expectedDestinationSupportOptions;
- (unint64_t)homePodVariant;
- (unint64_t)supportedStereoPairVersions;
- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion;
- (void)_applySoftwareUpdateWithDescriptor:(id)descriptor;
- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)home;
- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)coder;
- (void)_encodeWithCoder:(id)coder;
- (void)_fetchMultiUserLanguages;
- (void)_fixCloudKeyIfNeeded;
- (void)_handleAudioAnalysisBulletinBoardCommit:(id)commit;
- (void)_handleTriggerPairingIdentityUpdateNotification:(id)notification;
- (void)_handleUpdatedName:(id)name;
- (void)_handleWiFiPickerMessage:(id)message withName:(id)name;
- (void)_installManagedConfigurationProfileWithData:(id)data completion:(id)completion;
- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)coder;
- (void)_loadWiFiInfoDuringConfiguration;
- (void)_readWiFiInfoFromWorkingStoreWithCompletion:(id)completion;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_relayRequestMessage:(id)message responseHandler:(id)handler;
- (void)_removeManagedConfigurationProfileWithIdentifier:(id)identifier completion:(id)completion;
- (void)_scanForSoftwareUpdateRepeatedlyAndInstallUpdate:(BOOL)update;
- (void)_startUpdate:(id)update;
- (void)_storeWiFiInfoDuringUpdate:(id)update;
- (void)_updateSoftwareVersion:(id)version;
- (void)_updateWiFiNetworkInfoForMessageName:(id)name response:(id)response;
- (void)_writeWiFiInfoToWorkingStore:(id)store MACAddress:(id)address;
- (void)accessoryInfoController:(id)controller didUpdateWifiInfo:(id)info;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model;
- (void)addAdvertisement:(id)advertisement;
- (void)addHostedAccessory:(id)accessory;
- (void)addUser:(id)user completionHandler:(id)handler;
- (void)autoConfigureTargetControllers;
- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)factory;
- (void)configureAudioDestinationController;
- (void)configureAudioDestinationManager;
- (void)configurePairingIdentity;
- (void)configureTargetController:(id)controller;
- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration;
- (void)createAudioDestination;
- (void)createAudioDestinationController;
- (void)createNewPairingIdentity;
- (void)createSoftwareUpdateEventListenerIfNecessary;
- (void)dealloc;
- (void)deleteSiriHistoryForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)encodeFlagsFromHostedAccessories:(id)accessories coder:(id)coder;
- (void)encodeServicesFromHostedAccessories:(id)accessories coder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)forwardAccessoryPublicPairingIdentity:(id)identity;
- (void)handleCurrentDeviceIRKUpdated:(id)updated;
- (void)handleCurrentDeviceUpdated:(id)updated;
- (void)handleCurrentNetworkChangedNotification:(id)notification;
- (void)handleDeleteSiriHistoryRequest:(id)request;
- (void)handleDeviceIsNotReachable:(id)reachable;
- (void)handleDeviceIsReachable:(id)reachable;
- (void)handleFetchManagedConfigurationProfiles:(id)profiles;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)handleInstallManagedConfigurationProfile:(id)profile;
- (void)handleRemoveManagedConfigurationProfile:(id)profile;
- (void)handleRemovedMediaDestinationControllerModel:(id)model message:(id)message;
- (void)handleRemovedMediaDestinationModel:(id)model message:(id)message;
- (void)handleRoomChanged:(id)changed;
- (void)handleRoomNameChanged:(id)changed;
- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)descriptor;
- (void)handleSoftwareUpdateV2Scan:(id)scan;
- (void)handleSoftwareUpdateV2ScanRepeatedlyAndApplyMessage:(id)message;
- (void)handleTransactionUpdatedPublicPairingIdentity:(id)identity result:(id)result;
- (void)handleUpdatePreferredMediaUser:(id)user;
- (void)handleUpdatedMediaDestinationControllerModel:(id)model message:(id)message;
- (void)handleUpdatedMediaDestinationModel:(id)model message:(id)message;
- (void)languagesChangedForAccessorySettingsController:(id)controller;
- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)identifier;
- (void)legacyCreateAudioDestinationWithIdentifier:(id)identifier supportedOptions:(unint64_t)options;
- (void)mediaDestinationControllerDidUpdateStagedValues:(id)values;
- (void)mediaDestinationManagerDidUpdateStagedValues:(id)values;
- (void)mergeAudioDestination:(id)destination;
- (void)mergeAudioDestinationControllerData:(id)data;
- (void)migrateLocalParticipantData;
- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value;
- (void)notifyFrameworkOfUpdatedPairingIdentity;
- (void)pairingsWithCompletionHandler:(id)handler;
- (void)performAfterDelay:(double)delay block:(id)block queue:(id)queue;
- (void)performLocalAddAccessoryWithDescription:(id)description progressHandlerDelegate:(id)delegate completion:(id)completion;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)postDeviceIRKIfDifferent:(id)different;
- (void)removeAdvertisement:(id)advertisement;
- (void)removeAudioDestination;
- (void)removeHostedAccessory:(id)accessory;
- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion;
- (void)removeUser:(id)user completionHandler:(id)handler;
- (void)renameService:(id)service name:(id)name;
- (void)runTransactionWithPreferredMediaUserUUID:(id)d selectionType:(unint64_t)type completion:(id)completion;
- (void)setCapabilitiesInternal:(id)internal;
- (void)setDeviceAddress:(id)address;
- (void)setDeviceController:(id)controller;
- (void)setDeviceIRK:(id)k;
- (void)setDeviceReachable:(BOOL)reachable;
- (void)setIdsIdentifier:(id)identifier;
- (void)setLastStagedWifiNetworkInfo:(id)info;
- (void)setPairingIdentity:(id)identity;
- (void)setProductColor:(int64_t)color;
- (void)setRawCapabilities:(id)capabilities;
- (void)setRemotelyReachable:(BOOL)reachable;
- (void)setSetupActivity:(id)activity;
- (void)setSetupStartTimestamp:(double)timestamp;
- (void)setSoftwareVersion:(id)version;
- (void)setSupportedStereoPairVersions:(unint64_t)versions;
- (void)setWifiNetworkInfo:(id)info;
- (void)startMonitoringReachability;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)unsetAudioDestination;
- (void)unsetAudioDestinationControllerData;
- (void)updatePreferredMediaUser:(id)user selectionType:(unint64_t)type;
- (void)updatePreferredMediaUserWithUUID:(id)d selectionType:(unint64_t)type completion:(id)completion;
- (void)updateProductInformation;
- (void)updateReachabilityOfCurrentDevice;
- (void)updateWiFiNetworkInfo;
- (void)updateWiFiNetworkInfoIfNeeded:(id)needed reason:(id)reason;
- (void)updateWithDevice:(id)device;
@end

@implementation HMDAppleMediaAccessory

- (BOOL)supportsNetworkDiagnostics
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsNetworkDiagnostics = [capabilities supportsNetworkDiagnostics];

  return supportsNetworkDiagnostics;
}

- (HMAccessoryCapabilities)capabilitiesInternal
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_capabilitiesInternal;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDDevice)device
{
  v2 = __HMDAppleMediaAccessoryGetDeviceController(self);
  device = [v2 device];

  return device;
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)deleteSiriHistoryForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  messenger = [(HMDAppleMediaAccessory *)self messenger];
  v9 = messenger;
  if (messenger)
  {
    [messenger sendDeleteSiriHistoryRequestForAccessoryWithUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v14;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get messenger to delete siri history for accessory with uuid: %@ error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    handlerCopy[2](handlerCopy, v10);
  }
}

- (BOOL)supportsHomeHub
{
  v18 = *MEMORY[0x277D85DE8];
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  v4 = capabilities;
  if (capabilities)
  {
    supportsHomeHub = [capabilities supportsHomeHub];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      device = [(HMDAppleMediaAccessory *)selfCopy device];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = device;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supports home hub due to no capabilities or device: %@, capabilities: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    supportsHomeHub = 0;
  }

  return supportsHomeHub;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessoryLocalMessageHandler:(id)handler
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  v7 = [home accessoryWithUUID:dCopy];

  return v7;
}

- (HMDAppleMediaAccessoryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDMediaDestinationManagerFactory)mediaDestinationManagerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaDestinationManagerFactory);

  return WeakRetained;
}

- (HMDMediaDestinationControllerFactory)mediaDestinationControllerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaDestinationControllerFactory);

  return WeakRetained;
}

- (BOOL)isHH1EOLEnabled
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];

  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
  LOBYTE(home) = [homeManager isHH1EOLForResidentDeviceRunningSoftwareVersion:softwareVersion];

  return home;
}

- (void)performAfterDelay:(double)delay block:(id)block queue:(id)queue
{
  v6 = (delay * 1000000000.0);
  queueCopy = queue;
  block = block;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queueCopy, block);
}

- (id)firstCloudKitImportFutureForAppleMediaAccessorySensorManager:(id)manager
{
  v3 = +[HMDCoreData sharedInstance];
  firstCloudKitImportFuture = [v3 firstCloudKitImportFuture];

  return firstCloudKitImportFuture;
}

- (id)residentSyncClientDidSyncFutureForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  residentSyncClientDidSyncFuture = [home residentSyncClientDidSyncFuture];

  return residentSyncClientDidSyncFuture;
}

- (BOOL)isReadyForSensorPairing:(id)pairing
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  homes = [homeManager homes];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke;
  v8[3] = &unk_278685BA0;
  v9 = home;
  v6 = home;
  LOBYTE(homeManager) = [homes na_any:v8];

  return homeManager;
}

uint64_t __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)accessoriesWithHostUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  accessories = [home accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke;
  v11[3] = &unk_278681708;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [accessories na_filter:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hostAccessory];
  v4 = [v3 uuid];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  residentDeviceManager = [home residentDeviceManager];

  return residentDeviceManager;
}

- (void)renameService:(id)service name:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  nameCopy = name;
  accessory = [serviceCopy accessory];
  if (accessory)
  {
    v9 = objc_alloc(MEMORY[0x277D0F820]);
    uuid = [accessory uuid];
    v11 = [v9 initWithTarget:uuid];

    v30[0] = *MEMORY[0x277CD25F8];
    instanceID = [serviceCopy instanceID];
    v30[1] = *MEMORY[0x277CD2620];
    v31[0] = instanceID;
    v31[1] = nameCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

    v14 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD2550] destination:v11 payload:v13];
    objc_initWeak(location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __45__HMDAppleMediaAccessory_renameService_name___block_invoke;
    v25 = &unk_2786839D0;
    objc_copyWeak(&v29, location);
    v26 = serviceCopy;
    v15 = accessory;
    v27 = v15;
    v28 = nameCopy;
    [v14 setResponseHandler:&v22];
    v16 = [(HMDAccessory *)self home:v22];
    if ([v16 isCurrentDevicePrimaryResident])
    {
      [v15 _handleRenameService:v14];
    }

    else
    {
      residentSyncManager = [v16 residentSyncManager];
      [residentSyncManager performResidentRequest:v14 options:0];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v20;
      v33 = 2112;
      v34 = serviceCopy;
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to rename service %@ to %@ as it has no accessory", location, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __45__HMDAppleMediaAccessory_renameService_name___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 32);
    v12 = [*(a1 + 40) uuid];
    v13 = v8;
    v14 = v6;
    v15 = *(a1 + 48);
    v16 = HMFBooleanToString();
    *buf = 138544642;
    v19 = v11;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v15;
    v6 = v14;
    v8 = v13;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did complete renaming service %@ on accessory %@ to %@ after sensor pairing with success: %@/%@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)performLocalAddAccessoryWithDescription:(id)description progressHandlerDelegate:(id)delegate completion:(id)completion
{
  descriptionCopy = description;
  delegateCopy = delegate;
  completionCopy = completion;
  home = [(HMDAccessory *)self home];
  if (home)
  {
    objc_initWeak(&location, home);
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke;
    v15[3] = &unk_278687E08;
    objc_copyWeak(&v19, &location);
    v16 = descriptionCopy;
    v17 = delegateCopy;
    v18 = completionCopy;
    v13 = [defaultScheduler performWithQualityOfService:25 block:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained performLocalAddAccessoryWithDescription:*(a1 + 32) progressHandlerDelegate:*(a1 + 40) completion:*(a1 + 48)];
}

- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  primaryResident = [home primaryResident];
  isConfirmed = [primaryResident isConfirmed];

  return isConfirmed;
}

- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];

  return uuid;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  v7 = [home accessoryWithUUID:dCopy];

  return v7;
}

- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  accessoryBrowser = [home accessoryBrowser];

  return accessoryBrowser;
}

- (BOOL)isMatchingCachedEventPublicPairingIdentity:(id)identity
{
  identityCopy = identity;
  cachedEventPairingIdentity = [(HMDAppleMediaAccessory *)self cachedEventPairingIdentity];
  v6 = cachedEventPairingIdentity;
  if (cachedEventPairingIdentity)
  {
    publicPairingIdentity = [cachedEventPairingIdentity publicPairingIdentity];
    publicPairingIdentity2 = [identityCopy publicPairingIdentity];
    v9 = [publicPairingIdentity isEqual:publicPairingIdentity2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cachedEventPairingIdentity
{
  v26 = *MEMORY[0x277D85DE8];
  eventStoreReadHandle = [(HMDAppleMediaAccessory *)self eventStoreReadHandle];
  pairingIdentityTopic = [(HMDAppleMediaAccessory *)self pairingIdentityTopic];
  v5 = pairingIdentityTopic;
  if (eventStoreReadHandle && pairingIdentityTopic)
  {
    v6 = [eventStoreReadHandle lastEventForTopic:pairingIdentityTopic];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277D0F8A8]);
      encodedData = [v6 encodedData];
      v9 = [v7 initWithProtoData:encodedData];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v18;
          v22 = 2112;
          v23 = v6;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode cached pairing identity from event: %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
      v9 = 0;
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
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = eventStoreReadHandle;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get cached event pairing identity due missing eventStoreReadHandle: %@ topic: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v9 = 0;
  }

  return v9;
}

- (id)pairingIdentityTopic
{
  v19 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];

  uuid2 = [(HMDAccessory *)self uuid];
  v6 = uuid2;
  if (uuid && uuid2)
  {
    v7 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA80] homeUUID:uuid accessoryUUID:uuid2];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = uuid;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairing identity topic due to missing homeUUID: %@ accessoryUUID: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)forwardAccessoryPublicPairingIdentity:(id)identity
{
  v34 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  privateKey = [identityCopy privateKey];

  if (privateKey)
  {
    _HMFPreconditionFailure();
  }

  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = identityCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Forwarding accessory public pairing identity: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    eventForwarder = [(HMDAppleMediaAccessory *)selfCopy eventForwarder];
    pairingIdentityTopic = [(HMDAppleMediaAccessory *)selfCopy pairingIdentityTopic];
    if (pairingIdentityTopic && eventForwarder)
    {
      if (![(HMDAppleMediaAccessory *)selfCopy isMatchingCachedEventPublicPairingIdentity:identityCopy])
      {
        v20 = objc_alloc(MEMORY[0x277D174B0]);
        uuid = [(HMDAccessory *)selfCopy uuid];
        uUIDString = [uuid UUIDString];
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v23 = [v20 initWithSource:uUIDString cachePolicy:2 combineType:2 timestamp:?];

        v24 = objc_alloc(MEMORY[0x277D174A0]);
        pbData = [identityCopy pbData];
        v26 = [v24 initWithEventData:pbData metadata:v23];

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __64__HMDAppleMediaAccessory_forwardAccessoryPublicPairingIdentity___block_invoke;
        v27[3] = &unk_27868A250;
        v27[4] = selfCopy;
        [eventForwarder forwardEvent:v26 topic:pairingIdentityTopic completion:v27];

        goto LABEL_15;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = identityCopy;
        v16 = "%{public}@Skipping forwarding accessory public pairing identity due to matching cached pairing identity: %@";
        v17 = v14;
        v18 = OS_LOG_TYPE_INFO;
        v19 = 22;
LABEL_12:
        _os_log_impl(&dword_229538000, v17, v18, v16, buf, v19);
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v29 = v15;
        v30 = 2112;
        v31 = eventForwarder;
        v32 = 2112;
        v33 = pairingIdentityTopic;
        v16 = "%{public}@Failed to forward accessory public pairing identity due to missing dependencies eventForwarder: %@ topic: %@";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 32;
        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_15:
  }
}

void __64__HMDAppleMediaAccessory_forwardAccessoryPublicPairingIdentity___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = @" with error: ";
    v10 = 138543874;
    v11 = v7;
    if (!v3)
    {
      v8 = &stru_283CF9D50;
    }

    v12 = 2112;
    v13 = v8;
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = &stru_283CF9D50;
    }

    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Forwarded accessory public pairing identity event completed %@%@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)appleMediaProfileForAccessoryUUID:(id)d
{
  mediaProfile = [(HMDMediaAccessory *)self mediaProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = mediaProfile;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  home = [(HMDAccessory *)self home];
  actionSets = [home actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke;
  v9[3] = &unk_27867AF28;
  v9[4] = self;
  v6 = [actionSets na_filter:v9];

  v7 = [v6 count];
  return v7;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_2;
  v6[3] = &unk_27867C048;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaProfiles];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_3;
    v10[3] = &unk_27867AF00;
    v10[4] = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaProfile];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 uniqueIdentifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  allObjects = [hostedAccessories allObjects];

  os_unfair_recursive_lock_unlock();
  v7 = [allObjects na_map:&__block_literal_global_635];
  if (v7)
  {
    home = [(HMDAccessory *)self home];
    triggers = [home triggers];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_2;
    v13[3] = &unk_27867AED8;
    v14 = v7;
    v10 = [triggers na_filter:v13];

    v11 = [v10 count];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 characteristicBaseEvents];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_3;
    v10[3] = &unk_27867AEB0;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_4;
  v8[3] = &unk_2786830C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristic];
  v5 = [v4 accessory];
  v6 = [v5 uuid];
  v7 = [v3 uuid];

  v8 = [v6 hmf_isEqualToUUID:v7];
  return v8;
}

void *__115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke(uint64_t a1, void *a2)
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

- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  v6 = [hostedAccessories count];

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  room = [(HMDAccessory *)self room];
  name = [room name];
  v5 = objc_msgSend_copy(name);

  return v5;
}

- (void)_handleAudioAnalysisBulletinBoardCommit:(id)commit
{
  v34 = *MEMORY[0x277D85DE8];
  commitCopy = commit;
  home = [(HMDAccessory *)self home];
  if (_os_feature_enabled_impl())
  {
    v6 = [commitCopy BOOLForKey:*MEMORY[0x277CD20E0]];
    v7 = [commitCopy predicateForKey:*MEMORY[0x277CD20D8]];
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

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMFBooleanToString();
      *buf = 138543874;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling request to update audio analysis notification registration with enabled: %@ condition: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [HMDAudioAnalysisEventBulletinNotificationRegistration alloc];
    uuid = [(HMDAccessory *)selfCopy uuid];
    v17 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v15 initWithPredicate:v9 accessoryUUID:uuid];

    audioAnalysisBulletinNotificationManager = [home audioAnalysisBulletinNotificationManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__HMDAppleMediaAccessory__handleAudioAnalysisBulletinBoardCommit___block_invoke;
    v22[3] = &unk_27867AE88;
    v22[4] = selfCopy;
    v23 = v17;
    v24 = commitCopy;
    v25 = v9;
    v27 = v6;
    v26 = home;
    v19 = v9;
    v20 = v17;
    [audioAnalysisBulletinNotificationManager updateNotificationRegistration:v20 enabled:v6 completion:v22];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    [commitCopy respondWithError:v21];
  }
}

void __66__HMDAppleMediaAccessory__handleAudioAnalysisBulletinBoardCommit___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio analysis registration: %@, %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated audio analysis registration: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithSuccess];
    [*(a1 + 32) setAudioAnalysisEventNotificationCondition:*(a1 + 56)];
    [*(a1 + 32) setAudioAnalysisEventNotificationEnabled:*(a1 + 72)];
    v12 = [*(a1 + 64) homeManager];
    v13 = [*(a1 + 48) name];
    v14 = [*(a1 + 32) uuid];
    [v12 updateGenerationCounterWithReason:v13 sourceUUID:v14 shouldNotifyClients:1];
  }
}

- (id)logIdentifier
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_storeWiFiInfoDuringUpdate:(id)update
{
  updateCopy = update;
  backingStore = [(HMDAppleMediaAccessory *)self backingStore];

  if (backingStore)
  {
    sSID = [updateCopy SSID];
    if (sSID)
    {
      v6 = sSID;
      mACAddress = [updateCopy MACAddress];
      formattedString = [mACAddress formattedString];

      if (formattedString)
      {
        sSID2 = [updateCopy SSID];
        mACAddress2 = [updateCopy MACAddress];
        formattedString2 = [mACAddress2 formattedString];
        [(HMDAppleMediaAccessory *)self _writeWiFiInfoToWorkingStore:sSID2 MACAddress:formattedString2];
      }
    }
  }
}

- (void)_loadWiFiInfoDuringConfiguration
{
  backingStore = [(HMDAppleMediaAccessory *)self backingStore];
  if (backingStore)
  {
    v4 = backingStore;
    wifiNetworkInfo = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];

    if (!wifiNetworkInfo)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __58__HMDAppleMediaAccessory__loadWiFiInfoDuringConfiguration__block_invoke;
      v6[3] = &unk_27867AE60;
      v6[4] = self;
      [(HMDAppleMediaAccessory *)self _readWiFiInfoFromWorkingStoreWithCompletion:v6];
    }
  }
}

void __58__HMDAppleMediaAccessory__loadWiFiInfoDuringConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D0F808]) initWithMACAddressString:v6];
    v9 = [objc_alloc(MEMORY[0x277D0F958]) initWithMACAddress:v8 SSID:v5];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Loading WiFi info using previously saved info: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    os_unfair_recursive_lock_lock_with_options();
    v14 = *(a1 + 32);
    v15 = *(v14 + 552);
    *(v14 + 552) = v9;
    v16 = v9;

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v20;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Reading results in SSID: %@ MACAddress: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)_writeWiFiInfoToWorkingStore:(id)store MACAddress:(id)address
{
  v20 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  addressCopy = address;
  backingStore = [(HMDAppleMediaAccessory *)self backingStore];
  context = [backingStore context];

  if (context)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__HMDAppleMediaAccessory__writeWiFiInfoToWorkingStore_MACAddress___block_invoke;
    v14[3] = &unk_2786891E0;
    v14[4] = self;
    v15 = storeCopy;
    v16 = addressCopy;
    v17 = context;
    [v17 performBlock:v14];
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
      v19 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@BackingStore context is nil when writing wifi info", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __66__HMDAppleMediaAccessory__writeWiFiInfoToWorkingStore_MACAddress___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findAppleMediaAccessoryWithModelID:v2];

  [v3 setWifiSSID:*(a1 + 40)];
  [v3 setMacAddress:*(a1 + 48)];
  v4 = [*(a1 + 56) managedObjectContext];
  v5 = [v4 hasChanges];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) uuid];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@WiFi info saved for %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 56) save];
  }
}

- (void)_readWiFiInfoFromWorkingStoreWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  backingStore = [(HMDAppleMediaAccessory *)self backingStore];
  context = [backingStore context];

  if (context)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__HMDAppleMediaAccessory__readWiFiInfoFromWorkingStoreWithCompletion___block_invoke;
    v11[3] = &unk_27868A7A0;
    v11[4] = self;
    v12 = completionCopy;
    [context performBlock:v11];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@BackingStore context is nil when reading wifi info", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __70__HMDAppleMediaAccessory__readWiFiInfoFromWorkingStoreWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v6 = [HMCContext findAppleMediaAccessoryWithModelID:v2];

  v3 = *(a1 + 40);
  v4 = [v6 wifiSSID];
  v5 = [v6 macAddress];
  (*(v3 + 16))(v3, v4, v5);
}

- (void)updateWiFiNetworkInfoIfNeeded:(id)needed reason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  reasonCopy = reason;
  os_unfair_recursive_lock_lock_with_options();
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      wifiNetworkInfo = self->_wifiNetworkInfo;
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = wifiNetworkInfo;
      v23 = 2112;
      v24 = neededCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating WiFi info from %@ to %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    objc_storeStrong(&self->_wifiNetworkInfo, needed);
    os_unfair_recursive_lock_unlock();
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uuid = [(HMDAccessory *)v15 uuid];
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = uuid;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Saving updated WiFi info for accessory UUID: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDAppleMediaAccessory *)v15 _storeWiFiInfoDuringUpdate:neededCopy];
  }
}

- (void)_updateWiFiNetworkInfoForMessageName:(id)name response:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  responseCopy = response;
  if ([nameCopy isEqualToString:@"HMD.wiFiPicker.JoinNetworkMessage"])
  {
    if (!responseCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = [nameCopy isEqualToString:@"HMD.wiFiPicker.WifiNetworkStatusMessage"];
    if (!responseCopy || (v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = [responseCopy hmf_dataForKey:*MEMORY[0x277CCEBC0]];
  v25 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v25];
  v11 = v25;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v10)
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = nameCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Getting WiFi info: %@ from response message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    macAddress = [v10 macAddress];
    if (macAddress)
    {
      macAddress2 = [v10 macAddress];
    }

    else
    {
      macAddress2 = @"00:00:00:00:00:00";
    }

    v21 = [objc_alloc(MEMORY[0x277D0F808]) initWithMACAddressString:macAddress2];
    v22 = objc_alloc(MEMORY[0x277D0F958]);
    sSID = [v10 SSID];
    v24 = [v22 initWithMACAddress:v21 SSID:sSID BSSID:0 gatewayIPAddress:0 gatewayMACAddress:0];

    [(HMDAppleMediaAccessory *)selfCopy updateWiFiNetworkInfoIfNeeded:v24 reason:nameCopy];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v17;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@WiFi info: %@ from unarchiving response with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_20:
}

- (void)_handleWiFiPickerMessage:(id)message withName:(id)name
{
  messageCopy = message;
  nameCopy = name;
  v8 = [messageCopy mutableCopy];
  [v8 setName:nameCopy];
  [v8 setRemoteRestriction:41];
  [v8 setRemoteResponseRestriction:41];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDAppleMediaAccessory__handleWiFiPickerMessage_withName___block_invoke;
  v11[3] = &unk_278689460;
  objc_copyWeak(&v14, &location);
  v9 = messageCopy;
  v12 = v9;
  v10 = nameCopy;
  v13 = v10;
  [(HMDAppleMediaAccessory *)self _relayRequestMessage:v8 responseHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __60__HMDAppleMediaAccessory__handleWiFiPickerMessage_withName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v11)
    {
      [*(a1 + 32) respondWithError:v11];
    }

    else
    {
      v10 = objc_msgSend_copy(v5);
      [v7 respondWithPayload:v10];

      [WeakRetained _updateWiFiNetworkInfoForMessageName:*(a1 + 40) response:v5];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 respondWithError:v9];
  }
}

- (id)_dumpStateCachedSettingsForHome:(id)home accessory:(id)accessory eventStoreReadHandle:(id)handle
{
  v46 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  handleCopy = handle;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = objc_alloc_init(HMDAccessorySettingsEventHelper);
  v27 = accessoryCopy;
  v28 = homeCopy;
  [(HMDAccessorySettingsEventHelper *)v26 allTopicsForHome:homeCopy accessory:accessoryCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    v30 = handleCopy;
    do
    {
      v13 = 0;
      v32 = v11;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = [handleCopy lastEventForTopic:v14];
        if (v15)
        {
          v34 = 0;
          v16 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v15 error:&v34];
          v17 = v34;
          if (v17)
          {
            v18 = v17;
            v19 = v12;
            v20 = objc_autoreleasePoolPush();
            selfCopy = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v40 = v23;
              v41 = 2112;
              v42 = v14;
              v43 = 2112;
              v44 = v18;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Error decoding stored setting for topic %@, error: %@", buf, 0x20u);

              handleCopy = v30;
            }

            objc_autoreleasePoolPop(v20);
            v12 = v19;
            v11 = v32;
          }

          else
          {
            if (!v16)
            {
              goto LABEL_14;
            }

            v18 = [v16 description];
            keyPath = [v16 keyPath];
            [dictionary setObject:v18 forKeyedSubscript:keyPath];
          }
        }

LABEL_14:

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v11);
  }

  return dictionary;
}

- (id)dumpStateLocalSettings
{
  v21 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  v4 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if (homeManager)
    {
      uuid = [v4 uuid];
      uuid2 = [(HMDAccessory *)self uuid];
      eventStoreReadHandle = [homeManager eventStoreReadHandle];
      v9 = [(HMDAppleMediaAccessory *)self _dumpStateCachedSettingsForHome:uuid accessory:uuid2 eventStoreReadHandle:eventStoreReadHandle];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Media accessory that has a home but does not have home manager", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v9 = MEMORY[0x277CBEC10];
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
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Media accessory does not have a home", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (id)dumpSimpleState
{
  v12.receiver = self;
  v12.super_class = HMDAppleMediaAccessory;
  dumpSimpleState = [(HMDMediaAccessory *)&v12 dumpSimpleState];
  v4 = [dumpSimpleState mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 hmf_stringForKey:*MEMORY[0x277D0F170]];
  device = [(HMDAppleMediaAccessory *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v10 = [v6 stringByAppendingFormat:@", device: %@", uUIDString];

  [v4 setObject:v10 forKeyedSubscript:v5];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v19.receiver = self;
  v19.super_class = HMDAppleMediaAccessory;
  v4 = [(HMDMediaAccessory *)&v19 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277D0F170];
  v7 = [v5 hmf_stringForKey:*MEMORY[0x277D0F170]];
  variant = [(HMDAppleMediaAccessory *)self variant];
  if (variant)
  {
    if (variant)
    {
      v9 = @"Original HomePod";
    }

    else if ((variant & 2) != 0)
    {
      v9 = @"HomePod Mini";
    }

    else if ((variant & 4) != 0)
    {
      v9 = @"2nd Generation HomePod";
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (0x%tx)", variant];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 stringByAppendingFormat:@", variant: %@", v9];

  device = [(HMDAppleMediaAccessory *)self device];
  v12 = [device description];
  v13 = [v10 stringByAppendingFormat:@", device: %@", v12];

  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  allObjects = [hostedAccessories allObjects];
  v16 = [allObjects na_map:&__block_literal_global_618_142943];
  v17 = [v13 stringByAppendingFormat:@", hosted accessory uuids: %@", v16];

  os_unfair_recursive_lock_unlock();
  [v5 setObject:v17 forKeyedSubscript:v6];

  return v5;
}

id __52__HMDAppleMediaAccessory_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)encodeFlagsFromHostedAccessories:(id)accessories coder:(id)coder
{
  accessoriesCopy = accessories;
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    v6 = [accessoriesCopy na_reduceWithInitialValue:&unk_283E73070 reducer:&__block_literal_global_604];
    [coderCopy encodeObject:v6 forKey:@"accessoryFlagsCodingKey"];
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    __65__HMDAppleMediaAccessory_encodeFlagsFromHostedAccessories_coder___block_invoke(v7, v8, v9);
  }
}

id __65__HMDAppleMediaAccessory_encodeFlagsFromHostedAccessories_coder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x277CCABB0];
  v6 = [a3 unsignedIntegerValue];
  v7 = v4;
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

  v10 = [v9 accessoryFlags];

  v11 = [v5 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") | v6}];

  return v11;
}

- (void)encodeServicesFromHostedAccessories:(id)accessories coder:(id)coder
{
  accessoriesCopy = accessories;
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    v6 = [accessoriesCopy na_flatMap:&__block_literal_global_595];
    v7 = [accessoriesCopy na_firstObjectPassingTest:&__block_literal_global_598_142955];
    dataSource = [v7 dataSource];
    hapMetadata = [dataSource hapMetadata];

    [HMDHAPAccessory encodeServices:v6 forXPCCoder:coderCopy metadata:hapMetadata];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke_2(v10, v11);
  }
}

BOOL __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke_2(uint64_t a1, void *a2)
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
  v5 = [v4 dataSource];

  v6 = [v5 hapMetadata];
  v7 = v6 != 0;

  return v7;
}

id __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke(uint64_t a1, void *a2)
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
  v5 = [v4 services];

  return v5;
}

- (void)_encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  hmd_homeManagerOptions = [coderCopy hmd_homeManagerOptions];
  v51.receiver = self;
  v51.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v51 encodeWithCoder:coderCopy];
  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];
  v9 = pairingIdentity;
  if ((hmd_isForXPCTransport & 1) == 0)
  {
    if (hmd_isForLocalStore)
    {
      [coderCopy encodeObject:pairingIdentity forKey:*MEMORY[0x277CCEC20]];
      publicPairingIdentity = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessory fixedPairingIdentityInCloud](self, "fixedPairingIdentityInCloud")}];
      v11 = @"HM.FixedPairingIdentityInCloudCodingKey";
LABEL_6:
      [coderCopy encodeObject:publicPairingIdentity forKey:v11];

      goto LABEL_7;
    }

    if (pairingIdentity)
    {
      publicPairingIdentity = [pairingIdentity publicPairingIdentity];
      v11 = *MEMORY[0x277CCEC20];
      goto LABEL_6;
    }
  }

LABEL_7:
  if ((hmd_homeManagerOptions & 0x841) == 0 && ((hmd_homeManagerOptions & 0x10) == 0 || ![(HMDAppleMediaAccessory *)self isCurrentAccessory]))
  {
LABEL_16:
    if (hmd_isForLocalStore)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ([coderCopy hmd_isForXPCTransport])
  {
    if (![coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
    {
      goto LABEL_16;
    }

    deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
    deviceIRK = [(HMDAppleMediaAccessory *)self deviceIRK];
    rpIdentity = [deviceForDirectMessaging rpIdentity];

    if (!rpIdentity && deviceIRK)
    {
      v15 = objc_alloc(MEMORY[0x277D0F7F8]);
      v16 = [v15 initWithType:*MEMORY[0x277D0F1B8] size:*MEMORY[0x277D0F1B0] data:deviceIRK];
      v17 = [[HMDRPIdentity alloc] initWithDeviceIRK:v16];
      [deviceForDirectMessaging setRpIdentity:v17];
    }

    idsIdentifier = [deviceForDirectMessaging idsIdentifier];
    [coderCopy encodeObject:idsIdentifier forKey:@"HM.accountIdentifier"];

    [coderCopy encodeObject:deviceForDirectMessaging forKey:*MEMORY[0x277CCEA18]];
    deviceIRK2 = [(HMDAppleMediaAccessory *)self deviceIRK];
    [coderCopy encodeObject:deviceIRK2 forKey:*MEMORY[0x277CCEA20]];
  }

  else
  {
    deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self device];
    [coderCopy encodeObject:deviceForDirectMessaging forKey:*MEMORY[0x277CCEA18]];
  }

  if (hmd_isForLocalStore)
  {
LABEL_21:
    isAudioAnalysisEventNotificationEnabled = [(HMDAppleMediaAccessory *)self isAudioAnalysisEventNotificationEnabled];
    [coderCopy encodeBool:isAudioAnalysisEventNotificationEnabled forKey:*MEMORY[0x277CCE800]];
    audioAnalysisEventNotificationCondition = [(HMDAppleMediaAccessory *)self audioAnalysisEventNotificationCondition];
    [coderCopy encodeObject:audioAnalysisEventNotificationCondition forKey:*MEMORY[0x277CCE7F8]];

    goto LABEL_22;
  }

LABEL_20:
  if ([coderCopy hmd_isForXPCTransport])
  {
    goto LABEL_21;
  }

LABEL_22:
  isHH1EOLEnabled = [(HMDAppleMediaAccessory *)self isHH1EOLEnabled];
  [coderCopy encodeBool:isHH1EOLEnabled forKey:*MEMORY[0x277CCEAD8]];
  if ((hmd_homeManagerOptions & 0x41) != 0 || [(HMDAppleMediaAccessory *)self isCurrentAccessory]&& (hmd_homeManagerOptions & 0x10) != 0)
  {
    if ([coderCopy hmd_isForXPCTransport])
    {
      isDeviceReachable = [(HMDAppleMediaAccessory *)self isDeviceReachable];
      [coderCopy encodeBool:isDeviceReachable forKey:*MEMORY[0x277CCE9D8]];
      if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
      {
        supportsTargetControl = [(HMDAppleMediaAccessory *)self supportsTargetControl];
        [coderCopy encodeBool:supportsTargetControl forKey:*MEMORY[0x277CCF050]];
        supportsCompanionInitiatedRestart = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedRestart];
        [coderCopy encodeBool:supportsCompanionInitiatedRestart forKey:*MEMORY[0x277CCEF88]];
        supportsCompanionInitiatedObliterate = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedObliterate];
        [coderCopy encodeBool:supportsCompanionInitiatedObliterate forKey:*MEMORY[0x277CCEF80]];
        supportsAudioAnalysis = [(HMDAppleMediaAccessory *)self supportsAudioAnalysis];
        [coderCopy encodeBool:supportsAudioAnalysis forKey:*MEMORY[0x277CCEF58]];
        supportsDropIn = [(HMDAppleMediaAccessory *)self supportsDropIn];
        [coderCopy encodeBool:supportsDropIn forKey:*MEMORY[0x277CCEFA8]];
        supportsThirdPartyMusic = [(HMDAppleMediaAccessory *)self supportsThirdPartyMusic];
        [coderCopy encodeBool:supportsThirdPartyMusic forKey:*MEMORY[0x277CCF028]];
        supportsPreferredMediaUser = [(HMDAppleMediaAccessory *)self supportsPreferredMediaUser];
        [coderCopy encodeBool:supportsPreferredMediaUser forKey:*MEMORY[0x277CCF000]];
        supportsCoordinationDoorbellChime = [(HMDAppleMediaAccessory *)self supportsCoordinationDoorbellChime];
        [coderCopy encodeBool:supportsCoordinationDoorbellChime forKey:*MEMORY[0x277CCEF90]];
        supportsMediaContentProfile = [(HMDAppleMediaAccessory *)self supportsMediaContentProfile];
        [coderCopy encodeBool:supportsMediaContentProfile forKey:*MEMORY[0x277CCEFD8]];
        [coderCopy encodeBool:1 forKey:*MEMORY[0x277CCEAF8]];
        if (_os_feature_enabled_impl())
        {
          supportsRMVonAppleTV = [(HMDAppleMediaAccessory *)self supportsRMVonAppleTV];
          [coderCopy encodeBool:supportsRMVonAppleTV forKey:*MEMORY[0x277CCF010]];
        }

        supportsJustSiri = [(HMDAppleMediaAccessory *)self supportsJustSiri];
        [coderCopy encodeBool:supportsJustSiri forKey:*MEMORY[0x277CCEFB8]];
        os_unfair_recursive_lock_lock_with_options();
        hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
        allObjects = [hostedAccessories allObjects];

        os_unfair_recursive_lock_unlock();
        [(HMDAppleMediaAccessory *)self encodeServicesFromHostedAccessories:allObjects coder:coderCopy];
        [(HMDAppleMediaAccessory *)self encodeFlagsFromHostedAccessories:allObjects coder:coderCopy];
        home = [(HMDAccessory *)self home];
        isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
        [coderCopy encodeBool:isCurrentDeviceConfirmedPrimaryResident forKey:*MEMORY[0x277CCEB20]];
      }

      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory homePodVariant](self, "homePodVariant")}];
        [coderCopy encodeObject:v39 forKey:*MEMORY[0x277CD04D0]];
      }

      supportsStereoOdeonTTSUBypassingPrimary = [(HMDAppleMediaAccessory *)self supportsStereoOdeonTTSUBypassingPrimary];
      [coderCopy encodeBool:supportsStereoOdeonTTSUBypassingPrimary forKey:*MEMORY[0x277CCF020]];
      supportsNetworkDiagnostics = [(HMDAppleMediaAccessory *)self supportsNetworkDiagnostics];
      [coderCopy encodeBool:supportsNetworkDiagnostics forKey:*MEMORY[0x277CCEFF8]];
      supportsCrossfadeAsAirPlaySource = [(HMDAppleMediaAccessory *)self supportsCrossfadeAsAirPlaySource];
      [coderCopy encodeBool:supportsCrossfadeAsAirPlaySource forKey:*MEMORY[0x277CCEF98]];
      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        supportsManagedConfigurationProfile = [(HMDAppleMediaAccessory *)self supportsManagedConfigurationProfile];
        [coderCopy encodeBool:supportsManagedConfigurationProfile forKey:*MEMORY[0x277CCEFC0]];
        supportsMessagedHomePodSettings = [(HMDAppleMediaAccessory *)self supportsMessagedHomePodSettings];
        [coderCopy encodeBool:supportsMessagedHomePodSettings forKey:*MEMORY[0x277CCEFE0]];
      }

      supportsSoftwareUpdateV2 = [(HMDAppleMediaAccessory *)self supportsSoftwareUpdateV2];
      [coderCopy encodeBool:supportsSoftwareUpdateV2 forKey:*MEMORY[0x277CCF018]];
    }

    if (![coderCopy hmd_isForXPCTransport] || objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
      [coderCopy encodeObject:softwareVersion forKey:*MEMORY[0x277CCEF18]];

      wifiNetworkInfo = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
      [coderCopy encodeObject:wifiNetworkInfo forKey:*MEMORY[0x277CCF108]];

      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
      [coderCopy encodeObject:v48 forKey:*MEMORY[0x277CD11A8]];

      productColor = [(HMDAppleMediaAccessory *)self productColor];
      [coderCopy encodeInteger:productColor forKey:*MEMORY[0x277CD0C90]];
      [(HMDAppleMediaAccessory *)self _encodeMediaDestinationAndControllerDataWithCoder:coderCopy];
    }

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForXPCTransport") && objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      remoteLoginHandler = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
      [coderCopy encodeObject:remoteLoginHandler forKey:*MEMORY[0x277CCEC98]];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDAppleMediaAccessory *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (void)removeHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [hostedAccessories removeObject:accessoryCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)addHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [hostedAccessories addObject:accessoryCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy hmd_isForLocalStore])
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self committedAudioDestination];
  }

  else
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self audioDestination];
  }
  v5 = ;
  [coderCopy encodeObject:committedAudioDestinationControllerData forKey:*MEMORY[0x277CCE818]];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CCE808]];
}

- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)coder
{
  coderCopy = coder;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    [(HMDAppleMediaAccessory *)self _legacyEncodeMediaDestinationAndControllerDataWithCoder:coderCopy];
  }

  else
  {
    audioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [coderCopy encodeObject:audioDestinationControllerData forKey:*MEMORY[0x277CCE818]];

    audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
    [coderCopy encodeObject:audioDestination forKey:*MEMORY[0x277CCE808]];
  }
}

- (id)_initWithCoder:(id)coder
{
  v63 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v60.receiver = self;
  v60.super_class = HMDAppleMediaAccessory;
  v5 = [(HMDMediaAccessory *)&v60 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
    dependencyFactory = v5->_dependencyFactory;
    v5->_dependencyFactory = v6;

    deviceMediaRouteIdentifierFactory = v5->_deviceMediaRouteIdentifierFactory;
    v5->_deviceMediaRouteIdentifierFactory = &__block_literal_global_581;

    settingsConnectionFactory = v5->_settingsConnectionFactory;
    v5->_settingsConnectionFactory = &__block_literal_global_583;

    if ([coderCopy hmd_isHH2MigrationInProgress] && -[HMDAppleMediaAccessory isHomePod](v5, "isHomePod"))
    {
      [(HMDAppleMediaAccessory *)v5 setVariant:1];
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEA18]];
    device = v5->_device;
    v5->_device = v10;

    if (v5->_device)
    {
      v12 = [(HMDAppleMediaAccessoryDependencyFactory *)v5->_dependencyFactory deviceControllerWithDevice:?];
      deviceController = v5->_deviceController;
      v5->_deviceController = v12;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEF18]];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF108]];
    wifiNetworkInfo = v5->_wifiNetworkInfo;
    v5->_wifiNetworkInfo = v18;

    objc_storeStrong(&v5->_lastStagedWifiNetworkInfo, v5->_wifiNetworkInfo);
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC98]];
    remoteLoginHandler = v5->_remoteLoginHandler;
    v5->_remoteLoginHandler = v20;

    if (!v5->_remoteLoginHandler)
    {
      v22 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v5 loggedInAccountData:0];
      v23 = v5->_remoteLoginHandler;
      v5->_remoteLoginHandler = v22;
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.FixedPairingIdentityInCloudCodingKey"];
    v25 = v24;
    if (v24)
    {
      LOBYTE(v24) = [v24 BOOLValue];
    }

    v5->_fixedPairingIdentityInCloud = v24;
    v26 = *MEMORY[0x277CCE810];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CCE810]])
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v5;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Decoding destination controller data using legacy encoding", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDMediaDestinationController"];
      v31 = objc_opt_class();
      v32 = coderCopy;
      v33 = v26;
    }

    else
    {
      v31 = objc_opt_class();
      v33 = *MEMORY[0x277CCE818];
      v32 = coderCopy;
    }

    v34 = [v32 decodeObjectOfClass:v31 forKey:v33];
    committedAudioDestinationControllerData = v5->_committedAudioDestinationControllerData;
    v5->_committedAudioDestinationControllerData = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE808]];
    committedAudioDestination = v5->_committedAudioDestination;
    v5->_committedAudioDestination = v36;

    v38 = v5->_committedAudioDestination;
    if (v38)
    {
      parentIdentifier = [(HMMediaDestination *)v38 parentIdentifier];
      v40 = parentIdentifier;
      if (!parentIdentifier || ([parentIdentifier UUIDString], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isEqualToString:", *MEMORY[0x277CD0860]), v41, v42))
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v5;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543362;
          v62 = v46;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@No parent identifier given was given - fixing bad legacy encoding state", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v43);
        v47 = objc_alloc(MEMORY[0x277CD1B80]);
        uniqueIdentifier = [(HMMediaDestination *)v5->_committedAudioDestination uniqueIdentifier];
        uuid = [(HMDAccessory *)v44 uuid];
        supportedOptions = [(HMMediaDestination *)v5->_committedAudioDestination supportedOptions];
        audioGroupIdentifier = [(HMMediaDestination *)v5->_committedAudioDestination audioGroupIdentifier];
        v52 = [v47 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:uuid supportedOptions:supportedOptions audioGroupIdentifier:audioGroupIdentifier];
        v53 = v5->_committedAudioDestination;
        v5->_committedAudioDestination = v52;
      }
    }

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD11A8]];
    v5->_supportedStereoPairVersions = [v54 unsignedIntegerValue];

    __bootstrapSupportedStereoPairVersions(v5);
    [(HMDAccessory *)v5 decodePreferredMediaUser:coderCopy];
    v55 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
    uuid2 = [(HMDAccessory *)v5 uuid];
    v57 = [(HMDAppleMediaAccessorySleepWakeStateController *)v55 initWithAccessoryUUID:uuid2 dataSource:v5];
    sleepWakeStateController = v5->_sleepWakeStateController;
    v5->_sleepWakeStateController = v57;

    v5->_productColor = [coderCopy decodeIntegerForKey:*MEMORY[0x277CD0C90]];
  }

  return v5;
}

id __41__HMDAppleMediaAccessory__initWithCoder___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAppleMediaAccessory *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)accessoryInfoController:(id)controller didUpdateWifiInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  self->_wifiNetworkInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (id)currentAccessorySoftwareVersion
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];

  return softwareVersion;
}

- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)controller
{
  v4 = MEMORY[0x277CD16F0];
  v5 = *MEMORY[0x277CCEAA0];
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v9 = [v4 topicFromSuffixID:v5 homeUUID:uuid accessoryUUID:uuid2];

  return v9;
}

- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)controller
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)accessoryInfoControllerTopicForWifiInfo
{
  v3 = MEMORY[0x277CD16F0];
  v4 = *MEMORY[0x277CCEAA8];
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v8 = [v3 topicFromSuffixID:v4 homeUUID:uuid accessoryUUID:uuid2];

  return v8;
}

- (HMDCurrentAccessorySetupMetricDispatcher)currentAccessorySetupMetricDispatcher
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];

  return currentAccessorySetupMetricDispatcher;
}

- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)controller
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)controller:(id)controller topicForKeyPath:(id)path
{
  pathCopy = path;
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v9 = MEMORY[0x22AAD2730](uuid, uuid2, pathCopy);

  return v9;
}

- (HMELastEventStoreReadHandle)eventStoreReadHandle
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  eventStoreReadHandle = [homeManager eventStoreReadHandle];

  return eventStoreReadHandle;
}

- (id)subscriptionProvider
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  localAndRemoteSubscriptionProvider = [homeManager localAndRemoteSubscriptionProvider];

  return localAndRemoteSubscriptionProvider;
}

- (HMEEventForwarder)eventForwarder
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  eventForwarder = [homeManager eventForwarder];

  return eventForwarder;
}

- (HMMLogEventSubmitting)logEventSubmitter
{
  home = [(HMDAccessory *)self home];
  logEventSubmitter = [home logEventSubmitter];

  return logEventSubmitter;
}

- (id)homeUUID
{
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)languagesChangedForAccessorySettingsController:(id)controller
{
  v8[1] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  if (home)
  {
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    v7 = @"HMDHomeNotificationKey";
    v8[0] = home;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryLanguagesChangedNotification" object:self userInfo:v6];
  }
}

- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller
{
  v10[1] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  currentUser = [home currentUser];
  assistantAccessControl = [currentUser assistantAccessControl];
  v10[0] = self;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [assistantAccessControl assistantAccessControlModelWithRemovedAccessories:v7];

  return v8;
}

- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target
{
  targetCopy = target;
  device = [(HMDAppleMediaAccessory *)self device];

  if (device)
  {
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    device2 = [(HMDAppleMediaAccessory *)self device];
    v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:targetCopy device:device2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller
{
  home = [(HMDAccessory *)self home];
  isMultiUserEnabled = [home isMultiUserEnabled];

  return isMultiUserEnabled;
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason
{
  reasonCopy = reason;
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];

  uuid = [(HMDAccessory *)self uuid];
  [homeManager updateGenerationCounterWithReason:reasonCopy sourceUUID:uuid shouldNotifyClients:1];
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model
{
  reasonCopy = reason;
  home = [(HMDAccessory *)self home];
  [home saveWithReason:reasonCopy postSyncNotification:0 objectChange:model != 0];
}

- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v19 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:&v19];
  v9 = v19;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      identifier = [v8 identifier];
      *buf = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = identifier;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    identifier2 = [v8 identifier];
    [(HMDAppleMediaAccessory *)selfCopy _removeManagedConfigurationProfileWithIdentifier:identifier2 completion:completionCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get managed configuration profile: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    identifier2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, identifier2);
  }
}

- (id)modelsToMigrateSettingsForController:(id)controller
{
  v4 = objc_alloc_init(HMDAccessorySettingsMetadata);
  if (v4 && ([(HMDAppleMediaAccessory *)self settingsController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    settingsController = [(HMDAppleMediaAccessory *)self settingsController];
    v7 = [settingsController mergeWithSettingsMetadata:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding root settings", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(HMDAccessorySettingsMetadata);
  v13 = v12;
  if (v12)
  {
    rootGroup = [(HMDAccessorySettingsMetadata *)v12 rootGroup];
    v15 = [rootGroup modelsWithParentIdentifier:dCopy];

    if ([v15 count])
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (double)setupStartTimestamp
{
  home = [(HMDAccessory *)self home];
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];
  [homeManager setSetupStartTimestamp:timestamp];
}

- (void)setSetupActivity:(id)activity
{
  activityCopy = activity;
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  [homeManager setSetupActivity:activityCopy];
}

- (HMDAccessorySetupMetricDispatcher)accessorySetupMetricDispatcher
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  uuid = [(HMDAccessory *)self uuid];
  v6 = [homeManager accessorySetupMetricDispatcherForAccessoryUUID:uuid];

  return v6;
}

- (HMFActivity)setupActivity
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  setupActivity = [homeManager setupActivity];

  return setupActivity;
}

- (HMDBackingStore)backingStore
{
  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];

  return backingStore;
}

- (void)mediaDestinationManagerDidUpdateStagedValues:(id)values
{
  v19 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination manager did update staged values", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    v11 = *MEMORY[0x277CD0880];
    uuid = [(HMDAccessory *)selfCopy uuid];
    [homeManager updateGenerationCounterWithReason:v11 sourceUUID:uuid shouldNotifyClients:1];

    [homeManager assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to handle expired values due to no home manager", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (id)mediaDestinationManagerWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center backingStore:(id)store targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  sourceCopy = source;
  storeCopy = store;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  destinationCopy = destination;
  v21 = [[HMDMediaDestinationManager alloc] initWithDestination:destinationCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy backingStore:storeCopy targetDevice:deviceCopy dataSource:sourceCopy delegate:delegateCopy];

  return v21;
}

- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];

  return mediaGroupParticipantDataLocalStorage;
}

- (id)rootDestinationManagerForMediaDestinationManager:(id)manager
{
  managerCopy = manager;
  home = [(HMDAccessory *)self home];
  identifier = [managerCopy identifier];

  v7 = [home rootDestinationManagerWithDescendantDestinationIdentifier:identifier];

  return v7;
}

- (id)mediaDestinationManager:(id)manager destinationControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v7 = [home destinationControllerWithIdentifier:identifierCopy];

  return v7;
}

- (id)mediaDestinationControllerWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1
{
  delegateCopy = delegate;
  sourceCopy = source;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  storeCopy = store;
  dataCopy = data;
  LOBYTE(v27) = device;
  v25 = [[HMDMediaDestinationController alloc] initWithData:dataCopy backingStore:storeCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy logEventSubmitter:submitterCopy dailyScheduler:schedulerCopy targetDevice:v27 dataSource:sourceCopy delegate:delegateCopy];

  return v25;
}

- (void)mediaDestinationControllerDidUpdateStagedValues:(id)values
{
  v19 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller did update staged values", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    v11 = *MEMORY[0x277CD0880];
    uuid = [(HMDAccessory *)selfCopy uuid];
    [homeManager updateGenerationCounterWithReason:v11 sourceUUID:uuid shouldNotifyClients:1];

    [homeManager assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to handle expired values due to no home manager", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher
{
  v16 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  audioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  v6 = audioDestinationControllerData;
  if (audioDestinationControllerData)
  {
    destinationIdentifier = [audioDestinationControllerData destinationIdentifier];
    if (destinationIdentifier)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:](self, "mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:", dispatcherCopy, destinationIdentifier)}];
    }

    else
    {
      v8 = 0;
    }
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get controller data for media destination controller metrics", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = &unk_283E73058;
  }

  return v8;
}

- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)dispatcher destinationTypeForDestinationWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home destinationTypeForDestinationWithIdentifier:identifierCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination identifier from parent destination identifier: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher
{
  home = [(HMDAccessory *)self home];
  currentUser = [home currentUser];

  return currentUser;
}

- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)controller
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  home = [(HMDAccessory *)self home];
  v6 = home;
  if (home)
  {
    homeManager = [home homeManager];
    v8 = homeManager;
    if (homeManager)
    {
      mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
      v10 = mediaGroupParticipantDataLocalStorage;
      if (mediaGroupParticipantDataLocalStorage)
      {
        v11 = mediaGroupParticipantDataLocalStorage;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v25 = 138543618;
          v26 = v23;
          v27 = 2112;
          v28 = v8;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage on home manager: %@", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v19;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage due to no home manager on home: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v10 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage due to no home", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v10 = 0;
  }

  return v10;
}

- (id)mediaDestinationController:(id)controller rootDestinationWithDecendantIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home rootDestinationManagerWithDescendantDestinationIdentifier:identifierCopy];
    destination = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive root destination from destination identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    destination = 0;
  }

  return destination;
}

- (id)mediaDestinationController:(id)controller destinationWithParentIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home destinationManagerWithParentIdentifier:identifierCopy];
    destination = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination from parent identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    destination = 0;
  }

  return destination;
}

- (id)mediaDestinationController:(id)controller destinationManagerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  mediaDestinationManagersWithHomeTheaterSupportedOptions = [home mediaDestinationManagersWithHomeTheaterSupportedOptions];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke;
  v11[3] = &unk_27867ADF8;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [mediaDestinationManagersWithHomeTheaterSupportedOptions na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)availableDestinationIdentifiersForMediaDestinationController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  room = [(HMDAccessory *)self room];
  v6 = [home mediaDestinationsInRoom:room];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 containsHomeTheaterSupportedOptions])
        {
          uniqueIdentifier = [v13 uniqueIdentifier];
          [v7 addObject:uniqueIdentifier];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = objc_msgSend_copy(v7);

  return v15;
}

- (void)handleRemovedMediaDestinationControllerModel:(id)model message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = modelCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination controller model: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  audioDestinationController = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
  uuid = [modelCopy uuid];
  identifier = [audioDestinationController identifier];
  v15 = [uuid hmf_isEqualToUUID:identifier];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = audioDestinationController;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination controller: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationController:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestinationControllerData];
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];
  }

  [messageCopy respondWithSuccess];
}

- (void)handleRemovedMediaDestinationModel:(id)model message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = modelCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination model: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  uuid = [modelCopy uuid];
  audioDestination = [(HMDAppleMediaAccessory *)selfCopy audioDestination];
  uniqueIdentifier = [audioDestination uniqueIdentifier];
  v15 = [uuid hmf_isEqualToUUID:uniqueIdentifier];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination manager due to removed model transaction", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    audioDestinationManager = [(HMDAppleMediaAccessory *)v17 audioDestinationManager];
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationManager:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestination];
    messageHandler = [audioDestinationManager messageHandler];
    [messageHandler handleUpdatedDestination:0];

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];
  }

  [messageCopy respondWithSuccess];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
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
    [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationModel:v9 message:messageCopy];
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
      [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationControllerModel:v12 message:messageCopy];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = HMDAppleMediaAccessory;
      [(HMDAccessory *)&v13 transactionObjectRemoved:v10 message:messageCopy];
    }
  }
}

- (void)handleUpdatedMediaDestinationModel:(id)model message:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
    v13 = audioDestinationManager;
    if (audioDestinationManager)
    {
      backingStoreHandler = [audioDestinationManager backingStoreHandler];
      [backingStoreHandler transactionObjectUpdated:modelCopy newValues:modelCopy message:messageCopy];
    }

    else
    {
      home = [(HMDAccessory *)self home];
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (home)
      {
        v39 = home;
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v20;
          v42 = 2112;
          v43 = modelCopy;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination manager with model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        supportedOptions = [modelCopy supportedOptions];
        unsignedIntegerValue = [supportedOptions unsignedIntegerValue];

        audioGroupIdentifier = [modelCopy audioGroupIdentifier];
        v24 = objc_alloc(MEMORY[0x277CD1B80]);
        uuid = [modelCopy uuid];
        parentUUID = [modelCopy parentUUID];
        v27 = [v24 initWithUniqueIdentifier:uuid parentIdentifier:parentUUID supportedOptions:unsignedIntegerValue audioGroupIdentifier:audioGroupIdentifier];

        v28 = [HMDMediaDestinationManager alloc];
        msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
        notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
        backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
        v32 = [(HMDMediaDestinationManager *)v28 initWithDestination:v27 messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:[(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory] dataSource:selfCopy delegate:selfCopy];
        [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationManager:v32];

        audioDestinationManager2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
        home = v39;
        [audioDestinationManager2 configureWithHome:v39 currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy, "isCurrentAccessory")}];

        audioDestinationManager3 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
        messageHandler = [audioDestinationManager3 messageHandler];
        [messageHandler handleUpdatedDestination:v27];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markSaveToAssistant];

        [messageCopy respondWithSuccess];
      }

      else
      {
        if (v19)
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v38;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to create audio destination manager due to no home", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        audioGroupIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [messageCopy respondWithError:audioGroupIdentifier];
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v11;
      v42 = 2112;
      v43 = modelCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping model: %@ due to home theater QFA", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)handleUpdatedMediaDestinationControllerModel:(id)model message:(id)message
{
  v62 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
    v13 = audioDestinationController;
    if (audioDestinationController)
    {
      backingStoreHandler = [audioDestinationController backingStoreHandler];
      [backingStoreHandler transactionObjectUpdated:modelCopy newValues:modelCopy message:messageCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v18;
        v52 = 2112;
        v53 = modelCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination controller with model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      availableDestinationModelIdentifiers = [modelCopy availableDestinationModelIdentifiers];
      v20 = availableDestinationModelIdentifiers;
      v21 = MEMORY[0x277CBEBF8];
      if (availableDestinationModelIdentifiers)
      {
        v21 = availableDestinationModelIdentifiers;
      }

      v22 = v21;

      v23 = objc_alloc(MEMORY[0x277CD1B90]);
      uuid = [modelCopy uuid];
      parentUUID = [modelCopy parentUUID];
      destinationModelIdentifier = [modelCopy destinationModelIdentifier];
      supportedOptions = [modelCopy supportedOptions];
      v48 = v22;
      v49 = [v23 initWithIdentifier:uuid parentIdentifier:parentUUID destinationIdentifier:destinationModelIdentifier supportedOptions:objc_msgSend(supportedOptions availableDestinationIdentifiers:{"unsignedIntegerValue"), v22}];

      home = [(HMDAccessory *)selfCopy home];
      backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
      msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
      logEventSubmitter = [home logEventSubmitter];
      v47 = home;
      dailyScheduler = [home dailyScheduler];
      v34 = dailyScheduler;
      if (backingStore && msgDispatcher && notificationCenter && logEventSubmitter && dailyScheduler)
      {
        v35 = [HMDMediaDestinationController alloc];
        LOBYTE(v44) = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
        v36 = [(HMDMediaDestinationController *)v35 initWithData:v49 backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:v34 targetDevice:v44 dataSource:selfCopy delegate:selfCopy];
        [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationController:v36];

        audioDestinationController2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
        v38 = v47;
        [audioDestinationController2 configureWithHome:v47];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markSaveToAssistant];

        v41 = v49;
        [messageCopy respondWithSuccess];
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v42 = selfCopy;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138544642;
          v51 = v45;
          v52 = 2112;
          v53 = backingStore;
          v54 = 2112;
          v55 = msgDispatcher;
          v56 = 2112;
          v57 = notificationCenter;
          v58 = 2112;
          v59 = logEventSubmitter;
          v60 = 2112;
          v61 = v34;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new audio destination controller due to missing dependencies backing store: %@ message dispatcher: %@ notification center: %@ log submitter: %@ daily scheduler: %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        v41 = v49;
        v38 = v47;
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v11;
      v52 = 2112;
      v53 = modelCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping transaction update: %@ due to Home Theater QFA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)handleTransactionUpdatedPublicPairingIdentity:(id)identity result:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  resultCopy = result;
  if (![(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = identityCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated accessory public pairing identity: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    pairingIdentity = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
    v13 = [pairingIdentity isEqual:identityCopy];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Skipping already saved pairing identity", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      [(HMDAppleMediaAccessory *)selfCopy setPairingIdentity:identityCopy];
      [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];
      [resultCopy markChanged];
    }
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
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

  if (v13)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__143014;
    v28 = __Block_byref_object_dispose__143015;
    v29 = 0;
    responseHandler = [messageCopy responseHandler];
    if (responseHandler)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27867ADD0;
      aBlock[4] = &v24;
      v15 = _Block_copy(aBlock);
      [messageCopy setResponseHandler:v15];
    }

    v22.receiver = self;
    v22.super_class = HMDAppleMediaAccessory;
    [(HMDMediaAccessory *)&v22 transactionObjectUpdated:0 newValues:v11 message:messageCopy];
    __transactionAccessoryUpdated_143016(self, v13, messageCopy);
    if (responseHandler)
    {
      responseHandler[2](responseHandler, v25[5], 0);
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationControllerModel:v18 message:messageCopy];
    }

    else
    {
      v16 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (!v20)
      {
        v21.receiver = self;
        v21.super_class = HMDAppleMediaAccessory;
        [(HMDMediaAccessory *)&v21 transactionObjectUpdated:updatedCopy newValues:v16 message:messageCopy];
        goto LABEL_21;
      }

      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationModel:v20 message:messageCopy];
    }
  }

LABEL_21:
}

void __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)backingStoreObjectForMediaDestinationControllerData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    if (committedAudioDestinationControllerData)
    {
      v3 = [HMDMediaDestinationControllerBackingStoreHandler backingStoreObjectForData:committedAudioDestinationControllerData];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)backingStoreObjectForMediaDestination
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    committedAudioDestination = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    if (committedAudioDestination)
    {
      v3 = [HMDMediaDestinationBackingStoreHandler backingStoreObjectForMediaDestination:committedAudioDestination];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)backingStoreObjects:(int64_t)objects
{
  v5 = [(HMDAppleMediaAccessory *)self modelObjectWithChangeType:1];
  v6 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  backingStoreObjectForMediaDestination = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestination];
  if (backingStoreObjectForMediaDestination)
  {
    [v6 addObject:backingStoreObjectForMediaDestination];
  }

  backingStoreObjectForMediaDestinationControllerData = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestinationControllerData];
  if (backingStoreObjectForMediaDestinationControllerData)
  {
    [v6 addObject:backingStoreObjectForMediaDestinationControllerData];
  }

  v12.receiver = self;
  v12.super_class = HMDAppleMediaAccessory;
  v9 = [(HMDAccessory *)&v12 backingStoreObjects:objects];
  [v6 addObjectsFromArray:v9];

  v10 = objc_msgSend_copy(v6);

  return v10;
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
  v42.receiver = self;
  v42.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v42 populateModelObject:v8 version:version];
  device = [(HMDAppleMediaAccessory *)self device];
  version = [device version];
  v11 = +[HMDHomeKitVersion version4];
  v12 = [version isAtLeastVersion:v11];

  v13 = isWatch();
  if (v13 && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), version = objc_claimAutoreleasedReturnValue(), ![version supportsCloudDataSync]))
  {
    v15 = 1;
  }

  else
  {
    home = [(HMDAccessory *)self home];
    v15 = [home isOwnerUser] ^ 1;

    if (!v13)
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  if (!v12)
  {
LABEL_15:
    identifier = [device identifier];
    uUIDString = [identifier UUIDString];
    [v8 setDeviceUUID:uUIDString];

    if (v15 && self->_device)
    {
      [v8 setDevice:?];
      device = self->_device;
      self->_device = 0;
    }

    else
    {
      [v8 setDevice:device];
    }

    goto LABEL_19;
  }

LABEL_11:
  isCurrentDevice = [device isCurrentDevice];
  if (version > 3)
  {
    v17 = isCurrentDevice;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 | v15))
  {
    goto LABEL_15;
  }

LABEL_19:
  remoteLoginHandler = [(HMDAppleMediaAccessory *)self remoteLoginHandler];

  if (remoteLoginHandler)
  {
    remoteLoginHandler2 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
    loggedInAccount = [remoteLoginHandler2 loggedInAccount];
    v24 = encodeRootObject();
    [v8 setLoggedInAccount:v24];
  }

  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];

  if (softwareVersion)
  {
    softwareVersion2 = [(HMDAppleMediaAccessory *)self softwareVersion];
    [v8 setSoftwareVersion:softwareVersion2];
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory variant](self, "variant")}];
  [v8 setVariant:v27];

  rawCapabilities = [(HMDAppleMediaAccessory *)self rawCapabilities];
  [v8 setAccessoryCapabilities:rawCapabilities];

  wifiNetworkInfo = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];

  if (wifiNetworkInfo)
  {
    wifiNetworkInfo2 = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
    [v8 setWifiNetworkInfo:wifiNetworkInfo2];
  }

  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];
  publicPairingIdentity = [pairingIdentity publicPairingIdentity];

  if (publicPairingIdentity)
  {
    pairingIdentity2 = [(HMDAppleMediaAccessory *)self pairingIdentity];
    publicPairingIdentity2 = [pairingIdentity2 publicPairingIdentity];
    [v8 setPairingIdentity:publicPairingIdentity2];
  }

  if ([(HMDAppleMediaAccessory *)self supportedStereoPairVersions])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
    [v8 setSupportedStereoPairVersions:v35];
  }

  if ([(HMDAppleMediaAccessory *)self supportsPreferredMediaUser])
  {
    preferredMediaUserUUID = [(HMDAccessory *)self preferredMediaUserUUID];
    [v8 setPreferredMediaUserUUID:preferredMediaUserUUID];
  }

  preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];

  if (preferredMediaUserSelectionTypeNumber)
  {
    preferredMediaUserSelectionTypeNumber2 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    [v8 setPreferredUserSelectionType:preferredMediaUserSelectionTypeNumber2];
  }

  if ([(HMDAppleMediaAccessory *)self productColor])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory productColor](self, "productColor")}];
    [v8 setProductColor:v39];
  }

  idsIdentifier = [(HMDAppleMediaAccessory *)self idsIdentifier];

  if (idsIdentifier)
  {
    idsIdentifier2 = [(HMDAppleMediaAccessory *)self idsIdentifier];
    [v8 setIdsIdentifier:idsIdentifier2];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v4 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:type];
  [(HMDAppleMediaAccessory *)self populateModelObject:v4 version:4];

  return v4;
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAppleMediaAccessoryModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (id)messageSendPolicy
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v2 = 81;
  }

  else
  {
    v2 = 65;
  }

  v3 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:5 options:v2];

  return v3;
}

- (id)remoteMessageDestination
{
  device = [(HMDAppleMediaAccessory *)self device];

  if (device)
  {
    v4 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDAccessory *)self messageTargetUUID];
    device2 = [(HMDAppleMediaAccessory *)self device];
    v7 = [(HMDRemoteDeviceMessageDestination *)v4 initWithTarget:messageTargetUUID device:device2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_relayRequestMessage:(id)message responseHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy isRemote])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot relay a remote message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    messageDispatcher = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [messageCopy respondWithError:messageDispatcher];
  }

  else
  {
    home = [(HMDAccessory *)self home];
    homeManager = [home homeManager];
    messageDispatcher = [homeManager messageDispatcher];

    if (messageDispatcher)
    {
      remoteMessageDestination = [(HMDAppleMediaAccessory *)self remoteMessageDestination];
      if (remoteMessageDestination)
      {
        name = [messageCopy name];
        qualityOfService = [messageCopy qualityOfService];
        messagePayload = [messageCopy messagePayload];
        v19 = +[HMDRemoteMessage secureMessageWithName:qualityOfService:destination:messagePayload:restriction:](HMDRemoteMessage, "secureMessageWithName:qualityOfService:destination:messagePayload:restriction:", name, qualityOfService, remoteMessageDestination, messagePayload, [messageCopy remoteRestriction]);

        [v19 setResponseRestriction:{objc_msgSend(messageCopy, "remoteResponseRestriction")}];
        objc_initWeak(buf, self);
        v28 = MEMORY[0x277D85DD0];
        v29 = 3221225472;
        v30 = __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke;
        v31 = &unk_278689728;
        objc_copyWeak(&v33, buf);
        v32 = handlerCopy;
        [v19 setResponseHandler:&v28];
        [messageDispatcher sendMessage:{v19, v28, v29, v30, v31}];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v35 = v27;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Cannot send message to unknown remote device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        [messageCopy respondWithError:v19];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configured to relay messages", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      remoteMessageDestination = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [messageCopy respondWithError:remoteMessageDestination];
    }
  }
}

void __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke_2;
    block[3] = &unk_278689F98;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)handleCurrentNetworkChangedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received current network changed notification: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)selfCopy updateWiFiNetworkInfo];
}

- (void)updateWiFiNetworkInfo
{
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wifiManager];
  v3 = [v2 MACAddress];

  v4 = [*(a1 + 32) wifiManager];
  v5 = [v4 currentNetworkSSID];

  v6 = [objc_alloc(MEMORY[0x277D0F958]) initWithMACAddress:v3 SSID:v5];
  v7 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  if (v5)
  {
    v8 = [*(a1 + 32) lastStagedWifiNetworkInfo];
    v9 = [v8 isEqualToNetworkInfo:v6];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 32) wifiNetworkInfo];
        [*(a1 + 32) lastStagedWifiNetworkInfo];
        v15 = v28 = v10;
        *buf = 138544130;
        v31 = v13;
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating WiFi network info to %@, lastCommitedWiFiInfo: %@, lastStagedWiFiInfo %@", buf, 0x2Au);

        v10 = v28;
      }

      objc_autoreleasePoolPop(v10);
      v16 = [*(a1 + 32) transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      [v18 setWifiNetworkInfo:v6];
      v19 = [*(a1 + 32) lastStagedWifiNetworkInfo];
      v20 = [v19 SSID];
      v21 = [v6 SSID];
      v22 = HMFEqualObjects();

      if (v22)
      {
        v23 = @"HMDAppleMediaAccessoryWiFiMACLocalOnlyUpdateLabel";
      }

      else
      {
        v24 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];

        v23 = @"HMDAppleMediaAccessoryWiFiNetworkInfoUpdateLabel";
        v7 = v24;
      }

      [*(a1 + 32) setLastStagedWifiNetworkInfo:{v6, v28}];
      v25 = [*(a1 + 32) home];
      v26 = [v25 backingStore];
      v27 = [v26 transaction:v23 options:v7];

      [v27 add:v18];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke_556;
      v29[3] = &unk_27868A250;
      v29[4] = *(a1 + 32);
      [v27 run:v29];
    }
  }
}

void __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke_556(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setLastStagedWifiNetworkInfo:0];
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Updating WiFi network info backing store transaction failed: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (HMFWiFiNetworkInfo)lastStagedWifiNetworkInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastStagedWifiNetworkInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setLastStagedWifiNetworkInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  lastStagedWifiNetworkInfo = self->_lastStagedWifiNetworkInfo;
  self->_lastStagedWifiNetworkInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setWifiNetworkInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_wifiNetworkInfo, info);
    os_unfair_recursive_lock_unlock();
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryWiFiNetworkInfoUpdatedNotification" object:self];
  }
}

- (HMFWiFiNetworkInfo)wifiNetworkInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wifiNetworkInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleSoftwareUpdateV2Scan:(id)scan
{
  v17 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling SoftwareUpdateV2Scan", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (![(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Relaying SoftwareUpdateV2Scan", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HMDAppleMediaAccessory_handleSoftwareUpdateV2Scan___block_invoke;
    v13[3] = &unk_278688370;
    v13[4] = v10;
    v14 = scanCopy;
    [(HMDAppleMediaAccessory *)v10 _relayRequestMessage:v14 responseHandler:v13];
  }
}

void __53__HMDAppleMediaAccessory_handleSoftwareUpdateV2Scan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@SoftwareUpdateV2Scan responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@SoftwareUpdateV2Scan responded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }
}

- (id)_scanForSoftwareUpdate
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x277D0F820]);
  uuid = [(HMDAccessory *)selfCopy uuid];
  v9 = [v7 initWithTarget:uuid];

  v10 = MEMORY[0x277D0F848];
  v22 = *MEMORY[0x277CCEEF8];
  v23 = &unk_283E73040;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v12 = [v10 messageWithName:*MEMORY[0x277CCEF08] destination:v9 payload:v11];

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(buf, selfCopy);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __48__HMDAppleMediaAccessory__scanForSoftwareUpdate__block_invoke;
  v19 = &unk_278687F40;
  objc_copyWeak(&v21, buf);
  v14 = v13;
  v20 = v14;
  [v12 setResponseHandler:&v16];
  [(HMDAppleMediaAccessory *)selfCopy handleSoftwareUpdateV2Scan:v12, v16, v17, v18, v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  return v14;
}

void __48__HMDAppleMediaAccessory__scanForSoftwareUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Received response for HMAccessorySoftwareUpdateControllerV2ScanMessage", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v9;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v15;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Scan message failed with error: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v16 finishWithError:v17];
      goto LABEL_22;
    }

    v20 = [v6 hmf_numberForKey:*MEMORY[0x277CCEEF0]];
    v17 = v20;
    if (v20)
    {
      v21 = [v20 BOOLValue];
      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v21)
      {
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          v33 = 138543362;
          v34 = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@SRAISU: scanResultFuture successfully found update", &v33, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [*(a1 + 32) finishWithNoResult];
        goto LABEL_22;
      }

      if (!v25)
      {
        goto LABEL_21;
      }

      v27 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v27;
      v28 = "%{public}@SRAISU: scanResultFuture failed to find update";
      v29 = v24;
      v30 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        objc_autoreleasePoolPop(v22);
        v31 = *(a1 + 32);
        v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v31 finishWithError:v32];

LABEL_22:
        goto LABEL_23;
      }

      v27 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v27;
      v28 = "%{public}@SRAISU: Message did not contain required key in response: HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate";
      v29 = v24;
      v30 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_229538000, v29, v30, v28, &v33, 0xCu);

    goto LABEL_21;
  }

  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Completing scan future with success because the accessory was deallocated", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) finishWithNoResult];
LABEL_23:
}

- (id)_scanForSoftwareUpdateWithRetries
{
  v35[5] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update with retries.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:360.0];
  v35[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:900.0];
  v35[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:1800.0];
  v35[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:7200.0];
  v35[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:21600.0];
  v35[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];

  if (isInternalBuild() && ([MEMORY[0x277D0F8D0] sharedPreferences], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "preferenceForKey:", @"HMDAppleMediaAccessoryShouldOverrideRepeatScanningIntervals"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, v15))
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v17 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAppleMediaAccessoryRepeatScanningIntervalsOverride"];
    value = [v17 value];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = value;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Overriding retries with new retries: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v20 = v12;
  }

  objc_initWeak(buf, selfCopy);
  v25 = MEMORY[0x277D2C900];
  workQueue = [(HMDAccessory *)selfCopy workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __59__HMDAppleMediaAccessory__scanForSoftwareUpdateWithRetries__block_invoke;
  v29[3] = &unk_27867ADA8;
  objc_copyWeak(&v30, buf);
  v27 = [v25 futureWithRetryIntervals:v20 workQueue:workQueue block:v29];
  objc_destroyWeak(&v30);

  objc_destroyWeak(buf);

  return v27;
}

id __59__HMDAppleMediaAccessory__scanForSoftwareUpdateWithRetries__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update with retryIntervalsRemaining: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 _scanForSoftwareUpdate];
  }

  else
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Completing scan future with success because the accessory was deallocated", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v12 = v9;

  return v12;
}

- (id)_softwareUpdateV2FromDescriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = descriptorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for descriptor: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CD1E68] softwareUpdateFromDescriptor:descriptorCopy];

  return v9;
}

- (void)_applySoftwareUpdateWithDescriptor:(id)descriptor
{
  v33 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = descriptorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Applying software update with descriptor: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaAccessory *)selfCopy _softwareUpdateV2FromDescriptor:descriptorCopy];
  version = [v9 version];

  if (version)
  {
    v11 = [MEMORY[0x277CD17E8] softwareUpdateFromSoftwareUpdateV2:v9];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Created HMSoftwareUpdate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v27 = *MEMORY[0x277CD1090];
    v16 = encodeRootObject();
    v28 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v18 = objc_alloc(MEMORY[0x277D0F820]);
    uuid = [(HMDAccessory *)v13 uuid];
    v20 = [v18 initWithTarget:uuid];

    v21 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1080] destination:v20 payload:v17];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__HMDAppleMediaAccessory__applySoftwareUpdateWithDescriptor___block_invoke;
    v26[3] = &unk_278689DC0;
    v26[4] = v13;
    [v21 setResponseHandler:v26];
    [(HMDAppleMediaAccessory *)v13 _startUpdate:v21];
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
      v30 = v25;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Cannot apply software update with no version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __61__HMDAppleMediaAccessory__applySoftwareUpdateWithDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v12 = "%{public}@SRAISU: Failed to start software update with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v16, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    v12 = "%{public}@SRAISU: Successfully started software update";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)handleSoftwareUpdateDidBecomeAvailableWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  workQueue = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDAppleMediaAccessory_handleSoftwareUpdateDidBecomeAvailableWithDescriptor___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_async(workQueue, v7);
}

void *__79__HMDAppleMediaAccessory_handleSoftwareUpdateDidBecomeAvailableWithDescriptor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Handling software update did become available with descriptor: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) shouldApplySoftwareUpdateWhenFound];
  if (result)
  {
    [*(a1 + 32) _applySoftwareUpdateWithDescriptor:*(a1 + 40)];
    return [*(a1 + 32) setShouldApplySoftwareUpdateWhenFound:0];
  }

  return result;
}

- (void)_scanForSoftwareUpdateRepeatedlyAndInstallUpdate:(BOOL)update
{
  updateCopy = update;
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v27 = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update repeatedly with shouldInstallUpdate: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  softwareUpdateListener = [(HMDAppleMediaAccessory *)selfCopy softwareUpdateListener];
  isSoftwareUpdateAvailable = [softwareUpdateListener isSoftwareUpdateAvailable];

  softwareUpdateListener2 = [(HMDAppleMediaAccessory *)selfCopy softwareUpdateListener];
  softwareUpdateDescriptorForLastEvent = [softwareUpdateListener2 softwareUpdateDescriptorForLastEvent];

  if (updateCopy)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFBooleanToString();
      v27 = 138543874;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = softwareUpdateDescriptorForLastEvent;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@SRAISU: isSoftwareUpdateAvailable: %@ forDescriptor: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (softwareUpdateDescriptorForLastEvent)
    {
      v20 = isSoftwareUpdateAvailable;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      [(HMDAppleMediaAccessory *)v16 _applySoftwareUpdateWithDescriptor:softwareUpdateDescriptorForLastEvent];
      goto LABEL_17;
    }

    [(HMDAppleMediaAccessory *)v16 setShouldApplySoftwareUpdateWhenFound:1];
  }

  if (isSoftwareUpdateAvailable)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMFBooleanToString();
      v27 = 138543874;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = softwareUpdateDescriptorForLastEvent;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Skipping scan because isSoftwareUpdateAvailable: %@ forDescriptor: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  _scanForSoftwareUpdateWithRetries = [(HMDAppleMediaAccessory *)selfCopy _scanForSoftwareUpdateWithRetries];
LABEL_17:
}

- (void)handleSoftwareUpdateV2ScanRepeatedlyAndApplyMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Handling SoftwareUpdateV2ScanRepeatedlyAndApplyMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [messageCopy numberForKey:*MEMORY[0x277CCEF00]];
  if (v9)
  {
    workQueue = [(HMDAccessory *)selfCopy workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HMDAppleMediaAccessory_handleSoftwareUpdateV2ScanRepeatedlyAndApplyMessage___block_invoke;
    v16[3] = &unk_27868A750;
    v16[4] = selfCopy;
    v17 = v9;
    dispatch_async(workQueue, v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Missing value for required message key: HMAccessorySoftwareUpdateControllerV2MessageKeyShouldApplyUpdate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:v15];
  }
}

uint64_t __78__HMDAppleMediaAccessory_handleSoftwareUpdateV2ScanRepeatedlyAndApplyMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) BOOLValue];

  return [v1 _scanForSoftwareUpdateRepeatedlyAndInstallUpdate:v2];
}

- (void)createSoftwareUpdateEventListenerIfNecessary
{
  v21 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsUserNotifications])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating softwareUpdateEventListener", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    home = [(HMDAccessory *)selfCopy home];
    homeManager = [home homeManager];
    localAndRemoteSubscriptionProvider = [homeManager localAndRemoteSubscriptionProvider];

    if (!localAndRemoteSubscriptionProvider)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to find subscriptionProvider while creating softwareUpdateEventListener", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    v14 = [HMDSoftwareUpdateEventListenerContext alloc];
    eventStoreReadHandle = [(HMDAppleMediaAccessory *)selfCopy eventStoreReadHandle];
    v16 = [(HMDSoftwareUpdateEventListenerContext *)v14 initWithAccessory:selfCopy subscriptionProvider:localAndRemoteSubscriptionProvider eventStoreReadHandle:eventStoreReadHandle];

    v17 = [[HMDSoftwareUpdateEventListener alloc] initWithContext:v16];
    [(HMDAppleMediaAccessory *)selfCopy setSoftwareUpdateListener:v17];

    softwareUpdateListener = [(HMDAppleMediaAccessory *)selfCopy softwareUpdateListener];
    [softwareUpdateListener registerForEvents];
  }
}

- (void)setDeviceIRK:(id)k
{
  kCopy = k;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_deviceIRK, k);
  os_unfair_recursive_lock_unlock();
  if (kCopy)
  {
    v5 = objc_alloc(MEMORY[0x277D0F7F8]);
    v6 = [v5 initWithType:*MEMORY[0x277D0F1B8] size:*MEMORY[0x277D0F1B0] data:kCopy];
    device = [(HMDAppleMediaAccessory *)self device];
    v8 = [[HMDRPIdentity alloc] initWithDeviceIRK:v6];
    [device setRpIdentity:v8];
  }
}

- (NSData)deviceIRK
{
  device = [(HMDAppleMediaAccessory *)self device];
  rpIdentity = [device rpIdentity];
  deviceIRK = [rpIdentity deviceIRK];
  data = [deviceIRK data];

  os_unfair_recursive_lock_lock_with_options();
  deviceIRK = self->_deviceIRK;
  if (!deviceIRK)
  {
    deviceIRK = data;
  }

  v8 = deviceIRK;
  os_unfair_recursive_lock_unlock();

  return v8;
}

- (void)setDeviceAddress:(id)address
{
  addressCopy = address;
  os_unfair_recursive_lock_lock_with_options();
  deviceAddress = self->_deviceAddress;
  self->_deviceAddress = addressCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDDeviceAddress)deviceAddress
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_deviceAddress;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)runTransactionWithPreferredMediaUserUUID:(id)d selectionType:(unint64_t)type completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    *buf = 138543874;
    v22 = v13;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Run transaction and set preferred media user: %@, type: %@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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

  [v17 setPreferredMediaUserUUID:dCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v17 setPreferredUserSelectionType:v18];

  v20 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

  [(HMDAccessory *)selfCopy runTransactionWithModels:v19 label:@"Update preferred media user" completion:completionCopy];
}

- (void)updatePreferredMediaUser:(id)user selectionType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:userCopy];
  [(HMDAccessory *)self setPreferredMediaUserUUID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(HMDAccessory *)self setPreferredMediaUserSelectionTypeNumber:v8];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    preferredMediaUserUUID = [(HMDAccessory *)selfCopy preferredMediaUserUUID];
    preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)selfCopy preferredMediaUserSelectionTypeNumber];
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = preferredMediaUserUUID;
    v19 = 2112;
    v20 = preferredMediaUserSelectionTypeNumber;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media user UUID: %@, type: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)updatePreferredMediaUserWithUUID:(id)d selectionType:(unint64_t)type completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CD1708]);
  uUIDString = [dCopy UUIDString];
  v12 = [v10 initWithUUIDString:uUIDString selectionType:type];

  preferredMediaUserEventController = [(HMDAppleMediaAccessory *)self preferredMediaUserEventController];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HMDAppleMediaAccessory_updatePreferredMediaUserWithUUID_selectionType_completion___block_invoke;
  v16[3] = &unk_27867AD80;
  objc_copyWeak(v19, &location);
  v14 = dCopy;
  v17 = v14;
  v19[1] = type;
  v15 = completionCopy;
  v18 = v15;
  [preferredMediaUserEventController updatePreferredMediaUserWithPrimaryUserInfo:v12 completion:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __84__HMDAppleMediaAccessory_updatePreferredMediaUserWithUUID_selectionType_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Updated preferred media user to %@ with error: %@", &v17, 0x20u);
    }
  }

  else
  {
    [WeakRetained setPreferredMediaUserUUID:*(a1 + 32)];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
    [v5 setPreferredMediaUserSelectionTypeNumber:v11];

    v6 = objc_autoreleasePoolPush();
    v12 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v12 preferredMediaUserUUID];
      v15 = [v12 preferredMediaUserSelectionTypeNumber];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media user UUID: %@, type: %@", &v17, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

- (void)handleUpdatePreferredMediaUser:(id)user
{
  v52 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productClass = [productInfo productClass];

    if (productClass == 6)
    {
      v7 = [userCopy numberForKey:*MEMORY[0x277CCEC50]];
      if ([v7 unsignedIntegerValue] == 1)
      {
        v8 = [userCopy uuidForKey:@"kUserUUIDKey"];
        home = [(HMDAccessory *)self home];
        v10 = [home userWithUUID:v8];

        if (v10)
        {
          v11 = 1;
LABEL_22:
          v30 = objc_autoreleasePoolPush();
          selfCopy = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v47 = v33;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Handling update preferred media user notification", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          preferredMediaUserUUID = [(HMDAccessory *)selfCopy preferredMediaUserUUID];
          v35 = HMFEqualObjects();

          if (v35)
          {
            preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)selfCopy preferredMediaUserSelectionTypeNumber];
            if (preferredMediaUserSelectionTypeNumber)
            {
              v37 = preferredMediaUserSelectionTypeNumber;
              preferredMediaUserSelectionTypeNumber2 = [(HMDAccessory *)selfCopy preferredMediaUserSelectionTypeNumber];
              unsignedIntegerValue = [preferredMediaUserSelectionTypeNumber2 unsignedIntegerValue];

              if (v11 == unsignedIntegerValue)
              {
                v40 = objc_autoreleasePoolPush();
                v41 = selfCopy;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  v43 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v47 = v43;
                  _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@User already matches.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v40);
                [userCopy respondWithSuccess];
              }
            }
          }

          goto LABEL_31;
        }

        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          home2 = [(HMDAccessory *)selfCopy2 home];
          *buf = 138543874;
          v47 = v27;
          v48 = 2112;
          v49 = v8;
          v50 = 2112;
          v51 = home2;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Did not find user with uuid %@ in home %@.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        [userCopy respondWithError:v29];
      }

      else
      {
        if (![v7 unsignedIntegerValue])
        {
          v11 = 0;
          v8 = 0;
          goto LABEL_22;
        }

        v20 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v23;
          v48 = 2112;
          v49 = v7;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpected selection type %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [userCopy respondWithError:v8];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot set preferred user on device class.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      [userCopy respondWithError:v7];
    }

    goto LABEL_31;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v47 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Relaying preferred media user update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke;
  v44[3] = &unk_278688370;
  v44[4] = selfCopy5;
  v45 = userCopy;
  [(HMDAppleMediaAccessory *)selfCopy5 _relayRequestMessage:v45 responseHandler:v44];

LABEL_31:
}

void __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Got preferred user update response %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 40);
  if (v5)
  {
    [v11 respondWithError:v5];
  }

  else
  {
    [v11 respondWithSuccess];
  }
}

- (void)handleDeleteSiriHistoryRequest:(id)request
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received delete siri history request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    v10 = [productInfo productClass] == 6;

    if (v10)
    {
      v11 = [HMDAppleMediaAccessoryDeleteSiriHistoryOperation alloc];
      settingsConnectionFactory = [(HMDAppleMediaAccessory *)selfCopy settingsConnectionFactory];
      v13 = settingsConnectionFactory[2]();
      v14 = [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v11 initWithSettingsConnection:v13];

      objc_initWeak(buf, v14);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke_541;
      v26[3] = &unk_278685F38;
      objc_copyWeak(&v28, buf);
      v26[4] = selfCopy;
      v27 = requestCopy;
      [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v14 setCompletionBlock:v26];
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v16 = [defaultScheduler performOperation:v14];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Attempted to delete siri history on unsupported device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      [requestCopy respondWithError:v25];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Relaying delete siri history request to current accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke;
    v29[3] = &unk_278688370;
    v29[4] = v18;
    v30 = requestCopy;
    [(HMDAppleMediaAccessory *)v18 _relayRequestMessage:v30 responseHandler:v29];
  }
}

void __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history relay responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Delete siri history relay responded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:0];
  }
}

void __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke_541(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained error];
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history operation completed with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[5] respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete siri history operation completed", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [a1[5] respondWithPayload:0];
  }
}

- (void)_startUpdate:(id)update
{
  v53 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v8;
    v51 = 2112;
    v52 = updateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting update for message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [updateCopy dataForKey:*MEMORY[0x277CD1090]];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v9 allowedClass:objc_opt_class() frameworkClasses:&unk_283E759F8];
    if (v10)
    {
      home = [(HMDAccessory *)selfCopy home];
      if ([home isAdminUser])
      {
        responseHandler3 = +[HMDSoftwareUpdateStartedEvent eventUpdateStartedWithAutomaticUpdateEnabled:](HMDSoftwareUpdateStartedEvent, "eventUpdateStartedWithAutomaticUpdateEnabled:", [home isAutomaticSoftwareUpdateEnabled]);
        if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = selfCopy;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v16;
            v51 = 2112;
            v52 = v10;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received request to start update: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          softwareUpdateInstallProvider = [(HMDAppleMediaAccessory *)v14 softwareUpdateInstallProvider];
          if (softwareUpdateInstallProvider)
          {
            objc_initWeak(buf, v14);
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke_539;
            v41[3] = &unk_278681F48;
            objc_copyWeak(&v45, buf);
            v42 = v10;
            responseHandler3 = responseHandler3;
            v43 = responseHandler3;
            v44 = updateCopy;
            [softwareUpdateInstallProvider startUpdate:v42 completionHandler:v41];

            objc_destroyWeak(&v45);
            objc_destroyWeak(buf);
          }

          else
          {
            v35 = objc_autoreleasePoolPush();
            v36 = v14;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543362;
              v50 = v38;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Software update install not supported", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v35);
            v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
            v40 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v40 submitLogEvent:responseHandler3 error:v39];

            [updateCopy respondWithError:v39];
            softwareUpdateInstallProvider = 0;
          }
        }

        else
        {
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke;
          v46[3] = &unk_278688370;
          responseHandler3 = responseHandler3;
          v47 = responseHandler3;
          v48 = updateCopy;
          [(HMDAppleMediaAccessory *)selfCopy _relayRequestMessage:v48 responseHandler:v46];

          softwareUpdateInstallProvider = v47;
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          currentUser = [home currentUser];
          *buf = 138543618;
          v50 = v32;
          v51 = 2112;
          v52 = currentUser;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Only administrators may start updates, current user: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        responseHandler = [updateCopy responseHandler];

        if (!responseHandler)
        {
          goto LABEL_30;
        }

        responseHandler3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"Current user is not an administrator." suggestion:0];
        softwareUpdateInstallProvider = [updateCopy responseHandler];
        (softwareUpdateInstallProvider)[2](softwareUpdateInstallProvider, responseHandler3, 0);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Invalid software update in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      responseHandler2 = [updateCopy responseHandler];

      if (!responseHandler2)
      {
        v10 = 0;
LABEL_31:

        goto LABEL_32;
      }

      home = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      responseHandler3 = [updateCopy responseHandler];
      (*(responseHandler3 + 2))(responseHandler3, home, 0);
    }

LABEL_30:
    goto LABEL_31;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    messagePayload = [updateCopy messagePayload];
    *buf = 138543618;
    v50 = v21;
    v51 = 2112;
    v52 = messagePayload;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized software update from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  responseHandler4 = [updateCopy responseHandler];

  if (responseHandler4)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    home = [updateCopy responseHandler];
    (home)[2](home, v10, 0);
    goto LABEL_30;
  }

LABEL_32:
}

void __39__HMDAppleMediaAccessory__startUpdate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v3 submitLogEvent:*(a1 + 32) error:v6];

  v4 = [*(a1 + 40) responseHandler];

  if (v4)
  {
    v5 = [*(a1 + 40) responseHandler];
    (v5)[2](v5, v6, 0);
  }
}

void __39__HMDAppleMediaAccessory__startUpdate___block_invoke_539(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      v11 = "%{public}@Failed to start update, %@, with error: %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, v13, v11, &v17, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v15;
    v11 = "%{public}@Successfully started update: %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v16 submitLogEvent:*(a1 + 40) error:v3];

  [*(a1 + 48) respondWithPayload:0 error:v3];
}

- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion
{
  if (completion)
  {
    v5 = MEMORY[0x277CCA9B8];
    completionCopy = completion;
    v7 = [v5 hmErrorWithCode:48];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (BOOL)supportsSoftwareUpdate
{
  identifier = [(HMDAccessory *)self identifier];
  v4 = _mediaRouteIdentifier;
  if ([identifier isEqual:v4])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productClass = [productInfo productClass];

    if (productClass == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(HMDAppleMediaAccessory *)self isHomePod];
}

- (void)_updateSoftwareVersion:(id)version
{
  v21 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (versionCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      versionString = [versionCopy versionString];
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = versionString;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating software version to: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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

    [v12 setSoftwareVersion:versionCopy];
    home = [(HMDAccessory *)selfCopy home];
    backingStore = [home backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v16 = [backingStore transaction:@"Update Software Version" options:v15];

    [v16 add:v12];
    [v16 run];
  }
}

- (void)setSoftwareVersion:(id)version
{
  versionCopy = version;
  os_unfair_recursive_lock_lock_with_options();
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_softwareVersion, version);
    os_unfair_recursive_lock_unlock();
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:self];
  }
}

- (void)postDeviceIRKIfDifferent:(id)different
{
  v57 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v8;
    v49 = 2112;
    v50 = differentCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting device IRK: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  uuid = [home uuid];

  eventForwarder = [(HMDAppleMediaAccessory *)selfCopy eventForwarder];
  eventStoreReadHandle = [(HMDAppleMediaAccessory *)selfCopy eventStoreReadHandle];
  v13 = eventStoreReadHandle;
  if (differentCopy && eventForwarder && eventStoreReadHandle && uuid)
  {
    v14 = MEMORY[0x277CD16F0];
    v15 = *MEMORY[0x277CCEA60];
    uuid2 = [(HMDAccessory *)selfCopy uuid];
    v17 = [v14 topicFromSuffixID:v15 homeUUID:uuid accessoryUUID:uuid2];

    v45 = v17;
    v18 = [v13 lastEventForTopic:v17];
    if (!v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No previously cached IRK", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }

    encodedData = [v18 encodedData];
    v24 = encodedData;
    v44 = uuid;
    if (!v18 || encodedData)
    {
      if (encodedData && [differentCopy isEqualToData:encodedData])
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v36;
          v49 = 2112;
          v50 = differentCopy;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Skipping posting already cached device IRK: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v37 = v45;
        goto LABEL_25;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v28;
        v49 = 2112;
        v50 = v18;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode cached device IRK from event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }

    v38 = objc_alloc(MEMORY[0x277D174B0]);
    uuid3 = [(HMDAccessory *)selfCopy uuid];
    [uuid3 UUIDString];
    v41 = v40 = v24;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v42 = [v38 initWithSource:v41 cachePolicy:2 combineType:2 timestamp:?];

    v24 = v40;
    v43 = [objc_alloc(MEMORY[0x277D174A0]) initWithEventData:differentCopy metadata:v42];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __51__HMDAppleMediaAccessory_postDeviceIRKIfDifferent___block_invoke;
    v46[3] = &unk_27868A250;
    v46[4] = selfCopy;
    v37 = v45;
    [eventForwarder forwardEvent:v43 topic:v45 completion:v46];

LABEL_25:
    uuid = v44;

    goto LABEL_26;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138544386;
    v48 = v32;
    v49 = 2112;
    v50 = differentCopy;
    v51 = 2112;
    v52 = eventForwarder;
    v53 = 2112;
    v54 = v13;
    v55 = 2112;
    v56 = uuid;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to post deviceIRK: %@ due to missing dependencies eventforwarder: %@ event store read handle: %@ homeUUID: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_26:
}

void __51__HMDAppleMediaAccessory_postDeviceIRKIfDifferent___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Forwarded current device IRK error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handleCurrentDeviceIRKUpdated:(id)updated
{
  v13 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"deviceIRK"];

  if (v6)
  {
    [(HMDAppleMediaAccessory *)self postDeviceIRKIfDifferent:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@No device IRK in notification", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)handleRoomChanged:(id)changed
{
  changedCopy = changed;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomChanged:changedCopy];
  object = [changedCopy object];
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
    uuid = [v7 uuid];
    uuid2 = [(HMDAccessory *)self uuid];
    if (![uuid hmf_isEqualToUUID:uuid2])
    {
LABEL_8:

      goto LABEL_9;
    }

    isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];

    if (isCurrentAccessory)
    {
      userInfo = [changedCopy userInfo];
      uuid = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

      uuid2 = [(HMDAppleMediaAccessory *)self metricsDispatcher];
      room = [(HMDAccessory *)self room];
      name = [room name];
      [uuid2 submitRoomChangeEvent:name previousRoom:uuid];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)handleRoomNameChanged:(id)changed
{
  changedCopy = changed;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomNameChanged:changedCopy];
  object = [changedCopy object];
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
    room = [(HMDAccessory *)self room];
    v9 = HMFEqualObjects();

    if (v9)
    {
      if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
      {
        userInfo = [changedCopy userInfo];
        v11 = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

        metricsDispatcher = [(HMDAppleMediaAccessory *)self metricsDispatcher];
        name = [v7 name];
        [metricsDispatcher submitRoomChangeEvent:name previousRoom:v11];
      }
    }
  }
}

- (void)setSupportedStereoPairVersions:(unint64_t)versions
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_supportedStereoPairVersions != versions)
  {
    self->_supportedStereoPairVersions = versions;
  }

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)supportedStereoPairVersions
{
  os_unfair_recursive_lock_lock_with_options();
  supportedStereoPairVersions = self->_supportedStereoPairVersions;
  os_unfair_recursive_lock_unlock();
  return supportedStereoPairVersions;
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDUserNotificationKey"];

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

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling removed user: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)pairingsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (handlerCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, 0, v9);
  }
}

- (void)removeUser:(id)user completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v12);
  }
}

- (void)addUser:(id)user completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v12);
  }
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

- (void)_handleTriggerPairingIdentityUpdateNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  [notificationCopy respondWithSuccess];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = selfCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Will trigger notification for updated pairing identity for accessory: %@ with message HMAccessoryPairingIdentityUpdatedNotification", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];
}

- (void)notifyFrameworkOfUpdatedPairingIdentity
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D0F848];
  v4 = *MEMORY[0x277CCEC38];
  v5 = objc_alloc(MEMORY[0x277D0F820]);
  uuid = [(HMDAccessory *)self uuid];
  v7 = [v5 initWithTarget:uuid];
  v8 = [v3 messageWithName:v4 destination:v7 payload:MEMORY[0x277CBEC10]];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated accessory pairing identity", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
  [msgDispatcher sendMessage:v8];
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleUpdatedName:(id)name
{
  v3.receiver = self;
  v3.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v3 _handleUpdatedName:name];
}

- (id)runtimeState
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessory;
  runtimeState = [(HMDAccessory *)&v9 runtimeState];
  v4 = [runtimeState mutableCopy];

  v10 = *MEMORY[0x277CCE9E0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessory isDeviceReachable](self, "isDeviceReachable")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 addEntriesFromDictionary:v6];

  v7 = objc_msgSend_copy(v4);

  return v7;
}

- (int64_t)reachableTransports
{
  v5.receiver = self;
  v5.super_class = HMDAppleMediaAccessory;
  reachableTransports = [(HMDMediaAccessory *)&v5 reachableTransports];
  if ([(HMDAccessory *)self isReachable])
  {
    reachableTransports |= 0x10uLL;
  }

  if ([(HMDAppleMediaAccessory *)self isRemotelyReachable])
  {
    return reachableTransports | 8;
  }

  else
  {
    return reachableTransports;
  }
}

- (void)setRemotelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  os_unfair_recursive_lock_lock_with_options();
  if (self->super.super._remotelyReachable != reachableCopy)
  {
    self->super.super._remotelyReachable = reachableCopy;
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isRemotelyReachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_deviceReachable || self->super.super._remotelyReachable;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)removeAdvertisement:(id)advertisement
{
  v13 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = advertisementCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring removed advertisement: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)addAdvertisement:(id)advertisement
{
  v13 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = advertisementCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring added advertisement: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleDeviceIsNotReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDAppleMediaAccessory *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDAppleMediaAccessory_handleDeviceIsNotReachable___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

uint64_t __53__HMDAppleMediaAccessory_handleDeviceIsNotReachable___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is no longer reachable", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) setDeviceReachable:0];
}

- (void)handleDeviceIsReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDAppleMediaAccessory *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAppleMediaAccessory_handleDeviceIsReachable___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

uint64_t __50__HMDAppleMediaAccessory_handleDeviceIsReachable___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is reachable", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) setDeviceReachable:1];
}

- (void)startMonitoringReachability
{
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  notificationCenter2 = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  device = [(HMDAppleMediaAccessory *)self device];
  if (device)
  {
    v12 = device;
    notificationCenter3 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    notificationCenter4 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    deviceMonitor = [(HMDAppleMediaAccessory *)self deviceMonitor];
    unreachableDevices = [deviceMonitor unreachableDevices];
    v10 = [unreachableDevices containsObject:v12];

    [(HMDAppleMediaAccessory *)self setDeviceReachable:v10 ^ 1u];
    deviceMonitor2 = [(HMDAppleMediaAccessory *)self deviceMonitor];
    [deviceMonitor2 startMonitoringDevice:v12 withInitialReachability:0 forClient:self];

    device = v12;
  }
}

- (id)deviceMonitor
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];

  return deviceMonitor;
}

- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value
{
  valueCopy = value;
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v8 notifyClientsOfUpdatedAccessoryControllableValue:?];
  if (valueCopy)
  {
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    device = [(HMDAppleMediaAccessory *)self device];
    v9 = @"HMDAccessoryNotificationKey";
    v10[0] = self;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryDeviceIsReachableNotification" object:device userInfo:v7];
  }
}

- (void)setDeviceReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_deviceReachable == reachableCopy)
  {

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_deviceReachable = reachableCopy;
    os_unfair_recursive_lock_unlock();
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMFBooleanToString();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated accessory controllable value: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAppleMediaAccessory *)selfCopy notifyClientsOfUpdatedAccessoryControllableValue:reachableCopy];
  }
}

- (BOOL)isDeviceReachable
{
  os_unfair_recursive_lock_lock_with_options();
  deviceReachable = self->_deviceReachable;
  os_unfair_recursive_lock_unlock();
  return deviceReachable;
}

- (void)updateReachabilityOfCurrentDevice
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Updating reachability to YES as this is the current device", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAccessory *)selfCopy setReachable:1];
  }
}

- (void)_installManagedConfigurationProfileWithData:(id)data completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Installing managed configuration profile", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (dataCopy)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      completionCopy[2](completionCopy, 0, v17);
    }
  }

  else
  {
    if (v15)
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Passed nil managed configuration profile data", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }
}

- (void)_removeManagedConfigurationProfileWithIdentifier:(id)identifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing managed configuration profile: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (identifierCopy)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      completionCopy[2](completionCopy, v17);
    }
  }

  else
  {
    if (v15)
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil managed configuration profile identifier", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }
}

- (void)handleInstallManagedConfigurationProfile:(id)profile
{
  v25 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received install managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = [profileCopy dataForKey:*MEMORY[0x277CCEB58]];
    if (v9)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke_500;
      v19[3] = &unk_278686138;
      v20 = profileCopy;
      [(HMDAppleMediaAccessory *)selfCopy _installManagedConfigurationProfileWithData:v9 completion:v19];
      v10 = v20;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@No profile data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [profileCopy respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Relaying remove managed configuration profile request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke;
    v21[3] = &unk_278688370;
    v21[4] = v12;
    v22 = profileCopy;
    [(HMDAppleMediaAccessory *)v12 _relayRequestMessage:v22 responseHandler:v21];
  }
}

void __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Remove managed configuration profile responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile responded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }
}

void __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke_500(uint64_t a1, void *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a3)
  {
    v5 = a2;
    [v3 respondWithError:a3];
  }

  else
  {
    v8 = *MEMORY[0x277CCEB50];
    v9[0] = a2;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a2;
    v5 = [v6 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 respondWithPayload:v5];
  }
}

- (void)handleRemoveManagedConfigurationProfile:(id)profile
{
  v25 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received remove managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = [profileCopy stringForKey:*MEMORY[0x277CCEB50]];
    if (v9)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke_499;
      v19[3] = &unk_27868A250;
      v20 = profileCopy;
      [(HMDAppleMediaAccessory *)selfCopy _removeManagedConfigurationProfileWithIdentifier:v9 completion:v19];
      v10 = v20;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [profileCopy respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Relaying remove managed configuration profile request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke;
    v21[3] = &unk_278688370;
    v21[4] = v12;
    v22 = profileCopy;
    [(HMDAppleMediaAccessory *)v12 _relayRequestMessage:v22 responseHandler:v21];
  }
}

void __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Remove managed configuration profile responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile responded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }
}

uint64_t __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke_499(uint64_t a1, uint64_t a2)
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

- (void)handleFetchManagedConfigurationProfiles:(id)profiles
{
  v63 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received fetch managed configuration profiles request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  isCurrentAccessory = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (isCurrentAccessory)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling fetch managed configuration profiles request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    sharedConnection = [getMCProfileConnectionClass() sharedConnection];
    if (sharedConnection)
    {
      v46 = profilesCopy;
      sharedConnection2 = [getMCProfileConnectionClass() sharedConnection];
      installedProfileIdentifiers = [sharedConnection2 installedProfileIdentifiers];

      v18 = objc_autoreleasePoolPush();
      v19 = v11;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(installedProfileIdentifiers, "count")}];
        *buf = 138543874;
        v58 = v21;
        v59 = 2112;
        v60 = v22;
        v61 = 2112;
        v62 = installedProfileIdentifiers;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetched profile identifiers: %@, %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v24 = installedProfileIdentifiers;
      v25 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v49;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v49 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v48 + 1) + 8 * i);
            v30 = [sharedConnection installedProfileDataWithIdentifier:{v29, v46}];
            v31 = [objc_alloc(MEMORY[0x277CD1B60]) initWithIdentifier:v29 profileData:v30];
            [array addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v26);
      }

      v32 = MEMORY[0x277CCAAB0];
      v33 = objc_msgSend_copy(array);
      v47 = 0;
      v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v47];
      v35 = v47;

      if (v34)
      {
        v54 = *MEMORY[0x277CCEB60];
        v55 = v34;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        profilesCopy = v46;
        [v46 respondWithPayload:v36];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v19;
        v44 = HMFGetOSLogHandle();
        profilesCopy = v46;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v58 = v45;
          v59 = 2112;
          v60 = array;
          v61 = 2112;
          v62 = v35;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode profiles %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v42);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v46 respondWithError:v36];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v11;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to link profile connection", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
      [profilesCopy respondWithError:v24];
    }
  }

  else
  {
    if (v13)
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v37;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Relaying fetch managed configuration profiles request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __66__HMDAppleMediaAccessory_handleFetchManagedConfigurationProfiles___block_invoke;
    v52[3] = &unk_278688370;
    v52[4] = v11;
    v53 = profilesCopy;
    [(HMDAppleMediaAccessory *)v11 _relayRequestMessage:v53 responseHandler:v52];
  }
}

void __66__HMDAppleMediaAccessory_handleFetchManagedConfigurationProfiles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetch managed configuration profiles responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetch managed configuration profiles responded", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }
}

- (void)handleCurrentDeviceUpdated:(id)updated
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
    device = [(HMDAppleMediaAccessory *)self device];
    if (v9 == device)
    {
    }

    else
    {
      v8 = [(HMDAppleMediaAccessory *)self shouldUpdateWithDevice:v9 initialConfiguration:0];

      v6 = v9;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    [(HMDAppleMediaAccessory *)self updateWithDevice:v9];
    v6 = v9;
  }

LABEL_10:
}

- (BOOL)shouldUpdateWithDevice:(id)device initialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  device = [(HMDAppleMediaAccessory *)self device];
  if (device == deviceCopy && !configurationCopy || !HMFEqualObjects())
  {
    goto LABEL_23;
  }

  productInfo = [deviceCopy productInfo];

  if (productInfo)
  {
    productInfo2 = [deviceCopy productInfo];
    productInfo3 = [device productInfo];
    v11 = [productInfo2 isEqual:productInfo3];

    if (!v11)
    {
LABEL_23:
      v31 = 1;
      goto LABEL_24;
    }

    manufacturer = [(HMDAccessory *)self manufacturer];
    if (!manufacturer)
    {
      goto LABEL_19;
    }

    v13 = manufacturer;
    model = [(HMDAccessory *)self model];
    if (model)
    {
      v15 = model;
      serialNumber = [(HMDAccessory *)self serialNumber];
      if (serialNumber)
      {
        v17 = serialNumber;
        firmwareVersion = [(HMDAccessory *)self firmwareVersion];

        if (firmwareVersion)
        {
          goto LABEL_10;
        }

LABEL_19:
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v40 = 138543362;
          v41 = v35;
          v36 = "%{public}@Force updating product information";
          goto LABEL_21;
        }

LABEL_22:

        objc_autoreleasePoolPop(v32);
        goto LABEL_23;
      }
    }

    goto LABEL_19;
  }

LABEL_10:
  category = [(HMDAccessory *)self category];
  if (!category || (v20 = category, -[HMDAccessory category](self, "category"), v21 = objc_claimAutoreleasedReturnValue(), v22 = MEMORY[0x277CD1680], [deviceCopy productInfo], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "categoryForProductInfo:", v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v21, "isEqual:", v24), v24, v23, v21, v20, (v25 & 1) == 0))
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v35;
      v36 = "%{public}@Force updating category";
LABEL_21:
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, v36, &v40, 0xCu);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  rpIdentity = [deviceCopy rpIdentity];
  if (rpIdentity)
  {
    v27 = rpIdentity;
    rpIdentity2 = [deviceCopy rpIdentity];
    rpIdentity3 = [device rpIdentity];
    v30 = [rpIdentity2 isEqual:rpIdentity3];

    if ((v30 & 1) == 0)
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v34 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v35 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v35;
      v36 = "%{public}@Force updating rapport identity";
      goto LABEL_21;
    }
  }

  v31 = 0;
LABEL_24:

  return v31;
}

- (void)updateWithDevice:(id)device
{
  v57 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v8;
      v55 = 2112;
      v56 = deviceCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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
      identifier = [deviceCopy identifier];
      uUIDString = [identifier UUIDString];
      [v11 setDeviceUUID:uUIDString];

      [v11 setDevice:deviceCopy];
      v14 = MEMORY[0x277CD1680];
      productInfo = [deviceCopy productInfo];
      v16 = [v14 categoryForProductInfo:productInfo];

      if (v16)
      {
        category = [(HMDAccessory *)selfCopy category];
        v18 = HMFEqualObjects();

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:v16];
          [v11 setAccessoryCategory:v19];

          categoryType = [v16 categoryType];
          v21 = [categoryType isEqual:*MEMORY[0x277CCE8C8]];

          if ((v21 & 1) == 0)
          {
            objc_initWeak(buf, selfCopy);
            backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
            context = [backingStore context];
            v47 = MEMORY[0x277D85DD0];
            v48 = 3221225472;
            v49 = __43__HMDAppleMediaAccessory_updateWithDevice___block_invoke;
            v50 = &unk_278686B48;
            objc_copyWeak(&v52, buf);
            v51 = v16;
            [context performBlock:&v47];

            objc_destroyWeak(&v52);
            objc_destroyWeak(buf);
          }
        }
      }

      v24 = [(HMDAccessory *)selfCopy manufacturer:v47];
      v25 = HMFEqualObjects();

      if ((v25 & 1) == 0)
      {
        [v11 setManufacturer:@"Apple Inc."];
      }

      systemInfo = [MEMORY[0x277D0F910] systemInfo];
      model = [systemInfo model];
      v28 = [model mutableCopy];

      if (v28)
      {
        systemInfo2 = [MEMORY[0x277D0F910] systemInfo];
        regionInfo = [systemInfo2 regionInfo];

        if (regionInfo)
        {
          [v28 appendString:regionInfo];
        }

        model2 = [(HMDAccessory *)selfCopy model];
        v32 = [v28 isEqual:model2];

        if ((v32 & 1) == 0)
        {
          [v11 setModel:v28];
        }
      }

      systemInfo3 = [MEMORY[0x277D0F910] systemInfo];
      serialNumber = [systemInfo3 serialNumber];

      if (serialNumber)
      {
        serialNumber2 = [(HMDAccessory *)selfCopy serialNumber];
        v36 = [serialNumber isEqual:serialNumber2];

        if ((v36 & 1) == 0)
        {
          [v11 setSerialNumber:serialNumber];
        }
      }

      productInfo2 = [deviceCopy productInfo];
      v38 = productInfo2;
      if (productInfo2)
      {
        softwareVersion = [productInfo2 softwareVersion];
        if (softwareVersion)
        {
          firmwareVersion = [(HMDAccessory *)selfCopy firmwareVersion];
          v41 = [softwareVersion isEqual:firmwareVersion];

          if ((v41 & 1) == 0)
          {
            versionString = [softwareVersion versionString];
            [v11 setFirmwareVersion:versionString];
          }
        }
      }

      home = [(HMDAccessory *)selfCopy home];
      backingStore2 = [home backingStore];
      v45 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v46 = [backingStore2 transaction:@"updateWithDevice" options:v45];

      [v46 add:v11 withMessage:0];
      [v46 run];
    }
  }
}

void __43__HMDAppleMediaAccessory_updateWithDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained uuid];
    v5 = [HMCContext findAppleMediaAccessoryWithModelID:v4];

    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v7 category];
        v12 = *(a1 + 32);
        *buf = 138543874;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating category from: %@, to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v13 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:*(a1 + 32)];
      [v5 setAccessoryCategory:v13];

      v14 = [v7 backingStore];
      v15 = [v14 context];
      v18 = 0;
      [v15 save:&v18];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v7 uuid];
        *buf = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@MKF models do not exist for media accessory with UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (void)setDeviceController:(id)controller
{
  controllerCopy = controller;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_deviceController, controller);
  v5 = self->_deviceIRK;
  os_unfair_recursive_lock_unlock();
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D0F7F8]);
    v7 = [v6 initWithType:*MEMORY[0x277D0F1B8] size:*MEMORY[0x277D0F1B0] data:v5];
    device = [(HMDAppleMediaAccessory *)self device];
    v9 = [[HMDRPIdentity alloc] initWithDeviceIRK:v7];
    [device setRpIdentity:v9];
  }
}

- (HMDMessageRouter)messageRouter
{
  messenger = [(HMDAppleMediaAccessory *)self messenger];
  router = [messenger router];

  return router;
}

- (HMDDevice)deviceForDirectMessaging
{
  device = [(HMDAppleMediaAccessory *)self device];
  deviceAddress = [(HMDAppleMediaAccessory *)self deviceAddress];
  idsIdentifierInternal = [(HMDAppleMediaAccessory *)self idsIdentifierInternal];
  v6 = idsIdentifierInternal;
  if (!device)
  {
    if (deviceAddress)
    {
      dependencyFactory = [(HMDAppleMediaAccessory *)self dependencyFactory];
      v8 = [dependencyFactory deviceWithAddress:deviceAddress];
LABEL_6:
      device = v8;

      goto LABEL_7;
    }

    if (idsIdentifierInternal)
    {
      dependencyFactory = [(HMDAppleMediaAccessory *)self dependencyFactory];
      v8 = [dependencyFactory deviceForIDSIdentifier:v6];
      goto LABEL_6;
    }

    device = 0;
  }

LABEL_7:

  return device;
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCrossfadeAsAirPlaySource = [capabilities supportsCrossfadeAsAirPlaySource];

  return supportsCrossfadeAsAirPlaySource;
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsStereoOdeonTTSUBypassingPrimary = [capabilities supportsStereoOdeonTTSUBypassingPrimary];

  return supportsStereoOdeonTTSUBypassingPrimary;
}

- (BOOL)supportsWiFiRepairV2
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsWiFiRepairV2 = [capabilities supportsWiFiRepairV2];

  return supportsWiFiRepairV2;
}

- (BOOL)supportsSoftwareUpdateV2
{
  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    return 1;
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsSoftwareUpdateV2 = [capabilities supportsSoftwareUpdateV2];

  return supportsSoftwareUpdateV2;
}

- (BOOL)supportsJustSiri
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsJustSiri = [v3 supportsJustSiri];

  return supportsJustSiri;
}

- (BOOL)supportsRMVonAppleTV
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = +[HMDDeviceCapabilities deviceCapabilities];
    supportsRMVonAppleTV = [v3 supportsRMVonAppleTV];

    if ((supportsRMVonAppleTV & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    capabilities = [(HMDAppleMediaAccessory *)self capabilities];
    supportsRMVonAppleTV2 = [capabilities supportsRMVonAppleTV];

    if (!supportsRMVonAppleTV2)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsMediaContentProfile
{
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v5 = HMFEqualObjects();

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  LOBYTE(category) = [capabilities supportsLoreto];

  return (category ^ 1) & v5;
}

- (BOOL)supportsManagedConfigurationProfile
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsManagedConfigurationProfile = [capabilities supportsManagedConfigurationProfile];

  return supportsManagedConfigurationProfile;
}

- (BOOL)supportsMediaActions
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsMediaActions = [v3 supportsMediaActions];

  return supportsMediaActions;
}

- (BOOL)supportsAnnounce
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsAnnounce = [v3 supportsAnnounce];

  return supportsAnnounce;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      supportsTVOSUpdateManualUpdateAvailableNotification = 1;
LABEL_5:

      return supportsTVOSUpdateManualUpdateAvailableNotification;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsTVOSUpdateManualUpdateAvailableNotification = [capabilities supportsTVOSUpdateManualUpdateAvailableNotification];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsTVOSUpdateManualUpdateAvailableNotification;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationFreeDoorbellChime])
    {
      supportsCoordinationFreeDoorbellChime = 1;
LABEL_5:

      return supportsCoordinationFreeDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCoordinationFreeDoorbellChime = [capabilities supportsCoordinationFreeDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsCoordinationFreeDoorbellChime;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationDoorbellChime])
    {
      supportsCoordinationDoorbellChime = 1;
LABEL_5:

      return supportsCoordinationDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCoordinationDoorbellChime = [capabilities supportsCoordinationDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsCoordinationDoorbellChime;
}

- (BOOL)supportsUserMediaSettings
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsUserMediaSettings])
    {
      supportsUserMediaSettings = 1;
LABEL_5:

      return supportsUserMediaSettings;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsUserMediaSettings = [capabilities supportsUserMediaSettings];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsUserMediaSettings;
}

- (BOOL)supportsDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsDoorbellChime])
    {
      supportsDoorbellChime = 1;
LABEL_5:

      return supportsDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsDoorbellChime = [capabilities supportsDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsDoorbellChime;
}

- (BOOL)supportsDropIn
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    home = [(HMDAccessory *)self home];
    homeManager = [home homeManager];
    capabilitiesController = [homeManager capabilitiesController];
    currentAccessoryCapabilities = [capabilitiesController currentAccessoryCapabilities];
    if ([currentAccessoryCapabilities supportsDropIn])
    {
      supportsDropIn = 1;
LABEL_5:

      return supportsDropIn;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsDropIn = [capabilities supportsDropIn];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsDropIn;
}

- (BOOL)supportsAudioAnalysis
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    home = [(HMDAccessory *)self home];
    homeManager = [home homeManager];
    capabilitiesController = [homeManager capabilitiesController];
    currentAccessoryCapabilities = [capabilitiesController currentAccessoryCapabilities];
    if ([currentAccessoryCapabilities supportsAudioAnalysis])
    {
      supportsAudioAnalysis = 1;
LABEL_5:

      return supportsAudioAnalysis;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsAudioAnalysis = [capabilities supportsAudioAnalysis];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsAudioAnalysis;
}

- (BOOL)supportsPreferredMediaUser
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsPreferredMediaUser = [v3 supportsPreferredMediaUser];

  return supportsPreferredMediaUser;
}

- (BOOL)supportsThirdPartyMusic
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsThirdPartyMusic])
    {
      supportsThirdPartyMusic = 1;
LABEL_5:

      return supportsThirdPartyMusic;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsThirdPartyMusic = [capabilities supportsThirdPartyMusic];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsThirdPartyMusic;
}

- (BOOL)supportsMusicAlarm
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsMusicAlarm = [v3 supportsMusicAlarm];

  return supportsMusicAlarm;
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsCompanionInitiatedObliterate = [v3 supportsCompanionInitiatedObliterate];

  return supportsCompanionInitiatedObliterate;
}

- (BOOL)supportsCompanionInitiatedRestart
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsCompanionInitiatedRestart = [v3 supportsCompanionInitiatedRestart];

  return supportsCompanionInitiatedRestart;
}

- (BOOL)supportsAudioReturnChannel
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsAudioReturnChannel = [v3 supportsAudioReturnChannel];

  return supportsAudioReturnChannel;
}

- (BOOL)legacyLocationServicesEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];
  rootGroup = [settingsController rootGroup];
  groups = [rootGroup groups];
  v6 = [groups na_firstObjectPassingTest:&__block_literal_global_473];
  settings = [v6 settings];
  v8 = [settings na_firstObjectPassingTest:&__block_literal_global_479_143193];

  if (v8)
  {
    value = [v8 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = value;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
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
        v21 = value;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get location service enabled value due to unknown class for value: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

uint64_t __55__HMDAppleMediaAccessory_legacyLocationServicesEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"enabled"];

  return v3;
}

uint64_t __55__HMDAppleMediaAccessory_legacyLocationServicesEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"locationServices"];

  return v3;
}

- (BOOL)supportsHomeLevelLocationServiceSetting
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsHomeLevelLocationServiceSetting = [v3 supportsHomeLevelLocationServiceSetting];

  return supportsHomeLevelLocationServiceSetting;
}

- (BOOL)supportsMultiUser
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsMultiUser = [v3 supportsMultiUser];

  return supportsMultiUser;
}

- (BOOL)supportsTargetControl
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  supportsTargetControl = [v3 supportsTargetControl];

  return supportsTargetControl;
}

- (BOOL)isCurrentAccessory
{
  device = [(HMDAppleMediaAccessory *)self device];
  deviceMediaRouteIdentifierFactory = [(HMDAppleMediaAccessory *)self deviceMediaRouteIdentifierFactory];
  v5 = deviceMediaRouteIdentifierFactory[2]();

  identifier = [(HMDAccessory *)self identifier];
  v7 = identifier;
  if (v5)
  {
    v8 = device == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (![identifier isEqualToString:v5])
    {
      v10 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    isCurrentDevice = [device isCurrentDevice];
    goto LABEL_10;
  }

  isCurrentDevice = [identifier isEqualToString:v5];
LABEL_10:
  v10 = isCurrentDevice;
LABEL_12:

  return v10;
}

- (void)setIdsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = identifierCopy;

  os_unfair_recursive_lock_unlock();
}

- (id)idsIdentifierInternal
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_idsIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)idsIdentifier
{
  deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
  idsIdentifier = [deviceForDirectMessaging idsIdentifier];

  if (!idsIdentifier)
  {
    os_unfair_recursive_lock_lock_with_options();
    idsIdentifier = self->_idsIdentifier;
    os_unfair_recursive_lock_unlock();
  }

  return idsIdentifier;
}

- (void)setProductColor:(int64_t)color
{
  os_unfair_recursive_lock_lock_with_options();
  self->_productColor = color;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)productColor
{
  os_unfair_recursive_lock_lock_with_options();
  productColor = self->_productColor;
  os_unfair_recursive_lock_unlock();
  return productColor;
}

- (unint64_t)homePodVariant
{
  variant = [(HMDAppleMediaAccessory *)self variant];
  v3 = 2;
  if ((variant & 2) == 0)
  {
    v3 = ((variant << 61) >> 63) & 3;
  }

  if (variant)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)setRawCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  os_unfair_recursive_lock_lock_with_options();
  rawCapabilities = self->_rawCapabilities;
  self->_rawCapabilities = capabilitiesCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSData)rawCapabilities
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_rawCapabilities;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setCapabilitiesInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_recursive_lock_lock_with_options();
  capabilitiesInternal = self->_capabilitiesInternal;
  self->_capabilitiesInternal = internalCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)configureTargetController:(id)controller
{
  v7[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  targetControlManager = [(HMDAppleMediaAccessory *)self targetControlManager];
  v7[0] = controllerCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  [targetControlManager addTargetControllers:v6];
}

- (void)autoConfigureTargetControllers
{
  home = [(HMDAccessory *)self home];
  accessories = [home accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HMDAppleMediaAccessory_autoConfigureTargetControllers__block_invoke;
  v6[3] = &unk_278682270;
  v6[4] = self;
  v7 = home;
  v5 = home;
  [accessories na_each:v6];
}

void __56__HMDAppleMediaAccessory_autoConfigureTargetControllers__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 supportsTargetController])
  {
    v4 = v3;
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v10 = [*(a1 + 32) uuid];
        v18 = [v4 shortDescription];
        [*(a1 + 32) isCurrentAccessory];
        v19 = HMFBooleanToString();
        [*(a1 + 40) isCurrentDeviceAvailableResident];
        v11 = HMFBooleanToString();
        *buf = 138544386;
        v22 = v20;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding new target UUID: %@ to accessory: %@. isCurrentAccessory: %@ / isPrimaryResident: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [v6 targetUUIDs];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = MEMORY[0x277CBEBF8];
      }

      v15 = [*(a1 + 32) uuid];
      v16 = [v15 UUIDString];
      v17 = [v14 arrayByAddingObject:v16];
      [v6 saveTargetUUIDs:v17];
    }
  }
}

- (void)_fixCloudKeyIfNeeded
{
  v29 = *MEMORY[0x277D85DE8];
  if (![(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    return;
  }

  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];

  if (!pairingIdentity)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      v25 = "%{public}@No pairing identity yet to fix";
LABEL_17:
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v25, buf, 0xCu);
    }

LABEL_18:

    objc_autoreleasePoolPop(v21);
    return;
  }

  pairingIdentity2 = [(HMDAppleMediaAccessory *)self pairingIdentity];
  privateKey = [pairingIdentity2 privateKey];

  if (!privateKey)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      v25 = "%{public}@Pairing identity can't be used.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (![(HMDAppleMediaAccessory *)self fixedPairingIdentityInCloud])
  {
    v6 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:2];
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
      v9 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      pairingIdentity3 = [(HMDAppleMediaAccessory *)selfCopy3 pairingIdentity];
      publicPairingIdentity = [pairingIdentity3 publicPairingIdentity];
      [v8 setPairingIdentity:publicPairingIdentity];

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v8 setAppleMediaAccessoryChangeTag:uUIDString];

      home = [(HMDAccessory *)selfCopy3 home];
      backingStore = [home backingStore];
      v19 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v20 = [backingStore transaction:@"Fix Pairing Identity" options:v19];

      [v20 add:v8];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __46__HMDAppleMediaAccessory__fixCloudKeyIfNeeded__block_invoke;
      v26[3] = &unk_27868A250;
      v26[4] = selfCopy3;
      [v20 run:v26];
    }
  }
}

void __46__HMDAppleMediaAccessory__fixCloudKeyIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fixed pairing identity", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_fetchMultiUserLanguages
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching multi-user languages.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  settingsConnectionFactory = [(HMDAppleMediaAccessory *)selfCopy settingsConnectionFactory];
  v8 = settingsConnectionFactory[2]();

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMDAppleMediaAccessory__fetchMultiUserLanguages__block_invoke;
  v10[3] = &unk_278688CE8;
  v11 = v8;
  v12 = selfCopy;
  v9 = v8;
  [v9 fetchSupportedMultiUserLanguageCodes:v10];
}

void __50__HMDAppleMediaAccessory__fetchMultiUserLanguages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain supported multi-user languages. Error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched multi-user languages %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) setSupportedMultiUserLanguageCodes:v5];
  }
}

- (id)_createMediaProfile
{
  v2 = [(HMDMediaProfile *)[HMDAppleMediaProfile alloc] initWithAccessory:self];

  return v2;
}

- (void)removeAudioDestination
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = audioDestination;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (audioDestination)
    {
      v8 = [[HMDMediaDestinationModel alloc] initWithDestination:audioDestination changeType:3];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__HMDAppleMediaAccessory_removeAudioDestination__block_invoke;
      v13[3] = &unk_27868A250;
      v13[4] = selfCopy;
      [(HMDAccessory *)selfCopy runTransactionWithModel:v8 label:@"Remove audio destination" completion:v13];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping removing audio destination due to non-current device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __48__HMDAppleMediaAccessory_removeAudioDestination__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Audio destination removal transaction completed with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Audio destination removal transaction completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (id)mediaGroupParticipantDataLocalStorage
{
  v19 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
  v6 = mediaGroupParticipantDataLocalStorage;
  if (mediaGroupParticipantDataLocalStorage)
  {
    v7 = mediaGroupParticipantDataLocalStorage;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = home;
      v17 = 2112;
      v18 = homeManager;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups participant data local storage due to dependencies home: %@ homeManager: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v6;
}

- (void)legacyCreateAudioDestinationWithIdentifier:(id)identifier supportedOptions:(unint64_t)options
{
  identifierCopy = identifier;
  v7 = [HMDMediaDestinationModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:1 uuid:identifierCopy parentUUID:uuid];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
  [(HMDMediaDestinationModel *)v9 setSupportedOptions:v10];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_legacyCreateAudioDestinationWithIdentifier_supportedOptions___block_invoke;
  v11[3] = &unk_27868A250;
  v11[4] = self;
  [(HMDAccessory *)self runTransactionWithModel:v9 label:@"Create audio destination" completion:v11];
}

void __86__HMDAppleMediaAccessory_legacyCreateAudioDestinationWithIdentifier_supportedOptions___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Audio destination transaction completed with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Audio destination transaction completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)createAudioDestination
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (+[HMDDeviceCapabilities supportsAudioDestinationCreation])
    {
      v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5CC65005-CE51-4781-9F78-3429557B6FD4"];
      v4 = MEMORY[0x277CCAD78];
      uuid = [(HMDAccessory *)self uuid];
      uUIDString = [uuid UUIDString];
      v7 = [uUIDString dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      expectedDestinationSupportOptions = [(HMDAppleMediaAccessory *)self expectedDestinationSupportOptions];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = HMMediaDestinationSupportOptionsAsString();
        v34 = 138543874;
        v35 = v13;
        v36 = 2112;
        v37 = v8;
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination with identifier: %@ supportedOptions: %@", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v33;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        [(HMDAppleMediaAccessory *)v31 legacyCreateAudioDestinationWithIdentifier:v8 supportedOptions:expectedDestinationSupportOptions];
      }

      else
      {
        mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)selfCopy mediaGroupParticipantDataLocalStorage];
        participantData = [mediaGroupParticipantDataLocalStorage participantData];
        destination = [participantData destination];

        if (destination)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v34 = 138543618;
            v35 = v21;
            v36 = 2112;
            v37 = destination;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination: %@", &v34, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
        }

        v22 = objc_alloc(MEMORY[0x277CD1B80]);
        uuid2 = [(HMDAccessory *)selfCopy uuid];
        defaultAudioGroupIdentifier = [(HMDAppleMediaAccessory *)selfCopy defaultAudioGroupIdentifier];
        v25 = [v22 initWithUniqueIdentifier:v8 parentIdentifier:uuid2 supportedOptions:expectedDestinationSupportOptions audioGroupIdentifier:defaultAudioGroupIdentifier];

        [mediaGroupParticipantDataLocalStorage updateMediaDestination:v25];
        [(HMDAppleMediaAccessory *)selfCopy mergeAudioDestination:v25];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping creating audio destination manager for unsupported device", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }
}

- (unint64_t)expectedDestinationSupportOptions
{
  if ([(HMDAppleMediaAccessory *)self isHomePodMini])
  {
    return 36;
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod2ndGen])
  {
    return 192;
  }

  return 17;
}

- (void)migrateLocalParticipantData
{
  if ((!isFeatureHomeTheaterQFAEnabledForTests || [isFeatureHomeTheaterQFAEnabledForTests BOOLValue]) && -[HMDAppleMediaAccessory isCurrentAccessory](self, "isCurrentAccessory"))
  {
    audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];

    if (audioDestinationController)
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      featuresDataSource = [(HMDAccessory *)self featuresDataSource];
      [mediaGroupParticipantDataLocalStorage migrateWithExpectedDestinationControllerSupportOptions:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", featuresDataSource)}];
    }

    audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];

    if (audioDestinationManager)
    {
      mediaGroupParticipantDataLocalStorage2 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      [mediaGroupParticipantDataLocalStorage2 migrateWithExpectedDestinationSupportOptions:{-[HMDAppleMediaAccessory expectedDestinationSupportOptions](self, "expectedDestinationSupportOptions")}];
    }
  }
}

- (void)configureAudioDestinationManager
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    committedAudioDestination = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    v4 = committedAudioDestination;
    if (committedAudioDestination && ([committedAudioDestination parentIdentifier], v5 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hmf_isEqualToUUID:", v6), v6, v5, (v7 & 1) != 0))
    {
      home = [(HMDAccessory *)self home];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
      backingStore = [(HMDAppleMediaAccessory *)self backingStore];
      if ([(HMDAppleMediaAccessory *)self hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
      {
        mediaDestinationManagerFactory = [(HMDAppleMediaAccessory *)self mediaDestinationManagerFactory];
        v13 = [mediaDestinationManagerFactory mediaDestinationManagerWithDestination:v4 messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](self dataSource:"isCurrentAccessory") delegate:{self, self}];
        [(HMDAppleMediaAccessory *)self setAudioDestinationManager:v13];

        audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
        [audioDestinationManager configureWithHome:home currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](self, "isCurrentAccessory")}];

        [(HMDAppleMediaAccessory *)self migrateLocalParticipantData];
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination manager configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
      [(HMDAppleMediaAccessory *)self createAudioDestination];
    }
  }
}

- (void)mergeAudioDestination:(id)destination
{
  v28 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v6 = audioDestinationManager;
  if (audioDestinationManager)
  {
    [audioDestinationManager mergeDestination:destinationCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = destinationCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDAccessory *)selfCopy home];
    msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
    notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
    backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
    if ([(HMDAppleMediaAccessory *)selfCopy hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
    {
      mediaDestinationManagerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationManagerFactory];
      v16 = [mediaDestinationManagerFactory mediaDestinationManagerWithDestination:destinationCopy messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy dataSource:"isCurrentAccessory") delegate:{selfCopy, selfCopy}];
      [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationManager:v16];

      audioDestinationManager2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
      [audioDestinationManager2 configureWithHome:home currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy, "isCurrentAccessory")}];

      audioDestinationManager3 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
      messageHandler = [audioDestinationManager3 messageHandler];
      [messageHandler handleUpdatedDestination:destinationCopy];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }
}

- (void)unsetAudioDestination
{
  os_unfair_recursive_lock_lock_with_options();
  committedAudioDestination = self->_committedAudioDestination;
  self->_committedAudioDestination = 0;

  os_unfair_recursive_lock_unlock();
}

- (id)legacyAudioDestination
{
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = audioDestinationManager;
  if (audioDestinationManager)
  {
    destination = [audioDestinationManager destination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    destination = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return destination;
}

- (HMMediaDestination)audioDestination
{
  v13 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    legacyAudioDestination = [(HMDAppleMediaAccessory *)self legacyAudioDestination];
  }

  else
  {
    dataSource = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      legacyAudioDestination = [dataSource destinationForAppleMediaAccessory:self];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination due to no data source", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      legacyAudioDestination = 0;
    }
  }

  return legacyAudioDestination;
}

- (id)legacyCommittedAudioDestination
{
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = audioDestinationManager;
  if (audioDestinationManager)
  {
    committedDestination = [audioDestinationManager committedDestination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    committedDestination = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return committedDestination;
}

- (id)committedAudioDestination
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    legacyCommittedAudioDestination = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestination];
  }

  else
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      participantData = [mediaGroupParticipantDataLocalStorage participantData];
      destination = [participantData destination];

      goto LABEL_8;
    }

    legacyCommittedAudioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
  }

  destination = legacyCommittedAudioDestination;
LABEL_8:

  return destination;
}

- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HMDMediaDestinationControllerModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:identifierCopy parentUUID:uuid];

  [(HMDMediaDestinationControllerModel *)v7 setAvailableDestinationModelIdentifiers:MEMORY[0x277CBEBF8]];
  v8 = MEMORY[0x277CCABB0];
  featuresDataSource = [(HMDAccessory *)self featuresDataSource];
  v10 = [v8 numberWithUnsignedInteger:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", featuresDataSource)}];
  [(HMDMediaDestinationControllerModel *)v7 setSupportedOptions:v10];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__HMDAppleMediaAccessory_legacyCreateAudioDestinationControllerWithControllerIdentifier___block_invoke;
  v11[3] = &unk_27868A250;
  v11[4] = self;
  [(HMDAccessory *)self runTransactionWithModel:v7 label:@"Create audio destination controller" completion:v11];
}

void __89__HMDAppleMediaAccessory_legacyCreateAudioDestinationControllerWithControllerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Upload audio destination controller finished with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Upload audio destination controller completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)createAudioDestinationController
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (+[HMDDeviceCapabilities supportsAudioDestinationControllerCreation])
    {
      v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EE041E8C-28B9-4250-B2E2-0C032BDDDF1A"];
      v4 = MEMORY[0x277CCAD78];
      uuid = [(HMDAccessory *)self uuid];
      uUIDString = [uuid UUIDString];
      v7 = [uUIDString dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v12;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination controller with identifier: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = 138543362;
          v34 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v33, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        [(HMDAppleMediaAccessory *)v30 legacyCreateAudioDestinationControllerWithControllerIdentifier:v8];
      }

      else
      {
        mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)selfCopy mediaGroupParticipantDataLocalStorage];
        participantData = [mediaGroupParticipantDataLocalStorage participantData];
        destinationControllerData = [participantData destinationControllerData];

        if (destinationControllerData)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = selfCopy;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            v33 = 138543618;
            v34 = v19;
            v35 = 2112;
            v36 = destinationControllerData;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination controller data: %@", &v33, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
        }

        v20 = objc_alloc(MEMORY[0x277CD1B90]);
        uuid2 = [(HMDAccessory *)selfCopy uuid];
        featuresDataSource = [(HMDAccessory *)selfCopy featuresDataSource];
        v23 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:featuresDataSource];
        v24 = [v20 initWithIdentifier:v8 parentIdentifier:uuid2 destinationIdentifier:0 supportedOptions:v23 availableDestinationIdentifiers:MEMORY[0x277CBEBF8]];

        [mediaGroupParticipantDataLocalStorage updateDestinationControllerData:v24];
        [(HMDAppleMediaAccessory *)selfCopy mergeAudioDestinationControllerData:v24];
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
        v33 = 138543362;
        v34 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping audio destination controller creation due to device does not support home theater", &v33, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }
}

- (BOOL)hasValidHome:(id)home backingStore:(id)store messageDispatcher:(id)dispatcher
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  storeCopy = store;
  dispatcherCopy = dispatcher;
  v11 = dispatcherCopy;
  if (homeCopy)
  {
    v12 = dispatcherCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || storeCopy == 0;
  v14 = !v13;
  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138544130;
      v21 = v18;
      v22 = 2112;
      v23 = homeCopy;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = storeCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found nil objects: home: %@ messageDispatcher: %@ backing store: %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
  }

  return v14;
}

- (void)configureAudioDestinationController
{
  v32 = *MEMORY[0x277D85DE8];
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v5 = [categoryType isEqual:*MEMORY[0x277CCE870]];

  if (v5)
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    v7 = committedAudioDestinationControllerData;
    if (committedAudioDestinationControllerData && ([committedAudioDestinationControllerData parentIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "hmf_isEqualToUUID:", v9), v9, v8, (v10 & 1) != 0))
    {
      home = [(HMDAccessory *)self home];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
      backingStore = [(HMDAppleMediaAccessory *)self backingStore];
      v15 = [(HMDAppleMediaAccessory *)self hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher];
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v20;
          v30 = 2112;
          v31 = v7;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Configuring audio destination controller with data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        mediaDestinationControllerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationControllerFactory];
        logEventSubmitter = [home logEventSubmitter];
        dailyScheduler = [home dailyScheduler];
        LOBYTE(v27) = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
        v24 = [mediaDestinationControllerFactory mediaDestinationControllerWithData:v7 backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler targetDevice:v27 dataSource:selfCopy delegate:selfCopy];
        [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationController:v24];

        audioDestinationController = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
        [audioDestinationController configureWithHome:home];

        [(HMDAppleMediaAccessory *)selfCopy migrateLocalParticipantData];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v26;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination controller configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
      }
    }

    else
    {
      [(HMDAppleMediaAccessory *)self createAudioDestinationController];
    }
  }
}

- (void)mergeAudioDestinationControllerData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v6 = audioDestinationController;
  if (audioDestinationController)
  {
    [audioDestinationController mergeData:dataCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v10;
      v28 = 2112;
      v29 = dataCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination controller with data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDAccessory *)selfCopy home];
    msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
    notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
    backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
    if ([(HMDAppleMediaAccessory *)selfCopy hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
    {
      mediaDestinationControllerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationControllerFactory];
      logEventSubmitter = [home logEventSubmitter];
      dailyScheduler = [home dailyScheduler];
      LOBYTE(v24) = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
      [mediaDestinationControllerFactory mediaDestinationControllerWithData:dataCopy backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler targetDevice:v24 dataSource:selfCopy delegate:selfCopy];
      v18 = v25 = notificationCenter;
      [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationController:v18];

      audioDestinationController2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
      [audioDestinationController2 configureWithHome:home];

      notificationCenter = v25;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination controller merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }
}

- (void)unsetAudioDestinationControllerData
{
  os_unfair_recursive_lock_lock_with_options();
  committedAudioDestinationControllerData = self->_committedAudioDestinationControllerData;
  self->_committedAudioDestinationControllerData = 0;

  os_unfair_recursive_lock_unlock();
}

- (id)legacyCommittedAudioDestinationControllerData
{
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = audioDestinationController;
  if (audioDestinationController)
  {
    committedData = [audioDestinationController committedData];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    committedData = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return committedData;
}

- (id)committedAudioDestinationControllerData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    legacyCommittedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestinationControllerData];
  }

  else
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      participantData = [mediaGroupParticipantDataLocalStorage participantData];
      destinationControllerData = [participantData destinationControllerData];

      goto LABEL_8;
    }

    legacyCommittedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  }

  destinationControllerData = legacyCommittedAudioDestinationControllerData;
LABEL_8:

  return destinationControllerData;
}

- (id)legacyAudioDestinationControllerData
{
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = audioDestinationController;
  if (audioDestinationController)
  {
    data = [audioDestinationController data];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    data = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return data;
}

- (HMMediaDestinationControllerData)audioDestinationControllerData
{
  v13 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    legacyAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self legacyAudioDestinationControllerData];
  }

  else
  {
    dataSource = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      legacyAudioDestinationControllerData = [dataSource destinationControllerDataForAppleMediaAccessory:self];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination data due to no data source", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      legacyAudioDestinationControllerData = 0;
    }
  }

  return legacyAudioDestinationControllerData;
}

- (NSUUID)sensorAccessoryUUID
{
  sensorManager = [(HMDAppleMediaAccessory *)self sensorManager];
  sensorAccessoryUUID = [sensorManager sensorAccessoryUUID];

  return sensorAccessoryUUID;
}

- (void)unconfigure
{
  v2.receiver = self;
  v2.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v2 unconfigure];
}

- (BOOL)isDoorbellChimeSettingEnabled
{
  currentAccessorySettingsController = [(HMDAppleMediaAccessory *)self currentAccessorySettingsController];
  v3 = [currentAccessorySettingsController cachedSettingForKeyPath:@"root.doorbellChime.enabled"];

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (BOOL)isAppleTV
{
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v4 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];

  return v4;
}

- (BOOL)isHomePod
{
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v4 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];

  return v4;
}

- (void)updateProductInformation
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating Product Information", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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

  v10 = +[HMDDeviceCapabilities supportedStereoPairVersions];
  supportedStereoPairVersions = [(HMDAppleMediaAccessory *)selfCopy supportedStereoPairVersions];
  if (supportedStereoPairVersions != v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v32 = 138543618;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating supported stereo pair versions to: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v9 setSupportedStereoPairVersions:v17];
  }

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass == 6 && ([MEMORY[0x277D0F8E8] productInfo], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "productColor"), v20, -[HMDAppleMediaAccessory productColor](selfCopy, "productColor") != v21))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMFProductColorToString();
      v32 = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating product color to: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [v9 setProductColor:v27];
  }

  else if (supportedStereoPairVersions == v10)
  {
    goto LABEL_18;
  }

  home = [(HMDAccessory *)selfCopy home];
  backingStore = [home backingStore];
  v30 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
  v31 = [backingStore transaction:@"Update Product Information" options:v30];

  [v31 add:v9 withMessage:0];
  [v31 run];

LABEL_18:
}

- (void)createNewPairingIdentity
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    currentAccessorySetupMetricDispatcher = [(HMDAppleMediaAccessory *)self currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markSetupBeginStage:6 error:0];

    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateHH2PairingIdentity", "", &v25, 2u);
    }

    pairingIdentity = [MEMORY[0x277D0F8A8] pairingIdentity];
    v6 = objc_alloc(MEMORY[0x277D0F8A8]);
    uuid = [(HMDAccessory *)self uuid];
    uUIDString = [uuid UUIDString];
    publicKey = [pairingIdentity publicKey];
    privateKey = [pairingIdentity privateKey];
    v11 = [v6 initWithIdentifier:uUIDString publicKey:publicKey privateKey:privateKey];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new accessory pairing identity: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    systemStore = [MEMORY[0x277CFEC78] systemStore];
    if ([systemStore saveAppleMediaAccessoryPairingIdentity:v11])
    {
      v17 = 0;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to save new accessory pairing identity in the keychain store", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:16 reason:@"Keychain store save failed"];
    }

    [(HMDAppleMediaAccessory *)selfCopy setLastCreatedPairingIdentity:v11];
    [(HMDAppleMediaAccessory *)selfCopy setPairingIdentity:v11];
    publicPairingIdentity = [v11 publicPairingIdentity];
    [(HMDAppleMediaAccessory *)selfCopy forwardAccessoryPublicPairingIdentity:publicPairingIdentity];

    [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];
    currentAccessorySetupMetricDispatcher2 = [(HMDAppleMediaAccessory *)selfCopy currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher2 markSetupEndStage:6 error:v17];

    v24 = self->_logger;
    if (os_signpost_enabled(v24))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateHH2PairingIdentity", "", &v25, 2u);
    }
  }
}

- (void)configurePairingIdentity
{
  v17 = *MEMORY[0x277D85DE8];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  uuid = [(HMDAccessory *)self uuid];
  v5 = [systemStore pairingIdentityForAppleMediaAccessoryWithUUID:uuid];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = v9;
    v11 = @"<waiting>";
    if (v5)
    {
      v11 = v5;
    }

    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring with accessory pairing identity: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    [(HMDAppleMediaAccessory *)selfCopy setLastCreatedPairingIdentity:v5];
    [(HMDAppleMediaAccessory *)selfCopy setPairingIdentity:v5];
    publicPairingIdentity = [(__CFString *)v5 publicPairingIdentity];
    [(HMDAppleMediaAccessory *)selfCopy forwardAccessoryPublicPairingIdentity:publicPairingIdentity];
  }

  else
  {
    [(HMDAppleMediaAccessory *)selfCopy createNewPairingIdentity];
  }
}

- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v161 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  HMFUptime();
  v14 = v13;
  v128 = configurationCopy;
  v126 = trackerCopy;
  if (configurationCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = 0x277CCA000;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      uuid = [homeCopy uuid];
      uuid2 = [(HMDAccessory *)selfCopy uuid];
      v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
      *buf = 138545922;
      v140 = v19;
      v141 = 2114;
      v142 = @"accessoryConfigureStart";
      v143 = 2112;
      v144 = @"Configuring accessory";
      v145 = 2114;
      v146 = @"state";
      v147 = 2112;
      v148 = @"start";
      v149 = 2114;
      v150 = @"homeUUID";
      v151 = 2112;
      v152 = uuid;
      v153 = 2114;
      v154 = @"accessoryUUID";
      v155 = 2112;
      v156 = uuid2;
      v157 = 2114;
      v158 = @"initialConfig";
      v159 = 2112;
      v160 = v22;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);

      v18 = 0x277CCA000uLL;
    }

    objc_autoreleasePoolPop(v15);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v24 = objc_alloc(MEMORY[0x277D17DF8]);
    uuid3 = [homeCopy uuid];
    uuid4 = [(HMDAccessory *)selfCopy uuid];
    v27 = [*(v18 + 2992) numberWithBool:1];
    v28 = HMDTaggedLoggingCreateDictionary();
    v29 = [v24 initWithTag:@"accessoryConfigureStart" data:{v28, @"state", @"start", @"homeUUID", uuid3, @"accessoryUUID", uuid4, @"initialConfig", v27}];
    currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v29 processorList:currentTagProcessorList];

    trackerCopy = v126;
  }

  homeManager = [homeCopy homeManager];
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    v31 = [[HMDDoorbellChimeProfile alloc] initWithAppleMediaAccessory:self];
    [(NSMutableSet *)self->super.super._accessoryProfiles addObject:v31];
  }

  v138.receiver = self;
  v138.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v138 configureWithHome:homeCopy msgDispatcher:dispatcherCopy configurationTracker:trackerCopy initialConfiguration:v128];
  [(HMDAppleMediaAccessory *)self configureAppleMediaAccessoryMessengerWithFactory:self];
  wifiManager = [homeCopy wifiManager];
  [(HMDAppleMediaAccessory *)self setWifiManager:wifiManager];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [(HMDAppleMediaAccessory *)self setUserDefaults:standardUserDefaults];

  remoteLoginHandler = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
  workQueue = [(HMDAccessory *)self workQueue];
  eventStoreReadHandle = [(HMDAppleMediaAccessory *)self eventStoreReadHandle];
  eventForwarder = [(HMDAppleMediaAccessory *)self eventForwarder];
  [remoteLoginHandler configureWithWorkQueue:workQueue messageDispatcher:dispatcherCopy eventStoreReadHandle:eventStoreReadHandle eventForwarder:eventForwarder];

  dependencyFactory = [(HMDAppleMediaAccessory *)self dependencyFactory];
  v39 = [dependencyFactory symptomsHandlerForAccessory:self];
  [(HMDAppleMediaAccessory *)self setSymptomsHandler:v39];

  symptomsHandler = [(HMDAppleMediaAccessory *)self symptomsHandler];
  [symptomsHandler configure];

  [(HMDAppleMediaAccessory *)self configureAudioDestinationManager];
  audioAnalysisEventSubscriber = [(HMDAppleMediaAccessory *)self audioAnalysisEventSubscriber];
  if (audioAnalysisEventSubscriber)
  {
    goto LABEL_12;
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    v42 = [HMDAudioAnalysisEventSubscriber alloc];
    v43 = [HMDAudioAnalysisEventSubscriberContext alloc];
    audioAnalysisEventSubscriber = [(HMDAccessory *)self workQueue];
    v44 = [(HMDAudioAnalysisEventSubscriberContext *)v43 initWithAccessory:self queue:audioAnalysisEventSubscriber];
    v45 = [(HMDAudioAnalysisEventSubscriber *)v42 initWithContext:v44];
    [(HMDAppleMediaAccessory *)self setAudioAnalysisEventSubscriber:v45];

LABEL_12:
  }

  if (_os_feature_enabled_impl() && (isMac() || isiOSDevice()))
  {
    audioAnalysisBulletinNotificationManager = [homeCopy audioAnalysisBulletinNotificationManager];
    v47 = [audioAnalysisBulletinNotificationManager multipleLocalRegistrationsForAccessory:self];

    v137 = 0;
    audioAnalysisBulletinNotificationManager2 = [homeCopy audioAnalysisBulletinNotificationManager];
    v49 = [audioAnalysisBulletinNotificationManager2 localRegistrationForAccessory:self enabled:&v137];

    if ((v47 & 1) != 0 || !v49)
    {
      v59 = [HMDAudioAnalysisEventBulletinNotificationRegistration alloc];
      v60 = [MEMORY[0x277CBEB98] set];
      uuid5 = [(HMDAccessory *)self uuid];
      v62 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v59 initWithConditions:v60 audioAnalysisClassifierOptions:3 accessoryUUID:uuid5];

      predicate = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v62 predicate];
      [(HMDAppleMediaAccessory *)self setAudioAnalysisEventNotificationCondition:predicate];

      [(HMDAppleMediaAccessory *)self setAudioAnalysisEventNotificationEnabled:1];
      v64 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v66 = HMFGetOSLogHandle();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        if (v67)
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543362;
          v140 = v68;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Multiple local store registrations detected, attempting cleanup now...", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v64);
        audioAnalysisBulletinNotificationManager3 = [homeCopy audioAnalysisBulletinNotificationManager];
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = 3221225472;
        v136[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
        v136[3] = &unk_27868A250;
        v136[4] = selfCopy2;
        [audioAnalysisBulletinNotificationManager3 cleanupMultipleRegistrationsAndReplaceWithRegistration:v62 completion:v136];
      }

      else
      {
        if (v67)
        {
          HMFGetLogIdentifier();
          v70 = v125 = v64;
          [(HMDAppleMediaAccessory *)selfCopy2 isAudioAnalysisEventNotificationEnabled];
          v71 = HMFBooleanToString();
          [(HMDAppleMediaAccessory *)selfCopy2 audioAnalysisEventNotificationCondition];
          v73 = v72 = v49;
          *buf = 138543874;
          v140 = v70;
          v141 = 2112;
          v142 = v71;
          v143 = 2112;
          v144 = v73;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@Local bulletin not found creating and initializing audio analysis event notification registration with enabled: %@, condition: %@", buf, 0x20u);

          v49 = v72;
          v64 = v125;
        }

        objc_autoreleasePoolPop(v64);
        audioAnalysisBulletinNotificationManager3 = [homeCopy audioAnalysisBulletinNotificationManager];
        v135[0] = MEMORY[0x277D85DD0];
        v135[1] = 3221225472;
        v135[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_416;
        v135[3] = &unk_27868A250;
        v135[4] = selfCopy2;
        [audioAnalysisBulletinNotificationManager3 updateNotificationRegistration:v62 enabled:1 completion:v135];
      }
    }

    else
    {
      predicate2 = [v49 predicate];
      [(HMDAppleMediaAccessory *)self setAudioAnalysisEventNotificationCondition:predicate2];

      [(HMDAppleMediaAccessory *)self setAudioAnalysisEventNotificationEnabled:v137];
      v51 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        [(HMDAppleMediaAccessory *)selfCopy3 audioAnalysisEventNotificationCondition];
        v55 = v124 = v51;
        v56 = HMFBooleanToString();
        [(HMDAppleMediaAccessory *)selfCopy3 audioAnalysisEventNotificationCondition];
        v58 = v57 = v49;
        *buf = 138543874;
        v140 = v54;
        v141 = 2112;
        v142 = v56;
        v143 = 2112;
        v144 = v58;
        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Initializing audio analysis event notification registration with enabled: %@, condition: %@", buf, 0x20u);

        v49 = v57;
        v51 = v124;
      }

      objc_autoreleasePoolPop(v51);
    }

    trackerCopy = v126;
  }

  device = self->_device;
  self->_device = 0;

  identifier = [(HMDAccessory *)self identifier];
  deviceMediaRouteIdentifierFactory = [(HMDAppleMediaAccessory *)self deviceMediaRouteIdentifierFactory];
  v77 = deviceMediaRouteIdentifierFactory[2]();
  v78 = [identifier isEqual:v77];

  if (v78)
  {
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      v80 = logger;
      uuid6 = [(HMDAccessory *)self uuid];
      *buf = 138412290;
      v140 = uuid6;
      _os_signpost_emit_with_name_impl(&dword_229538000, v80, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryCurrentAccessoryAddedNotification" object:self];

    deviceController = self->_deviceController;
    if (!deviceController || ([(HMDDeviceController *)deviceController identifier], v84 = objc_claimAutoreleasedReturnValue(), v84, v84))
    {
      v85 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        v88 = HMFGetLogIdentifier();
        *buf = 138543362;
        v140 = v88;
        _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v85);
      dependencyFactory2 = [(HMDAppleMediaAccessory *)selfCopy4 dependencyFactory];
      deviceController = [dependencyFactory2 deviceController];
      v91 = self->_deviceController;
      self->_deviceController = deviceController;
    }

    softwareUpdateManager = [homeManager softwareUpdateManager];
    [softwareUpdateManager setAccessory:self];

    dependencyFactory3 = [(HMDAppleMediaAccessory *)self dependencyFactory];
    v94 = [dependencyFactory3 accountManagerForAccessory:self];
    device = [v94 device];

    if (device)
    {
      if ([(HMDAppleMediaAccessory *)self shouldUpdateWithDevice:device initialConfiguration:v128])
      {
        [(HMDAppleMediaAccessory *)self updateWithDevice:device];
      }

      notificationCenter2 = [(HMDMediaAccessory *)self notificationCenter];
      [notificationCenter2 removeObserver:self name:@"HMDDeviceUpdatedNotification" object:0];

      notificationCenter3 = [(HMDMediaAccessory *)self notificationCenter];
      [notificationCenter3 addObserver:self selector:sel_handleCurrentDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:device];

      remoteLoginHandler2 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
      [remoteLoginHandler2 _registerForUsernameUpdates];

      rpIdentity = [device rpIdentity];
      deviceIRK = [rpIdentity deviceIRK];
      data = [deviceIRK data];

      if (data)
      {
        [(HMDAppleMediaAccessory *)self postDeviceIRKIfDifferent:data];
      }
    }

    [(HMDAppleMediaAccessory *)self configurePairingIdentity];
    [(HMDAppleMediaAccessory *)self updateProductInformation];
    softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    softwareVersion2 = [productInfo softwareVersion];
    v105 = HMFEqualObjects();

    if ((v105 & 1) == 0)
    {
      workQueue2 = [(HMDAccessory *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_420;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(workQueue2, block);
    }

    if ([(HMDAppleMediaAccessory *)self supportsTargetControl])
    {
      targetControlManager = [(HMDAppleMediaAccessory *)self targetControlManager];

      if (!targetControlManager)
      {
        v108 = [[HMDTargetControlManager alloc] initWithTargetAccessory:self controllers:0];
        [(HMDAppleMediaAccessory *)self setTargetControlManager:v108];
      }
    }

    [(HMDAppleMediaAccessory *)self _fetchMultiUserLanguages];
    notificationCenter4 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter4 removeObserver:self name:@"HMDHomeUserRemovedNotification" object:0];

    notificationCenter5 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter5 addObserver:self selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:homeCopy];

    v111 = [HMDAppleMediaAccessoryMetricsDispatcher alloc];
    logEventSubmitter = [homeCopy logEventSubmitter];
    dailyScheduler = [homeCopy dailyScheduler];
    v114 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v111 initWithDataSource:self logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler];
    [(HMDAppleMediaAccessory *)self setMetricsDispatcher:v114];

    metricsDispatcher = [(HMDAppleMediaAccessory *)self metricsDispatcher];
    [metricsDispatcher registerForDailySetRoomLogEvents];

    if (([homeCopy isMultiUserEnabled] & 1) == 0)
    {
      [homeCopy enableMultiUser];
    }

    notificationCenter6 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter6 addObserver:self selector:sel_handleCurrentDeviceIRKUpdated_ name:@"HMDAppleAccountManagerFetchedCurrentDeviceIRK" object:0];

    v117 = self->_logger;
    if (os_signpost_enabled(v117))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v117, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "", buf, 2u);
    }

    trackerCopy = v126;
  }

  else
  {
    [(HMDAppleMediaAccessory *)self startMonitoringReachability];
    __bootstrapSupportedStereoPairVersions(self);
  }

  sleepWakeStateController = [(HMDAppleMediaAccessory *)self sleepWakeStateController];
  home = [(HMDAccessory *)self home];
  workQueue3 = [(HMDAccessory *)self workQueue];
  [sleepWakeStateController configureWithHome:home messageDispatcher:dispatcherCopy workQueue:workQueue3];

  [(HMDAppleMediaAccessory *)self updateReachabilityOfCurrentDevice];
  [(HMDAppleMediaAccessory *)self _configureGroupParticipantLocalDataStorageWithHome:homeCopy];
  [(HMDAppleMediaAccessory *)self createOrUpdateSoftwareUpdateEventProviderIfNecessary];
  [(HMDAppleMediaAccessory *)self createSoftwareUpdateEventListenerIfNecessary];
  [(HMDAppleMediaAccessory *)self _loadWiFiInfoDuringConfiguration];
  [(HMDDeviceController *)self->_deviceController setDelegate:self];
  workQueue4 = [(HMDAccessory *)self workQueue];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_428;
  v129[3] = &unk_27867AD18;
  v133 = v128;
  v132 = v14;
  v129[4] = self;
  v130 = homeCopy;
  v131 = trackerCopy;
  v122 = trackerCopy;
  v123 = homeCopy;
  dispatch_async(workQueue4, v129);
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to clean up multiple local store registrations: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully cleaned up multiple local store registrations";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_416(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to save initial audio analysis registration: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully created initial audio analysis registration";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v2 = [v3 softwareVersion];
  [v1 _updateSoftwareVersion:v2];
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_428(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = MEMORY[0x277CCACA8];
      HMFUptime();
      v8 = [v6 stringWithFormat:@"%.3f", v7 - *(a1 + 56)];
      v9 = [*(a1 + 40) uuid];
      v10 = [*(a1 + 32) uuid];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138546434;
      v27 = v5;
      v28 = 2114;
      v29 = @"accessoryConfigureDone";
      v30 = 2112;
      v31 = @"Configured accessory";
      v32 = 2114;
      v33 = @"state";
      v34 = 2112;
      v35 = @"end";
      v36 = 2114;
      v37 = @"duration";
      v38 = 2112;
      v39 = v8;
      v40 = 2114;
      v41 = @"homeUUID";
      v42 = 2112;
      v43 = v9;
      v44 = 2114;
      v45 = @"accessoryUUID";
      v46 = 2112;
      v47 = v10;
      v48 = 2114;
      v49 = @"accessoryType";
      v50 = 2112;
      v51 = v12;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
    }

    objc_autoreleasePoolPop(v2);
    v13 = [MEMORY[0x277D17DE8] sharedInstance];
    v14 = objc_alloc(MEMORY[0x277D17DF8]);
    v15 = MEMORY[0x277CCACA8];
    HMFUptime();
    v17 = [v15 stringWithFormat:@"%.3f", v16 - *(a1 + 56)];
    v18 = [*(a1 + 40) uuid];
    v19 = [*(a1 + 32) uuid];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = HMDTaggedLoggingCreateDictionary();
    v23 = [v14 initWithTag:@"accessoryConfigureDone" data:{v22, @"state", @"end", @"duration", v17, @"homeUUID", v18, @"accessoryUUID", v19, @"accessoryType", v21}];
    v24 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [v13 submitTaggedEvent:v23 processorList:v24];
  }

  v25 = *(a1 + 48);
  if (v25)
  {
    dispatch_group_leave(v25);
  }
}

- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Home Theater QFA is not enabled", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      homeManager = [homeCopy homeManager];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
      v8 = mediaGroupParticipantDataLocalStorage;
      if (homeCopy && msgDispatcher && mediaGroupParticipantDataLocalStorage)
      {
        [mediaGroupParticipantDataLocalStorage configureWithHome:homeCopy messageDispatcher:msgDispatcher];
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v17 = 138544386;
          v18 = v12;
          v19 = 2112;
          v20 = homeCopy;
          v21 = 2112;
          v22 = msgDispatcher;
          v23 = 2112;
          v24 = v8;
          v25 = 2112;
          v26 = homeManager;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to configure groups participant local data storage with dependencies home: %@ messageDispatcher: %@ dataStorage: %@ homeManager: %@", &v17, 0x34u);
        }

        objc_autoreleasePoolPop(v9);
      }
    }
  }
}

- (HMDDoorbellChimeProfile)doorbellChimeProfile
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v3 = [accessoryProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(accessoryProfiles);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [accessoryProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)clients
{
  clientsCopy = clients;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDAccessory *)&v7 _shouldFilterAccessoryProfileForEntitledClients:clientsCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients
{
  clientsCopy = clients;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDMediaAccessory *)&v7 _shouldFilterAccessoryProfileForUnentitledClients:clientsCopy];
  }

  return v5;
}

- (void)_registerForNotifications
{
  v2.receiver = self;
  v2.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v2 _registerForNotifications];
  isInternalBuild();
}

- (void)_registerForMessages
{
  v26[3] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  featuresDataSource = [home featuresDataSource];
  isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

  if ((isMessageBindingsEnabled & 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = HMDAppleMediaAccessory;
    [(HMDAccessory *)&v22 _registerForMessages];
    msgDispatcher = [(HMDAccessory *)self msgDispatcher];
    isInternalBuild();
    v7 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v26[0] = v7;
    v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v26[1] = v8;
    v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v26[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];

    [msgDispatcher registerForMessage:*MEMORY[0x277CCEAB8] receiver:self policies:v10 selector:sel_handleFetchManagedConfigurationProfiles_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCECB8] receiver:self policies:v10 selector:sel_handleRemoveManagedConfigurationProfile_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCEB18] receiver:self policies:v10 selector:sel_handleInstallManagedConfigurationProfile_];

    v11 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v25[0] = v11;
    v12 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v25[1] = v12;
    v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
    v25[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];

    [msgDispatcher registerForMessage:*MEMORY[0x277CD1080] receiver:self policies:v14 selector:sel__startUpdate_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCEA08] receiver:self policies:v14 selector:sel_handleDeleteSiriHistoryRequest_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCF0D0] receiver:self policies:v14 selector:sel_handleUpdatePreferredMediaUser_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCEF08] receiver:self policies:v14 selector:sel_handleSoftwareUpdateV2Scan_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCEF10] receiver:self policies:v14 selector:sel_handleSoftwareUpdateV2ScanRepeatedlyAndApplyMessage_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCECF0] receiver:self policies:v14 selector:sel__handleScanNetworksMessage_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCEB30] receiver:self policies:v14 selector:sel__handleAssociateToNetworkMessage_];
    [msgDispatcher registerForMessage:*MEMORY[0x277CCF118] receiver:self policies:v14 selector:sel__handleQueryNetworkStatusMessage_];

    if (isInternalBuild())
    {
      v15 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
      v16 = [HMDXPCMessagePolicy policyWithEntitlements:13];
      v24[0] = v16;
      v24[1] = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

      [msgDispatcher registerForMessage:*MEMORY[0x277CCF0A8] receiver:self policies:v17 selector:sel__handleTriggerPairingIdentityUpdateNotification_];
    }

    v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v23[0] = v18;
    v19 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v23[1] = v19;
    v20 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v23[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

    [msgDispatcher registerForMessage:*MEMORY[0x277CD20D0] receiver:self policies:v21 selector:sel__handleAudioAnalysisBulletinBoardCommit_];
  }
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  name = [(HMDMediaAccessory *)self name];
  identifier = [(HMDAccessory *)self identifier];
  category = [(HMDAccessory *)self category];
  name2 = [category name];
  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
  softwareUpdate = [(HMDAccessory *)self softwareUpdate];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v6 = @" isCurrent = YES,";
  }

  else
  {
    v6 = &stru_283CF9D50;
  }

  device = [(HMDAppleMediaAccessory *)self device];
  home = [(HMDAccessory *)self home];
  name3 = [home name];
  room = [(HMDAccessory *)self room];
  uuid2 = [room uuid];
  v17 = [v16 stringWithFormat:@"<%@, UUID = %@, Name = %@, Identifier = %@, Category = %@, Version = %@, Update = %@, Stereo Pair Versions = %@, %@ Device = %@, Home = %@, RoomUUID = %@>", v15, uUIDString, name, identifier, name2, softwareVersion, softwareUpdate, v5, v6, device, name3, uuid2];

  return v17;
}

- (void)dealloc
{
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self];

  targetControlManager = [(HMDAppleMediaAccessory *)self targetControlManager];
  [targetControlManager invalidate];

  [(HMDAppleMediaAccessory *)self setTargetControlManager:0];
  v5.receiver = self;
  v5.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v5 dealloc];
}

- (HMDAppleMediaAccessory)initWithDeviceController:(id)controller deviceIdentifierFactory:(id)factory
{
  controllerCopy = controller;
  factoryCopy = factory;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceController, controller);
    v11 = _Block_copy(factoryCopy);
    deviceMediaRouteIdentifierFactory = v10->_deviceMediaRouteIdentifierFactory;
    v10->_deviceMediaRouteIdentifierFactory = v11;
  }

  return v10;
}

- (HMDAppleMediaAccessory)init
{
  v16.receiver = self;
  v16.super_class = HMDAppleMediaAccessory;
  v2 = [(HMDMediaAccessory *)&v16 init];
  if (v2)
  {
    v3 = HMFGetOSLogHandle();
    logger = v2->_logger;
    v2->_logger = v3;

    v2->_deviceReachable = 1;
    settingsConnectionFactory = v2->_settingsConnectionFactory;
    v2->_settingsConnectionFactory = &__block_literal_global_339;

    deviceMediaRouteIdentifierFactory = v2->_deviceMediaRouteIdentifierFactory;
    v2->_deviceMediaRouteIdentifierFactory = &__block_literal_global_341_143329;

    v7 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
    uuid = [(HMDAccessory *)v2 uuid];
    v9 = [(HMDAppleMediaAccessorySleepWakeStateController *)v7 initWithAccessoryUUID:uuid dataSource:v2];
    sleepWakeStateController = v2->_sleepWakeStateController;
    v2->_sleepWakeStateController = v9;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    hostedAccessories = v2->_hostedAccessories;
    v2->_hostedAccessories = weakObjectsHashTable;

    v2->_productColor = 0;
    objc_storeWeak(&v2->_mediaDestinationControllerFactory, v2);
    objc_storeWeak(&v2->_mediaDestinationManagerFactory, v2);
    v13 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
    dependencyFactory = v2->_dependencyFactory;
    v2->_dependencyFactory = v13;
  }

  return v2;
}

id __30__HMDAppleMediaAccessory_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)factory deviceMediaRouteIdentifierFactory:(id)identifierFactory
{
  factoryCopy = factory;
  identifierFactoryCopy = identifierFactory;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dependencyFactory, factory);
    if (identifierFactoryCopy)
    {
      v11 = _Block_copy(identifierFactoryCopy);
      deviceMediaRouteIdentifierFactory = v10->_deviceMediaRouteIdentifierFactory;
      v10->_deviceMediaRouteIdentifierFactory = v11;
    }
  }

  return v10;
}

- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home dependencyFactory:(id)factory
{
  v74 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  factoryCopy = factory;
  v12 = transactionCopy;
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
    deviceUUID = [v14 deviceUUID];

    if (deviceUUID)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      deviceUUID2 = [v14 deviceUUID];
      selfCopy = [v16 initWithUUIDString:deviceUUID2];

      deviceUUID = [factoryCopy deviceControllerWithDeviceIdentifier:selfCopy];
    }

    device = [v14 device];

    if (device)
    {
      if (!deviceUUID)
      {
        device2 = [v14 device];
        deviceUUID = [factoryCopy deviceControllerWithDevice:device2];
      }

      device3 = [v14 device];
      [deviceUUID updateWithDevice:device3 completionHandler:0];
    }

    deviceAddress = [v14 deviceAddress];
    v22 = deviceAddress;
    if (deviceUUID)
    {
      goto LABEL_24;
    }

    if (deviceAddress)
    {
      selfCopy = [factoryCopy deviceWithAddress:deviceAddress];
      if (!selfCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      idsIdentifier = [v14 idsIdentifier];

      if (!idsIdentifier)
      {
        goto LABEL_21;
      }

      idsIdentifier2 = [v14 idsIdentifier];
      selfCopy = [factoryCopy deviceForIDSIdentifier:idsIdentifier2];

      if (!selfCopy)
      {
        goto LABEL_21;
      }
    }

    deviceUUID = [factoryCopy deviceControllerWithDevice:selfCopy];

    if (deviceUUID)
    {
LABEL_24:

      v71.receiver = self;
      v71.super_class = HMDAppleMediaAccessory;
      v33 = [(HMDMediaAccessory *)&v71 initWithTransaction:v12 home:homeCopy];
      if (v33)
      {
        v70 = homeCopy;
        v34 = HMFGetOSLogHandle();
        logger = v33->_logger;
        v33->_logger = v34;

        variant = [v14 variant];
        v33->_variant = [variant unsignedIntegerValue];

        accessoryCapabilities = [v14 accessoryCapabilities];
        rawCapabilities = v33->_rawCapabilities;
        v33->_rawCapabilities = accessoryCapabilities;

        v39 = objc_alloc(MEMORY[0x277CD1678]);
        accessoryCapabilities2 = [v14 accessoryCapabilities];
        v41 = [v39 initWithProtoData:accessoryCapabilities2];
        capabilitiesInternal = v33->_capabilitiesInternal;
        v33->_capabilitiesInternal = v41;

        objc_storeStrong(&v33->_deviceController, deviceUUID);
        softwareVersion = [v14 softwareVersion];
        softwareVersion = v33->_softwareVersion;
        v33->_softwareVersion = softwareVersion;

        pairingIdentity = [v14 pairingIdentity];
        pairingIdentity = v33->_pairingIdentity;
        v33->_pairingIdentity = pairingIdentity;

        settingsConnectionFactory = v33->_settingsConnectionFactory;
        v33->_settingsConnectionFactory = &__block_literal_global_143335;

        deviceMediaRouteIdentifierFactory = v33->_deviceMediaRouteIdentifierFactory;
        v33->_deviceMediaRouteIdentifierFactory = &__block_literal_global_333_143336;

        idsIdentifier3 = [v14 idsIdentifier];
        idsIdentifier4 = idsIdentifier3;
        if (!idsIdentifier3)
        {
          selfCopy = [v14 device];
          idsIdentifier4 = [(HMDAppleMediaAccessory *)selfCopy idsIdentifier];
        }

        objc_storeStrong(&v33->_idsIdentifier, idsIdentifier4);
        if (!idsIdentifier3)
        {
        }

        deviceAddress2 = [v14 deviceAddress];
        deviceAddress = v33->_deviceAddress;
        v33->_deviceAddress = deviceAddress2;

        deviceIRKData = [v14 deviceIRKData];
        deviceIRK = v33->_deviceIRK;
        v33->_deviceIRK = deviceIRKData;

        if (!v33->_deviceIRK)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = v33;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = HMFGetLogIdentifier();
            *buf = 138543362;
            v73 = v58;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Creating accessory with no deviceIRKData", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v55);
        }

        loggedInAccount = [v14 loggedInAccount];
        v60 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v33 loggedInAccountData:loggedInAccount];
        remoteLoginHandler = v33->_remoteLoginHandler;
        v33->_remoteLoginHandler = v60;

        supportedStereoPairVersions = [v14 supportedStereoPairVersions];
        v33->_supportedStereoPairVersions = [supportedStereoPairVersions unsignedIntegerValue];

        v63 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
        uuid = [(HMDAccessory *)v33 uuid];
        v65 = [(HMDAppleMediaAccessorySleepWakeStateController *)v63 initWithAccessoryUUID:uuid dataSource:v33];
        sleepWakeStateController = v33->_sleepWakeStateController;
        v33->_sleepWakeStateController = v65;

        __bootstrapSupportedStereoPairVersions(v33);
        productColor = [v14 productColor];
        v33->_productColor = [productColor unsignedIntegerValue];

        objc_storeStrong(&v33->_dependencyFactory, factory);
        homeCopy = v70;
      }

      selfCopy2 = v33;

      v27 = selfCopy2;
      goto LABEL_35;
    }

LABEL_21:
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v32 = v69 = homeCopy;
      *buf = 138543362;
      v73 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Unable to determine device", buf, 0xCu);

      homeCopy = v69;
    }

    objc_autoreleasePoolPop(v30);
    deviceUUID = 0;
    goto LABEL_24;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize an AppleMedia accessory without an AppleMedia model.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = 0;
LABEL_35:

  return v27;
}

id __69__HMDAppleMediaAccessory_initWithTransaction_home_dependencyFactory___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home
{
  homeCopy = home;
  transactionCopy = transaction;
  v8 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
  v9 = [(HMDAppleMediaAccessory *)self initWithTransaction:transactionCopy home:homeCopy dependencyFactory:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t313 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t313, &__block_literal_global_628);
  }

  v3 = logCategory__hmf_once_v314;

  return v3;
}

void __37__HMDAppleMediaAccessory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v314;
  logCategory__hmf_once_v314 = v0;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v65 = *MEMORY[0x277D85DE8];
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
    isInternalBuild();
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v58[0] = v14;
    v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v58[1] = v15;
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v58[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];

    name = [messageCopy name];
    LOBYTE(v15) = HMFEqualObjects();

    name2 = [messageCopy name];
    if ((v15 & 1) == 0)
    {
      v26 = HMFEqualObjects();

      name2 = [messageCopy name];
      if ((v26 & 1) == 0)
      {
        v27 = HMFEqualObjects();

        if (v27)
        {
          name2 = [messageCopy name];
        }

        else
        {

          v28 = [HMDXPCMessagePolicy policyWithEntitlements:5];
          v57[0] = v28;
          v29 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
          v57[1] = v29;
          v30 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
          v57[2] = v30;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];

          name3 = [messageCopy name];
          LOBYTE(v29) = HMFEqualObjects();

          name2 = [messageCopy name];
          if ((v29 & 1) == 0)
          {
            v32 = HMFEqualObjects();

            name2 = [messageCopy name];
            if ((v32 & 1) == 0)
            {
              v33 = HMFEqualObjects();

              name2 = [messageCopy name];
              if ((v33 & 1) == 0)
              {
                v34 = HMFEqualObjects();

                name2 = [messageCopy name];
                if ((v34 & 1) == 0)
                {
                  v35 = HMFEqualObjects();

                  name2 = [messageCopy name];
                  if ((v35 & 1) == 0)
                  {
                    v36 = HMFEqualObjects();

                    name2 = [messageCopy name];
                    if ((v36 & 1) == 0)
                    {
                      v37 = HMFEqualObjects();

                      name2 = [messageCopy name];
                      if ((v37 & 1) == 0)
                      {
                        v38 = HMFEqualObjects();

                        if (v38)
                        {
                          name2 = [messageCopy name];
                        }

                        else
                        {

                          if (isInternalBuild())
                          {
                            v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
                            v40 = [HMDXPCMessagePolicy policyWithEntitlements:13];
                            v56[0] = v40;
                            v56[1] = v17;
                            name2 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];

                            name4 = [messageCopy name];
                            v42 = HMFEqualObjects();

                            if (v42)
                            {
                              name5 = [messageCopy name];
                              v25 = HMFCreateMessageBindingWithReceiver();

                              goto LABEL_23;
                            }
                          }

                          v44 = [HMDXPCMessagePolicy policyWithEntitlements:5];
                          v55[0] = v44;
                          v45 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
                          v55[1] = v45;
                          v46 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
                          v55[2] = v46;
                          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];

                          name6 = [messageCopy name];
                          LODWORD(v45) = HMFEqualObjects();

                          if (!v45)
                          {

                            settingsController = [v12 settingsController];
                            messageHandler = [settingsController messageHandler];
                            v49 = objc_opt_class();
                            settingsController2 = [v12 settingsController];
                            messageHandler2 = [settingsController2 messageHandler];
                            v17 = [v49 messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:messageHandler2];

                            if (v17)
                            {
                              v52 = v17;
                            }

                            else
                            {
                              v54.receiver = self;
                              v54.super_class = &OBJC_METACLASS___HMDAppleMediaAccessory;
                              v52 = objc_msgSendSuper2(&v54, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
                            }

                            v25 = v52;
                            goto LABEL_24;
                          }

                          name2 = [messageCopy name];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v25 = HMFCreateMessageBindingWithReceiver();
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    name7 = [messageCopy name];
    *buf = 138543874;
    v60 = v23;
    v61 = 2112;
    v62 = name7;
    v63 = 2112;
    v64 = receiverCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = 0;
LABEL_25:

  return v25;
}

+ (BOOL)shouldAcceptMessage:(id)message home:(id)home privilege:(unint64_t)privilege
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  homeCopy = home;
  if ([messageCopy isRemote])
  {
    if ([messageCopy isSecureRemote])
    {
      currentUser = [messageCopy matchingRemoteIdentityUserForHome:homeCopy];
      goto LABEL_6;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = homeCopy;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      objc_autoreleasePoolPop(v16);
      responseHandler = [messageCopy responseHandler];

      if (responseHandler)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        responseHandler2 = [messageCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v21, 0);

        responseHandler = 0;
      }

      goto LABEL_30;
    }

    v19 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v19;
    v20 = "%{public}@Only secure clients may modify settings";
LABEL_16:
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, v20, &v32, 0xCu);

    goto LABEL_17;
  }

  if (([messageCopy isEntitledForSPIAccess] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = homeCopy;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v19 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v19;
    v20 = "%{public}@Only entitled clients may modify settings";
    goto LABEL_16;
  }

  currentUser = [homeCopy currentUser];
LABEL_6:
  responseHandler = currentUser;
  if (!currentUser)
  {
    v11 = objc_autoreleasePoolPush();
    v23 = homeCopy;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v14 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v14;
    v34 = 2112;
    v35 = messageCopy;
    v15 = "%{public}@Unable to determine originator of message: %@";
    goto LABEL_27;
  }

  if (privilege != 3)
  {
    if (privilege == 4 && ([currentUser isAdministrator] & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = homeCopy;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      v14 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v14;
      v34 = 2112;
      v35 = responseHandler;
      v15 = "%{public}@User does not have administrator privilege: %@";
      goto LABEL_27;
    }

LABEL_22:
    responseHandler3 = objc_autoreleasePoolPush();
    v25 = homeCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = messageCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Accepting message: %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(responseHandler3);
    LOBYTE(responseHandler3) = 1;
    goto LABEL_31;
  }

  if ([currentUser isOwner])
  {
    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  v28 = homeCopy;
  v13 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_28;
  }

  v14 = HMFGetLogIdentifier();
  v32 = 138543618;
  v33 = v14;
  v34 = 2112;
  v35 = responseHandler;
  v15 = "%{public}@User does not have owner privilege: %@";
LABEL_27:
  _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v15, &v32, 0x16u);

LABEL_28:
  objc_autoreleasePoolPop(v11);
  responseHandler3 = [messageCopy responseHandler];

  if (responseHandler3)
  {
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"User has insufficient privileges for request." suggestion:0];
    responseHandler4 = [messageCopy responseHandler];
    (responseHandler4)[2](responseHandler4, v29, 0);

LABEL_30:
    LOBYTE(responseHandler3) = 0;
  }

LABEL_31:

  return responseHandler3;
}

- (id)assistantObject
{
  v87 = *MEMORY[0x277D85DE8];
  v76.receiver = self;
  v76.super_class = HMDAppleMediaAccessory;
  assistantObject = [(HMDMediaAccessory *)&v76 assistantObject];
  v4 = [assistantObject mutableCopy];

  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v7 = [categoryType isEqual:*MEMORY[0x277CCE870]];

  if (v7)
  {
    v8 = MEMORY[0x277D481C0];
    v9 = MEMORY[0x277D48270];
    goto LABEL_5;
  }

  categoryType2 = [category categoryType];
  v11 = [categoryType2 isEqual:*MEMORY[0x277CCE8B0]];

  if (v11)
  {
    v8 = MEMORY[0x277D48200];
    v9 = MEMORY[0x277D48350];
LABEL_5:
    v12 = *v9;
    v13 = *v8;
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    v61 = v13;
    if (!v14)
    {
      v81[0] = @"objectServiceType";
      v81[1] = @"objectServiceSubType";
      v82[0] = v12;
      v82[1] = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
      [v4 addEntriesFromDictionary:v15];
    }

    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v84 = v18;
    v85 = 2112;
    v86 = category;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Apple media accessory with invalid accessory category: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v12 = 0;
  v61 = 0;
LABEL_13:
  home = [(HMDAccessory *)self home];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  mediaSystems = [home mediaSystems];
  v21 = objc_msgSend_copy(mediaSystems);

  v22 = [v21 countByEnumeratingWithState:&v72 objects:v80 count:16];
  v63 = home;
  v64 = v4;
  v62 = category;
  if (v22)
  {
    v23 = v22;
    v24 = v12;
    v25 = *v73;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v73 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v72 + 1) + 8 * i);
        accessories = [v27 accessories];
        v29 = [accessories containsObject:self];

        if (v29)
        {
          name = [v27 name];
          urlString = [v27 urlString];
          goto LABEL_23;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    urlString = 0;
    name = 0;
LABEL_23:
    v12 = v24;
    home = v63;
    v4 = v64;
  }

  else
  {
    urlString = 0;
    name = 0;
  }

  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  data = [audioDestinationController data];
  destinationIdentifier = [data destinationIdentifier];

  if (destinationIdentifier)
  {
    name2 = [(HMDMediaAccessory *)self name];

    urlString2 = [audioDestinationController urlString];

    urlString = urlString2;
    name = name2;
  }

  audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
  v38 = audioDestination;
  if (!name && audioDestination)
  {
    v66 = audioDestination;
    v67 = urlString;
    v58 = data;
    v59 = audioDestinationController;
    v60 = v12;
    accessories2 = [home accessories];
    v40 = [accessories2 na_map:&__block_literal_global_175501];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v40;
    v41 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = *v69;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v69 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v68 + 1) + 8 * j);
          audioDestinationController2 = [v46 audioDestinationController];
          data2 = [audioDestinationController2 data];
          destinationIdentifier2 = [data2 destinationIdentifier];
          uniqueIdentifier = [v66 uniqueIdentifier];
          v51 = [destinationIdentifier2 hmf_isEqualToUUID:uniqueIdentifier];

          if (v51)
          {
            name3 = [v46 name];

            urlString3 = [audioDestinationController2 urlString];

            v67 = urlString3;
            v43 = name3;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v42);
    }

    else
    {
      v43 = 0;
    }

    home = v63;
    v4 = v64;
    audioDestinationController = v59;
    v12 = v60;
    v38 = v66;
    urlString = v67;
    data = v58;
    name = v43;
  }

  if (name && urlString)
  {
    v78 = name;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v4 setObject:v54 forKey:@"objectGroups"];

    v77 = urlString;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    [v4 setObject:v55 forKey:@"objectGroupIdentifiers"];
  }

  v56 = objc_msgSend_copy(v4);

  return v56;
}

void *__52__HMDAppleMediaAccessory_Assistant__assistantObject__block_invoke(uint64_t a1, void *a2)
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

- (id)languageValueList
{
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];
  languageValueList = [settingsController languageValueList];
  v4 = languageValueList;
  if (languageValueList)
  {
    v5 = languageValueList;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler
{
  handlerCopy = handler;
  routerCopy = router;
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  v13 = [[HMDAppleMediaAccessoryMessenger alloc] initWithIdentifier:identifierCopy messageDispatcher:dispatcherCopy router:routerCopy localHandler:handlerCopy];

  return v13;
}

- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)factory
{
  v21 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  uuid = [(HMDAccessory *)self uuid];
  msgDispatcher = [(HMDAccessory *)self msgDispatcher];
  home = [(HMDAccessory *)self home];
  if (!uuid)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  if (!msgDispatcher)
  {
    goto LABEL_10;
  }

  v8 = home;
  if (home)
  {
    v9 = [[HMDAppleMediaAccessoryMessageRouter alloc] initWithIdentifier:uuid messageDispatcher:msgDispatcher];
    [(HMDAppleMediaAccessoryMessageRouter *)v9 setDataSource:self];
    v10 = [HMDAssistantSettingsConnection alloc];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v12 = [(HMDAssistantSettingsConnection *)v10 initWithScheduler:defaultScheduler];

    [(HMDAssistantSettingsConnection *)v12 setDataSource:v12];
    v13 = [[HMDAppleMediaAccessoryLocalMessageHandler alloc] initWithIdentifier:uuid assistantSettingsConnection:v12];
    [(HMDAppleMediaAccessoryLocalMessageHandler *)v13 setDataSource:self];
    v14 = [factoryCopy createAppleMediaAccessoryMessengerWithIdentifier:uuid messageDispatcher:msgDispatcher router:v9 localHandler:v13];
    [v14 registerForMessagesWithHome:v8];
    [(HMDAppleMediaAccessory *)self setMessenger:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure apple media accessory due to no home on accessory", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (BOOL)isCurrentDevicePrimaryResident
{
  home = [(HMDAccessory *)self home];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];

  return isCurrentDevicePrimaryResident;
}

@end