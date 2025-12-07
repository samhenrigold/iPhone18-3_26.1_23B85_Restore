@interface HMHomeManager
+ (id)instanceTracker;
+ (id)logCategory;
+ (id)sharedEventStore;
+ (void)fetchSetupModeWithCompletion:(id)completion;
- (BOOL)_isValidCachedHomeConfiguration:(id)configuration;
- (BOOL)_shouldWeMergeLatestHomeGraphFromDaemonResponse:(id)response;
- (BOOL)accessoryInfoDataProvider:(id)provider transformHomeUUID:(id)d accessoryUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientAccessoryIdentifier:(id *)accessoryIdentifier;
- (BOOL)accessorySettingsDataSource:(id)source transformHomeUUID:(id)d accessoryUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientAccessoryIdentifier:(id *)accessoryIdentifier;
- (BOOL)accessorySettingsDataSource:(id)source transformHomeUUID:(id)d mediaSystemUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientMediaSystemIdentifier:(id *)systemIdentifier;
- (BOOL)hasOptedToHH2;
- (BOOL)homeSafetySecurityEnabled;
- (BOOL)isAccessAllowedWhenLocked;
- (BOOL)isDataSyncInProgress;
- (BOOL)isHH2MigrationAvailable;
- (BOOL)isHH2MigrationInProgress;
- (BOOL)isHomeRemovedPermanently:(id)permanently;
- (BOOL)isInitialMergeComplete;
- (BOOL)isResidentEnabledForThisDevice;
- (BOOL)isThisDeviceResidentCapable;
- (BOOL)isiPhoneOnlyPairingSupportedForMatterAccessories;
- (BOOL)removeAllHomeKitPairingIdentities;
- (BOOL)shouldPostHH2UpgradeRequired;
- (HMAccessory)currentAccessory;
- (HMApplicationData)applicationData;
- (HMCameraClipsQuotaMessenger)cameraClipsQuotaMessenger;
- (HMELastEventStore)lastEventStore;
- (HMHome)currentHome;
- (HMHome)primaryHome;
- (HMHomeManager)init;
- (HMHomeManager)initWithConfiguration:(id)configuration;
- (HMHomeManager)initWithOptions:(unint64_t)options;
- (HMHomeManager)initWithUUID:(id)d configuration:(id)configuration context:(id)context xpcEventRouterClient:(id)client lastEventStore:(id)store timerFactory:(id)factory darwinNotificationProvider:(id)provider privacySettingsProvider:(id)self0;
- (HMHomeManagerAuthorizationStatus)authorizationStatus;
- (HMHomeManagerConfiguration)configuration;
- (NSArray)homes;
- (NSArray)incomingHomeInvitations;
- (NSError)hh2MigrationFailedError;
- (NSString)homeCacheDir;
- (id)_beginActiveAssertionWithReason:(id)reason;
- (id)_homeWithUUID:(id)d;
- (id)_loadHH2MigrationInfoFromHMCache:(id)cache;
- (id)_privateDelegate;
- (id)_refreshBeforeDate:(id)date completionHandler:(id)handler;
- (id)createAccessoryInfoDataProvider;
- (id)createAccessorySettingsController;
- (id)createAccessorySettingsDataSource;
- (id)createAccessorySettingsMessengerWithHomeUUID:(id)d;
- (id)createAccessorySettingsMetricsDispatcherWithCoreAnalyticsMetricDispatcher:(id)dispatcher;
- (id)createCoreAnalyticsMetricEventDispatcher;
- (id)createMultiuserSettingsMessenger;
- (id)delegate;
- (id)eventRouter;
- (id)fetchPairingIdentitiesInRankOrder:(id)order error:(id *)error;
- (id)homeWithUniqueIdentifier:(id)identifier;
- (id)logIdentifier;
- (int64_t)multiUserStatus;
- (unint64_t)_dataSyncStateFromPayload:(id)payload;
- (unint64_t)dataSyncState;
- (unint64_t)options;
- (unint64_t)residentProvisioningStatus;
- (unint64_t)serverGenerationCounter;
- (unint64_t)status;
- (void)__handleHomeManagerState:(id)state;
- (void)__preconfigure;
- (void)__processSyncResponse:(id)response refreshRequested:(BOOL)requested completionHandler:(id)handler;
- (void)__removeAccountWithHandle:(id)handle completionHandler:(id)handler;
- (void)__removeAccountWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)__resolveAccountHandle:(id)handle completionHandler:(id)handler;
- (void)__start;
- (void)_addKeysToRepairListIfUnique:(id)unique includePrivateKeys:(BOOL)keys repairList:(id)list;
- (void)_determineCacheFiles;
- (void)_dumpCaches:(id)caches metadata:(id)metadata;
- (void)_endActiveAssertion:(id)assertion;
- (void)_fetchHomeConfigurationWithRefreshRequested:(BOOL)requested completion:(id)completion;
- (void)_forceBatchNotificationsEnd;
- (void)_handleAccessAllowedWhenLockedUpdatedNotification:(id)notification;
- (void)_handleCurrentHomeChangedNotification:(id)notification;
- (void)_handleDevicesUpdatedMessage:(id)message;
- (void)_handleHH2ManualMigrationEnabledStateWithPayload:(id)payload;
- (void)_handleHH2MigrationProgressStateWithPayload:(id)payload;
- (void)_handleHH2StateWithPayload:(id)payload;
- (void)_handleHH2UpgradeRecommendationRequired:(id)required;
- (void)_handleHomeSafetySecurityEnabledStateWithPayload:(id)payload;
- (void)_handleHomesDidUpdateNotification:(id)notification;
- (void)_handleMetadataUpdatedNotification:(id)notification;
- (void)_handleQueryHomeKitUsageStateResponse:(id)response completionHandler:(id)handler;
- (void)_handleResidentDeviceCapableUpdatedNotification:(id)notification;
- (void)_handleResidentEnabledForThisDeviceUpdatedNotification:(id)notification;
- (void)_handleResidentProvisioningStatusChanged:(id)changed;
- (void)_handleRuntimeStateUpdateNotification:(id)notification;
- (void)_handleRuntimeStateUpdatePayload:(id)payload reason:(id)reason;
- (void)_handleSetupModeMessageResponse:(id)response error:(id)error;
- (void)_handleStatusUpdated:(id)updated;
- (void)_handleUserInvitationsUpdatedNotification:(id)notification;
- (void)_mergeCurrentHomesWithNewHomes:(id)homes newPrimaryHome:(id)home newCurrentHome:(id)currentHome newInvitations:(id)invitations newAppData:(id)data refreshRequested:(BOOL)requested;
- (void)_mergeHomeInvitations:(id)invitations;
- (void)_mergeNewAppData:(id)data;
- (void)_notifyAccessAllowedWhenLockedUpdated:(BOOL)updated;
- (void)_notifyDelegateOfAppDataUpdate;
- (void)_pingDeviceWithUUID:(id)d monitor:(BOOL)monitor secure:(BOOL)secure restrictToLocalNetwork:(BOOL)network completionHandler:(id)handler;
- (void)_processHomeAddedPayload:(id)payload completionHandler:(id)handler;
- (void)_processHomeConfigurationResponse:(id)response refreshRequested:(BOOL)requested;
- (void)_recomputeAssistantIdentifiers;
- (void)_registerNotificationHandlers;
- (void)_removeCacheFileAtPath:(id)path;
- (void)_removeCacheFiles;
- (void)_requestRefresh;
- (void)_requestRuntimeUpdate:(id)update;
- (void)_saveMigrationProgressToHMCache:(BOOL)cache error:(id)error;
- (void)_setInitialHomes:(id)homes;
- (void)_setResidentProvisioningStatus:(unint64_t)status;
- (void)_setShouldConnectToDaemon;
- (void)_testHH2MigrationWithCompletionHandler:(id)handler payload:(id)payload;
- (void)_updateAppData:(id)data;
- (void)_updateCurrentHome:(id)home;
- (void)_updateDataSyncState:(id)state;
- (void)_updateInvitation:(id)invitation presenceAuthStatus:(unint64_t)status invitationState:(int64_t)state invitationOptions:(int64_t)options completionHandler:(id)handler;
- (void)_updatePrimaryHome:(id)home notifyDelegate:(BOOL)delegate;
- (void)_updateStatusWithPayload:(id)payload sourceIsFetch:(BOOL)fetch;
- (void)_upgradeToHH2WithCompletionHandler:(id)handler payload:(id)payload;
- (void)_writeCaches:(id)caches homeData:(BOOL)data metadata:(BOOL)metadata;
- (void)addAndSetupAccessoriesWithPayload:(id)payload completionHandler:(id)handler;
- (void)addEphemeralContainerWithName:(id)name completion:(id)completion;
- (void)addHomeWithName:(NSString *)homeName completionHandler:(void *)completion;
- (void)attemptHH2AutoMigrationWithCompletionHandler:(id)handler;
- (void)checkAndLogMultipleInstanceWarning;
- (void)checkIsUsingProductionObjectModelWithCompletion:(id)completion;
- (void)checkName:(id)name inHome:(id)home withValidationOptions:(unint64_t)options completionHandler:(id)handler;
- (void)clearMobileAssetsLocalInfoWithCompletion:(id)completion;
- (void)configureAccessorySettingsMetricsDispatcherWithFactory:(id)factory;
- (void)configureCoreAnalyticsMetricEventDispatcherWithFactory:(id)factory;
- (void)createAutoAddWalletKeySupressionAssertionWithIncomingInvitation:(id)invitation completion:(id)completion;
- (void)currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deactivateEphemeralContainerWithName:(id)name completion:(id)completion;
- (void)dealloc;
- (void)deleteCountersBeforeDate:(id)date afterDate:(id)afterDate completion:(id)completion;
- (void)deleteDatabaseEntityWithModelID:(id)d completion:(id)completion;
- (void)deleteEphemeralContainerWithName:(id)name completion:(id)completion;
- (void)dumpCloudDatabase:(BOOL)database localDatabase:(BOOL)localDatabase workingDatabase:(BOOL)workingDatabase fakeCloudModels:(BOOL)models completion:(id)completion;
- (void)dumpState:(id)state dataPrivacyLevel:(unint64_t)level payload:(id)payload completion:(id)completion;
- (void)enableUARPPacketCapture:(BOOL)capture capturePath:(id)path completionHandler:(id)handler;
- (void)eraseHomeDataAndDeleteMetadata:(BOOL)metadata completionHandler:(id)handler;
- (void)fetchAppleMediaAccesoryDiagnosticInfo:(id)info options:(unint64_t)options filteringKeyPaths:(id)paths completion:(id)completion;
- (void)fetchDevicesWithCompletionHandler:(id)handler;
- (void)fetchDiagnosticInfoWithCompletionHandler:(id)handler;
- (void)fetchEventCounters:(id)counters;
- (void)fetchHomeConfigurationWithCompletion:(id)completion;
- (void)fetchNetworkMismatchInfoWithCompletionHandler:(id)handler;
- (void)findVendorAccessoryWithHAPPublicKey:(id)key completionHandler:(id)handler;
- (void)generateFirewallRuleTLVsFromNetworkDeclarations:(id)declarations completionHandler:(id)handler;
- (void)handleDaemonReconnectedNotification:(id)notification;
- (void)handleInstanceCreated;
- (void)handleInstanceDestroyed;
- (void)launchHomeUIServiceToResumeSetupWithUserInfo:(id)info completionHandler:(id)handler;
- (void)listEphemeralContainersWithCompletion:(id)completion;
- (void)notifyDelegateOfBatchNotificationsEndWithReason:(id)reason;
- (void)notifyDelegateOfBatchNotificationsStartWithReason:(id)reason;
- (void)notifyResidentCapableUpdated:(BOOL)updated;
- (void)notifyResidentEnabledUpdated:(BOOL)updated;
- (void)pairingIdentityForAccessoryWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)postHH2UpdateRequiredCarPlayNotificationWithCompletion:(id)completion;
- (void)prepareForDiagnosticExtensionWithCompletion:(id)completion;
- (void)presentTTRDialog:(id)dialog completionHandler:(id)handler;
- (void)queryHomeKitUsageStateWithCompletionHandler:(id)handler;
- (void)queryMetadata:(id)metadata completionHandler:(id)handler;
- (void)queryVersionWithCompletionHandler:(id)handler;
- (void)queryiCloudSwitchStateWithCompletionHandler:(id)handler;
- (void)readCountersForGroup:(id)group homeUUIDString:(id)string accessoryUUIDString:(id)dString counter:(id)counter statistics:(id)statistics datePartition:(id)partition ephemeralContainerName:(id)name completion:(id)self0;
- (void)removeHome:(HMHome *)home completionHandler:(void *)completion;
- (void)resetConfiguration:(BOOL)configuration withoutPopup:(BOOL)popup completionHandler:(id)handler;
- (void)resetEventCounters:(id)counters;
- (void)resetLastTTRTimeWithCompletionHandler:(id)handler;
- (void)saveCountersWithCompletion:(id)completion;
- (void)sendSetupModeMessage:(unint64_t)message;
- (void)setAccessAllowedWhenLocked:(BOOL)locked;
- (void)setApplicationData:(id)data;
- (void)setCurrentHome:(id)home;
- (void)setDataSyncState:(unint64_t)state;
- (void)setDelegate:(id)delegate;
- (void)setHasOptedToHH2:(BOOL)h2;
- (void)setHh2MigrationFailedError:(id)error;
- (void)setHh2MigrationInProgress:(BOOL)progress;
- (void)setHomeSafetySecurityEnabled:(BOOL)enabled;
- (void)setIsHH2MigrationAvailable:(BOOL)available;
- (void)setMetadata:(id)metadata completionHandler:(id)handler;
- (void)setMultiUserStatus:(int64_t)status;
- (void)setPrimaryHome:(id)home;
- (void)setResidentEnabledForThisDevice:(BOOL)device;
- (void)setResidentProvisioningStatus:(unint64_t)status;
- (void)setSetupMode:(unint64_t)mode completion:(id)completion;
- (void)setShouldPostHH2UpgradeRequired:(BOOL)required;
- (void)setStatus:(unint64_t)status;
- (void)setThisDeviceResidentCapable:(BOOL)capable;
- (void)startupEphemeralContainerWithName:(id)name completion:(id)completion;
- (void)submitLogEventDailySchedulerRegisteredBlocksWithCompletion:(id)completion;
- (void)timerDidFire:(id)fire;
- (void)updateAccessAllowedWhenLocked:(BOOL)locked completionHandler:(id)handler;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateMobileAssetsAndForce:(BOOL)force completion:(id)completion;
- (void)updatePrimaryHome:(HMHome *)home completionHandler:(void *)completion;
- (void)updateResidentEnabledForThisDevice:(BOOL)device completionHandler:(id)handler;
- (void)updateiCloudSwitchState:(BOOL)state completionHandler:(id)handler;
@end

@implementation HMHomeManager

- (NSArray)homes
{
  currentHomes = [(HMHomeManager *)self currentHomes];
  array = [currentHomes array];

  return array;
}

- (void)handleInstanceCreated
{
  if (isInternalBuild())
  {
    os_unfair_lock_lock_with_options();
    instanceTracker = [objc_opt_class() instanceTracker];
    [instanceTracker addObject:self];

    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSince1970];
    [(HMHomeManager *)self setHomeManagerCreationTimeStamp:?];

    os_unfair_lock_unlock(&instanceTrackerLock);

    [(HMHomeManager *)self checkAndLogMultipleInstanceWarning];
  }
}

+ (id)instanceTracker
{
  if (instanceTracker_onceToken != -1)
  {
    dispatch_once(&instanceTracker_onceToken, &__block_literal_global_62647);
  }

  v3 = instanceTracker_instanceTracker;

  return v3;
}

uint64_t __50__HMHomeManager_InstanceTracking__instanceTracker__block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = instanceTracker_instanceTracker;
  instanceTracker_instanceTracker = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)checkAndLogMultipleInstanceWarning
{
  v42 = *MEMORY[0x1E69E9840];
  if (isInternalBuild())
  {
    os_unfair_lock_lock_with_options();
    selfCopy = self;
    instanceTracker = [objc_opt_class() instanceTracker];
    v4 = [instanceTracker count];

    if (v4 >= 2)
    {
      v32 = [@"Having multiple HMHomeManager instances will increase your memory usage and possibly jetsam your process. Please use 1 HMHomeManager if possible. Current home managers:\n" mutableCopy];
      v31 = [@"Multiple HMHomeManager instances:" mutableCopy];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      instanceTracker2 = [objc_opt_class() instanceTracker];
      v6 = [instanceTracker2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v6)
      {
        obj = instanceTracker2;
        v30 = *v34;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v33 + 1) + 8 * i);
            context = [v8 context];
            xpcClient = [context xpcClient];
            uUID = [xpcClient UUID];
            v12 = MEMORY[0x1E696AD98];
            [v8 homeManagerCreationTimeStamp];
            v13 = [v12 numberWithDouble:?];
            configuration = [v8 configuration];
            v15 = HMHomeManagerOptionsToString([configuration options]);
            [v32 appendFormat:@"[%@/%@/%@]\n", uUID, v13, v15];

            configuration2 = [v8 configuration];
            options = [configuration2 options];
            v18 = MEMORY[0x1E696AD98];
            [v8 homeManagerCreationTimeStamp];
            v19 = [v18 numberWithDouble:?];
            [v31 appendFormat:@"[o:0x%lx, t:%ld]", options, objc_msgSend(v19, "longValue")];
          }

          instanceTracker2 = obj;
          v6 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v6);
      }

      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v23;
        v39 = 2112;
        v40 = v32;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = objc_autoreleasePoolPush();
      v25 = v21;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v27;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    os_unfair_lock_unlock(&instanceTrackerLock);
  }
}

- (void)__preconfigure
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Pre-configuring home manager", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMHomeManager *)selfCopy configureCoreAnalyticsMetricEventDispatcherWithFactory:selfCopy];
  [(HMHomeManager *)selfCopy configureAccessorySettingsMetricsDispatcherWithFactory:selfCopy];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t301 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t301, &__block_literal_global_875);
  }

  v3 = logCategory__hmf_once_v302;

  return v3;
}

uint64_t __28__HMHomeManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v302;
  logCategory__hmf_once_v302 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)logIdentifier
{
  context = [(HMHomeManager *)self context];
  xpcClient = [context xpcClient];
  uUID = [xpcClient UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)createCoreAnalyticsMetricEventDispatcher
{
  v2 = objc_alloc_init(HMCoreAnalyticsMetricEventDispatcher);

  return v2;
}

- (void)__start
{
  v171 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    configuration = [(HMHomeManager *)selfCopy configuration];
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = configuration;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting home manager with configuration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMUserCloudShareManager *)selfCopy->_userCloudShareManager configure];
  accessorySetupCoordinator = [(HMHomeManager *)selfCopy accessorySetupCoordinator];
  [accessorySetupCoordinator configure];

  privacySettingsProvider = [(HMHomeManager *)selfCopy privacySettingsProvider];
  selfCopy->_authorizationStatus = [privacySettingsProvider queryAuthorizationStatus];

  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    authorizationStatus = [(HMHomeManager *)v11 authorizationStatus];
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = authorizationStatus;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Queried initial authorization status: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = objc_autoreleasePoolPush();
  v16 = v11;
  if (([v16 authorizationStatus] & 5) != 0)
  {
    configuration2 = [v16 configuration];
    canUseCache = [configuration2 canUseCache];

    if (canUseCache)
    {
      v19 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Home Manager Load"];
      v20 = objc_autoreleasePoolPush();
      v21 = v16;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Loading from cache", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [v21 _determineCacheFiles];
      if (([v21 options] & 0x9701) != 0)
      {
        [v19 markWithReason:@"Starting metadata load"];
        v24 = v21;
        buf[0] = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        metadataCache = [v24 metadataCache];
        v27 = [defaultManager fileExistsAtPath:metadataCache isDirectory:buf];
        v28 = buf[0];

        v29 = 0;
        if (v27 && (v28 & 1) == 0)
        {
          v149 = v15;
          v30 = objc_autoreleasePoolPush();
          v31 = v24;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = HMFGetLogIdentifier();
            metadataCache2 = [v31 metadataCache];
            *buf = 138543618;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = metadataCache2;
            _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Loading metadata from cache file: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v35 = MEMORY[0x1E695DEF0];
          metadataCache3 = [v31 metadataCache];
          v37 = [v35 dataWithContentsOfFile:metadataCache3];

          v38 = MEMORY[0x1E695DFD8];
          *buf = objc_opt_class();
          *&buf[8] = objc_opt_class();
          *&buf[16] = objc_opt_class();
          v168 = objc_opt_class();
          v169 = objc_opt_class();
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:5];
          v40 = [v38 setWithArray:v39];

          v160 = 0;
          context = v40;
          v153 = v37;
          v41 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v40 fromData:v37 error:&v160];
          v42 = v160;
          v142 = v42;
          if (v41)
          {
            v43 = v41;
            objc_opt_class();
            v44 = objc_opt_isKindOfClass() & 1;
            if (v44)
            {
              v45 = v43;
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;

            if (v44)
            {
              v155 = [v43 hmf_numberForKey:@"kHAPMetadataVersionKey"];
              v140 = [v43 hmf_dataForKey:@"kHAPMetadataDataKey"];
              v47 = objc_autoreleasePoolPush();
              v48 = v31;
              v49 = HMFGetOSLogHandle();
              v15 = v149;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v50 = v139 = v46;
                *v161 = 138543618;
                v162 = v50;
                v163 = 2112;
                v164 = v155;
                _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_INFO, "%{public}@Loading the cached metadata with version: %@", v161, 0x16u);

                v46 = v139;
              }

              objc_autoreleasePoolPop(v47);
              v51 = +[HMHAPMetadata getSharedInstance];
              v52 = [v51 applyProtoBufData:v140];

              if (v52)
              {
                v53 = objc_autoreleasePoolPush();
                v54 = v48;
                v55 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v56 = v139 = v46;
                  *v161 = 138543618;
                  v162 = v56;
                  v163 = 2112;
                  v164 = v155;
                  _os_log_impl(&dword_19BB39000, v55, OS_LOG_TYPE_INFO, "%{public}@Successfully loaded the cached metadata with version: %@", v161, 0x16u);

                  v46 = v139;
                }

                objc_autoreleasePoolPop(v53);
                [v54 setMetadataVersion:{objc_msgSend(v155, "unsignedIntegerValue")}];
              }

              v29 = v155;
            }

            else
            {
              v71 = objc_autoreleasePoolPush();
              v72 = v31;
              v73 = HMFGetOSLogHandle();
              v15 = v149;
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v156 = v139 = v46;
                v74 = objc_opt_class();
                *v161 = 138543618;
                v162 = v156;
                v163 = 2112;
                v164 = v74;
                v75 = v71;
                v76 = v74;
                _os_log_impl(&dword_19BB39000, v73, OS_LOG_TYPE_ERROR, "%{public}@Cached metadata configuration is not a dictionary but of type %@", v161, 0x16u);

                v71 = v75;
                v46 = v139;
              }

              objc_autoreleasePoolPop(v71);
              v29 = 0;
            }
          }

          else
          {
            v66 = v42;
            v67 = objc_autoreleasePoolPush();
            v68 = v31;
            v69 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v70 = HMFGetLogIdentifier();
              *v161 = 138543618;
              v162 = v70;
              v163 = 2112;
              v164 = v66;
              _os_log_impl(&dword_19BB39000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached metadata configuration from serialized metadata configuration: %@", v161, 0x16u);
            }

            objc_autoreleasePoolPop(v67);
            v29 = 0;
            v15 = v149;
          }
        }

        [v19 markWithReason:@"Finished metadata load"];
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        v63 = v21;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v65;
          _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_DEBUG, "%{public}@Not loading cached metadata because client has not requested access to HAP accessories", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v62);
        v29 = 0;
      }

      [v19 markWithReason:{@"Starting home load", v139}];
      homeDataCache = [v21 homeDataCache];

      if (homeDataCache)
      {
        v159 = 0;
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        homeDataCache2 = [v21 homeDataCache];
        v80 = [defaultManager2 fileExistsAtPath:homeDataCache2 isDirectory:&v159];
        v81 = v159;

        v82 = objc_autoreleasePoolPush();
        v83 = v21;
        v84 = HMFGetOSLogHandle();
        v85 = v84;
        if (v80 && (v81 & 1) == 0)
        {
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            v86 = HMFGetLogIdentifier();
            homeDataCache3 = [v83 homeDataCache];
            *buf = 138543618;
            *&buf[4] = v86;
            *&buf[12] = 2112;
            *&buf[14] = homeDataCache3;
            _os_log_impl(&dword_19BB39000, v85, OS_LOG_TYPE_INFO, "%{public}@Loading homes from cache file: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v82);
          v88 = MEMORY[0x1E695DEF0];
          homeDataCache4 = [v83 homeDataCache];
          v90 = [v88 dataWithContentsOfFile:homeDataCache4];

          if (!v90)
          {
            v110 = objc_autoreleasePoolPush();
            v111 = v83;
            v112 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
            {
              v113 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v113;
              _os_log_impl(&dword_19BB39000, v112, OS_LOG_TYPE_DEBUG, "%{public}@Not loading from cache: no serialized home data exists in cache", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v110);
            goto LABEL_90;
          }

          v157 = v29;
          v91 = MEMORY[0x1E695DFD8];
          *buf = objc_opt_class();
          *&buf[8] = objc_opt_class();
          *&buf[16] = objc_opt_class();
          v168 = objc_opt_class();
          v169 = objc_opt_class();
          v170 = objc_opt_class();
          v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:6];
          v93 = [v91 setWithArray:v92];

          v160 = 0;
          v94 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v93 fromData:v90 error:&v160];
          v154 = v160;
          if (v94)
          {
            v95 = v94;
            objc_opt_class();
            v96 = objc_opt_isKindOfClass() & 1;
            if (v96)
            {
              v97 = v95;
            }

            else
            {
              v97 = 0;
            }

            v98 = v97;

            if (v96)
            {
              if ([v83 _isValidCachedHomeConfiguration:v95])
              {
                v99 = [v95 hmf_numberForKey:@"kHAPMetadataVersionKey"];
                v150 = v99;
                if (([v83 options] & 0x9701) != 0 && (!v157 || objc_msgSend(v99, "compare:", v157) == 1))
                {
                  v100 = objc_autoreleasePoolPush();
                  v101 = v83;
                  v102 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v103 = contextb = v100;
                    *v161 = 138543874;
                    v162 = v103;
                    v163 = 2112;
                    v164 = v157;
                    v165 = 2112;
                    v166 = v150;
                    _os_log_impl(&dword_19BB39000, v102, OS_LOG_TYPE_ERROR, "%{public}@Metadata version %@ is lower than home data version: %@", v161, 0x20u);

                    v100 = contextb;
                  }

                  objc_autoreleasePoolPop(v100);
                  [v101 _removeCacheFiles];
                  v104 = v150;
                }

                else
                {
                  v130 = [v95 hmf_numberForKey:@"kConfigGenerationCounterKey"];
                  contexta = objc_autoreleasePoolPush();
                  v131 = v83;
                  v132 = HMFGetOSLogHandle();
                  v143 = v130;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v134 = v133 = v93;
                    *v161 = 138543618;
                    v162 = v134;
                    v163 = 2112;
                    v164 = v143;
                    _os_log_impl(&dword_19BB39000, v132, OS_LOG_TYPE_INFO, "%{public}@Loading the cached home with generation counter: %@", v161, 0x16u);

                    v93 = v133;
                    v130 = v143;
                  }

                  objc_autoreleasePoolPop(contexta);
                  v141 = objc_autoreleasePoolPush();
                  v135 = [v131 _loadHH2MigrationInfoFromHMCache:v130];
                  if (v135)
                  {
                    contextd = v93;
                    v136 = [v95 mutableCopy];
                    [v136 addEntriesFromDictionary:v135];
                    v137 = [v136 copy];

                    v93 = contextd;
                    v95 = v137;
                  }

                  v104 = v150;
                  [v131 _processHomeConfigurationResponse:v95 refreshRequested:0];

                  objc_autoreleasePoolPop(v141);
                }
              }

              else
              {
                v125 = objc_autoreleasePoolPush();
                v126 = v83;
                v127 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v128 = v152 = v125;
                  [v95 shortDescription];
                  v129 = contextc = v93;
                  *v161 = 138543618;
                  v162 = v128;
                  v163 = 2112;
                  v164 = v129;
                  _os_log_impl(&dword_19BB39000, v127, OS_LOG_TYPE_ERROR, "%{public}@Cached home configuration is not valid; removing cache: %@", v161, 0x16u);

                  v93 = contextc;
                  v125 = v152;
                }

                objc_autoreleasePoolPop(v125);
                [v126 _removeCacheFiles];
              }

              goto LABEL_89;
            }

            v119 = objc_autoreleasePoolPush();
            v115 = v83;
            v120 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v121 = v151 = v119;
              v122 = objc_opt_class();
              *v161 = 138543618;
              v162 = v121;
              v163 = 2112;
              v164 = v122;
              v123 = v93;
              v124 = v122;
              _os_log_impl(&dword_19BB39000, v120, OS_LOG_TYPE_ERROR, "%{public}@Cached home configuration is not a dictionary but of type %@", v161, 0x16u);

              v93 = v123;
              v119 = v151;
            }

            v118 = v119;
          }

          else
          {
            v114 = objc_autoreleasePoolPush();
            v115 = v83;
            v116 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              v117 = HMFGetLogIdentifier();
              *v161 = 138543618;
              v162 = v117;
              v163 = 2112;
              v164 = v154;
              _os_log_impl(&dword_19BB39000, v116, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached home configuration from serialized home configuration data: %@", v161, 0x16u);
            }

            v118 = v114;
          }

          objc_autoreleasePoolPop(v118);
          [v115 _removeCacheFiles];
LABEL_89:

          v29 = v157;
LABEL_90:

          goto LABEL_91;
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          v108 = HMFGetLogIdentifier();
          homeDataCache5 = [v83 homeDataCache];
          *buf = 138543618;
          *&buf[4] = v108;
          *&buf[12] = 2112;
          *&buf[14] = homeDataCache5;
          _os_log_impl(&dword_19BB39000, v85, OS_LOG_TYPE_DEBUG, "%{public}@Not loading from cache: no cache file exists at cache file: %@", buf, 0x16u);
        }
      }

      else
      {
        v82 = objc_autoreleasePoolPush();
        v105 = v21;
        v106 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          v107 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v107;
          _os_log_impl(&dword_19BB39000, v106, OS_LOG_TYPE_DEBUG, "%{public}@Not loading from cache: no cache file found", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v82);
LABEL_91:
      [v19 markWithReason:@"Finished home load"];
      [v19 invalidate];

      goto LABEL_92;
    }

    v57 = objc_autoreleasePoolPush();
    v58 = v16;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v60;
      v61 = "%{public}@Not loading from cache: not supported by configuration";
      goto LABEL_30;
    }
  }

  else
  {
    v57 = objc_autoreleasePoolPush();
    v58 = v16;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v60;
      v61 = "%{public}@Not loading from cache: client is not authorized";
LABEL_30:
      _os_log_impl(&dword_19BB39000, v59, OS_LOG_TYPE_DEBUG, v61, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v57);
LABEL_92:

  objc_autoreleasePoolPop(v15);
  queue = [v16[40] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__HMHomeManager___start__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = v16;
  dispatch_async(queue, block);
}

- (HMHomeManagerConfiguration)configuration
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMHomeManagerConfiguration *)self->_configuration copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMHomeManagerAuthorizationStatus)authorizationStatus
{
  os_unfair_lock_lock_with_options();
  authorizationStatus = self->_authorizationStatus;
  os_unfair_lock_unlock(&self->_lock);
  return authorizationStatus;
}

void __24__HMHomeManager___start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) privacySettingsProvider];
  v3 = [*(a1 + 32) context];
  v4 = [v3 queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__HMHomeManager___start__block_invoke_2;
  v5[3] = &unk_1E754A9B0;
  v5[4] = *(a1 + 32);
  [v2 requestHomeKitAccessWithQueue:v4 completion:v5];
}

void __24__HMHomeManager___start__block_invoke_2(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    if (*(v4 + 13) == v3)
    {
      os_unfair_lock_unlock(v4 + 2);
      WeakRetained = 0;
    }

    else
    {
      *(v4 + 13) = v3;
      WeakRetained = objc_loadWeakRetained(v4 + 12);
      os_unfair_lock_unlock(v4 + 2);
      if (objc_opt_respondsToSelector())
      {
        v6 = [v4 context];
        v7 = [v6 delegateCaller];
        *v36 = MEMORY[0x1E69E9820];
        *&v36[8] = 3221225472;
        *&v36[16] = ____HMHomeManagerSetAuthorizationStatus_block_invoke;
        v37 = &unk_1E754E120;
        WeakRetained = WeakRetained;
        v38 = WeakRetained;
        v39 = v4;
        v40 = v3;
        [v7 invokeBlock:v36];
      }
    }
  }

  v8 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  if ([(os_unfair_lock_s *)v8 serverGenerationCounterToken]!= -1)
  {
    goto LABEL_11;
  }

  *buf = 0;
  v17 = [(os_unfair_lock_s *)v8 darwinNotificationProvider];
  v18 = [v17 notifyRegisterCheck:"com.apple.HomeKit.generation-counter-updated" outToken:buf];

  if (!v18)
  {
    [(os_unfair_lock_s *)v8 setServerGenerationCounterToken:*buf];
LABEL_11:
    if (([(os_unfair_lock_s *)v8 shouldConnect]& 1) == 0 && [(os_unfair_lock_s *)v8 serverGenerationCounterDelayedConnectionToken]== -1)
    {
      objc_initWeak(&location, v8);
      v30 = 0;
      v9 = [(os_unfair_lock_s *)v8 darwinNotificationProvider];
      v10 = [(os_unfair_lock_s *)v8 context];
      v11 = [v10 queue];
      *v36 = MEMORY[0x1E69E9820];
      *&v36[8] = 3221225472;
      *&v36[16] = ____HMHomeManagerRegisterForGenerationCounterNotifications_block_invoke;
      v37 = &unk_1E754C980;
      objc_copyWeak(&v38, &location);
      v12 = [v9 notifyRegisterDispatch:"com.apple.HomeKit.generation-counter-updated" outToken:&v30 queue:v11 handler:v36];

      if (v12)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v16;
          v34 = 1024;
          v35 = v12;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for generation counter change notifications: %d", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        [(os_unfair_lock_s *)v8 setServerGenerationCounterDelayedConnectionToken:v30];
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    goto LABEL_24;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v8;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *v36 = 138543618;
    *&v36[4] = v22;
    *&v36[12] = 1024;
    *&v36[14] = v18;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for generation counter state: %d", v36, 0x12u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_24:
  os_unfair_lock_unlock(v8 + 2);

  v23 = *(a1 + 32);
  v24 = v23;
  if (v23)
  {
    [v23 _registerNotificationHandlers];
    objc_initWeak(buf, v24);
    v25 = [v24[40] xpcClient];
    *v36 = MEMORY[0x1E69E9820];
    *&v36[8] = 3221225472;
    *&v36[16] = ____HMHomeManagerRegisterForNotifications_block_invoke;
    v37 = &unk_1E754E540;
    objc_copyWeak(&v38, buf);
    [v25 registerReconnectionHandler:v36];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  v27 = *(a1 + 32);
  v26 = (a1 + 32);
  [v27 _fetchHomeConfigurationWithRefreshRequested:0];
  v28 = [*v26 xpcEventRouterClient];
  [v28 configure];

  v29 = [*v26 predictionProvider];
  [v29 configure];
}

- (void)_registerNotificationHandlers
{
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kCurrentHomeChangedNotificationKey" receiver:self selector:sel__handleCurrentHomeChangedNotification_];

  context2 = [(HMHomeManager *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"kHomesDidUpdateNotificationKey" receiver:self selector:sel__handleHomesDidUpdateNotification_];

  context3 = [(HMHomeManager *)self context];
  messageDispatcher3 = [context3 messageDispatcher];
  [messageDispatcher3 registerForMessage:@"kMetadataChangedNotificationKey" receiver:self selector:sel__handleMetadataUpdatedNotification_];

  context4 = [(HMHomeManager *)self context];
  messageDispatcher4 = [context4 messageDispatcher];
  [messageDispatcher4 registerForMessage:@"kUserInvitationsUpdatedNotificationKey" receiver:self selector:sel__handleUserInvitationsUpdatedNotification_];

  context5 = [(HMHomeManager *)self context];
  messageDispatcher5 = [context5 messageDispatcher];
  [messageDispatcher5 registerForMessage:@"kResidentDeviceCapableUpdatedNotificationKey" receiver:self selector:sel__handleResidentDeviceCapableUpdatedNotification_];

  context6 = [(HMHomeManager *)self context];
  messageDispatcher6 = [context6 messageDispatcher];
  [messageDispatcher6 registerForMessage:@"kResidentEnabledForThisDeviceUpdatedNotificationKey" receiver:self selector:sel__handleResidentEnabledForThisDeviceUpdatedNotification_];

  context7 = [(HMHomeManager *)self context];
  messageDispatcher7 = [context7 messageDispatcher];
  [messageDispatcher7 registerForMessage:@"HMHM.devicesUpdated" receiver:self selector:sel__handleDevicesUpdatedMessage_];

  context8 = [(HMHomeManager *)self context];
  messageDispatcher8 = [context8 messageDispatcher];
  [messageDispatcher8 registerForMessage:@"HM.su" receiver:self selector:sel__handleStatusUpdated_];

  context9 = [(HMHomeManager *)self context];
  messageDispatcher9 = [context9 messageDispatcher];
  [messageDispatcher9 registerForMessage:@"kResidentProvisioningStatusChangedNotificationKey" receiver:self selector:sel__handleResidentProvisioningStatusChanged_];

  context10 = [(HMHomeManager *)self context];
  messageDispatcher10 = [context10 messageDispatcher];
  [messageDispatcher10 registerForMessage:@"HMHM.rtsun" receiver:self selector:sel__handleRuntimeStateUpdateNotification_];

  context11 = [(HMHomeManager *)self context];
  messageDispatcher11 = [context11 messageDispatcher];
  [messageDispatcher11 registerForMessage:@"HMHM.accessAllowedWhenLockedUpdatedNotificationKey" receiver:self selector:sel__handleAccessAllowedWhenLockedUpdatedNotification_];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (unint64_t)serverGenerationCounter
{
  v32[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  if ([(HMHomeManager *)selfCopy serverGenerationCounterToken]!= -1)
  {
LABEL_2:
    if (![(HMHomeManager *)selfCopy shouldConnect]&& [(HMHomeManager *)selfCopy serverGenerationCounterDelayedConnectionToken]== -1)
    {
      objc_initWeak(&location, selfCopy);
      v25 = 0;
      darwinNotificationProvider = [(HMHomeManager *)selfCopy darwinNotificationProvider];
      context = [(HMHomeManager *)selfCopy context];
      queue = [context queue];
      *v30 = MEMORY[0x1E69E9820];
      *&v30[8] = 3221225472;
      *&v30[16] = ____HMHomeManagerRegisterForGenerationCounterNotifications_block_invoke;
      v31 = &unk_1E754C980;
      objc_copyWeak(v32, &location);
      v6 = [darwinNotificationProvider notifyRegisterDispatch:"com.apple.HomeKit.generation-counter-updated" outToken:&v25 queue:queue handler:v30];

      if (v6)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = selfCopy;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v10;
          v28 = 1024;
          v29 = v6;
          _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for generation counter change notifications: %d", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v7);
      }

      else
      {
        [(HMHomeManager *)selfCopy setServerGenerationCounterDelayedConnectionToken:v25];
      }

      objc_destroyWeak(v32);
      objc_destroyWeak(&location);
    }

    goto LABEL_15;
  }

  *buf = 0;
  darwinNotificationProvider2 = [(HMHomeManager *)selfCopy darwinNotificationProvider];
  v12 = [darwinNotificationProvider2 notifyRegisterCheck:"com.apple.HomeKit.generation-counter-updated" outToken:buf];

  if (!v12)
  {
    [(HMHomeManager *)selfCopy setServerGenerationCounterToken:*buf];
    goto LABEL_2;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *v30 = 138543618;
    *&v30[4] = v16;
    *&v30[12] = 1024;
    *&v30[14] = v12;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for generation counter state: %d", v30, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_15:
  os_unfair_lock_unlock(&selfCopy->_lock);

  os_unfair_lock_lock_with_options();
  serverGenerationCounterToken = [(HMHomeManager *)selfCopy serverGenerationCounterToken];
  os_unfair_lock_unlock(&selfCopy->_lock);
  *buf = 0;
  darwinNotificationProvider3 = [(HMHomeManager *)selfCopy darwinNotificationProvider];
  v19 = [darwinNotificationProvider3 notifyGetState:serverGenerationCounterToken state:buf];

  if (!v19)
  {
    return *buf;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *v30 = 138543618;
    *&v30[4] = v23;
    *&v30[12] = 1024;
    *&v30[14] = v19;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get state for token: %d", v30, 0x12u);
  }

  objc_autoreleasePoolPop(v20);
  return 0;
}

- (void)_setShouldConnectToDaemon
{
  os_unfair_lock_lock_with_options();
  if (![(HMHomeManager *)self shouldConnect])
  {
    [(HMHomeManager *)self setShouldConnect:1];
    darwinNotificationProvider = [(HMHomeManager *)self darwinNotificationProvider];
    [darwinNotificationProvider notifyCancel:{-[HMHomeManager serverGenerationCounterDelayedConnectionToken](self, "serverGenerationCounterDelayedConnectionToken")}];

    [(HMHomeManager *)self setServerGenerationCounterDelayedConnectionToken:0xFFFFFFFFLL];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)createAccessorySettingsController
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating accessory settings controller", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  accessorySettingsMetricsDispatcher = [(HMHomeManager *)selfCopy accessorySettingsMetricsDispatcher];
  if (!accessorySettingsMetricsDispatcher)
  {
    _HMFPreconditionFailure();
  }

  v8 = accessorySettingsMetricsDispatcher;
  v9 = [HMAccessorySettingsController alloc];
  context = [(HMHomeManager *)selfCopy context];
  v11 = [(HMAccessorySettingsController *)v9 initWithContext:context messengerFactory:selfCopy metricsDispatcher:v8];

  [(HMAccessorySettingsController *)v11 setDataSource:selfCopy];

  return v11;
}

- (id)createMultiuserSettingsMessenger
{
  v23 = *MEMORY[0x1E69E9840];
  currentAccessory = [(HMHomeManager *)self currentAccessory];
  home = [currentAccessory home];
  uuid = [home uuid];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = uuid;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating multiuser settings messenger with home uuid %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (uuid)
  {
    v10 = [HMMultiuserSettingsMessenger alloc];
    context = [(HMHomeManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    v13 = [(HMMultiuserSettingsMessenger *)v10 initWithMessageDispatcher:messageDispatcher messageTargetUUID:uuid];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@No current accessory home for home uuid: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (BOOL)accessoryInfoDataProvider:(id)provider transformHomeUUID:(id)d accessoryUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientAccessoryIdentifier:(id *)accessoryIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  dCopy = d;
  iDCopy = iD;
  currentHomes = [(HMHomeManager *)self currentHomes];
  v16 = [currentHomes firstItemWithUUID:dCopy];

  if (v16)
  {
    v17 = [v16 accessoryWithUUID:iDCopy];
    v18 = v17 != 0;
    if (v17)
    {
      if (identifier)
      {
        *identifier = [v16 uniqueIdentifier];
      }

      if (accessoryIdentifier)
      {
        *accessoryIdentifier = [v17 uniqueIdentifier];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v26;
        v30 = 2112;
        v31 = iDCopy;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no accessory with uuid: %@ home: %@", &v28, 0x20u);
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
      v28 = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no home with uuid: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (id)createAccessoryInfoDataProvider
{
  lastEventStore = [(HMHomeManager *)self lastEventStore];
  v4 = [HMAccessoryInfoDataProvider alloc];
  eventRouter = [(HMHomeManager *)self eventRouter];
  v6 = [(HMAccessoryInfoDataProvider *)v4 initWithEventStoreReadHandle:lastEventStore subscriptionProvider:eventRouter];

  [(HMAccessoryInfoDataProvider *)v6 setDataSource:self];

  return v6;
}

- (void)setShouldPostHH2UpgradeRequired:(BOOL)required
{
  os_unfair_lock_lock_with_options();
  self->_shouldPostHH2UpgradeRequired = required;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldPostHH2UpgradeRequired
{
  os_unfair_lock_lock_with_options();
  shouldPostHH2UpgradeRequired = self->_shouldPostHH2UpgradeRequired;
  os_unfair_lock_unlock(&self->_lock);
  return shouldPostHH2UpgradeRequired;
}

- (BOOL)isHomeRemovedPermanently:(id)permanently
{
  v30 = *MEMORY[0x1E69E9840];
  permanentlyCopy = permanently;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  homes = [(HMHomeManager *)self homes];
  v6 = [homes countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(homes);
        }

        uuid = [*(*(&v21 + 1) + 8 * i) uuid];
        v11 = [uuid hmf_isEqualToUUID:permanentlyCopy];

        if (v11)
        {

          goto LABEL_14;
        }
      }

      v7 = [homes countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  sharedHomeUUIDsNotYetMigrated = [(HMHomeManager *)self sharedHomeUUIDsNotYetMigrated];
  uUIDString = [permanentlyCopy UUIDString];
  v14 = [sharedHomeUUIDsNotYetMigrated containsObject:uUIDString];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = permanentlyCopy;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Home: %@ is not removed permanently", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_14:
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (void)launchHomeUIServiceToResumeSetupWithUserInfo:(id)info completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with userInfo: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(HMAccessorySetupManager);
  [(HMAccessorySetupManager *)v12 resumeAccessorySetupWithUserInfo:infoCopy completionHandler:handlerCopy];
}

- (void)addAndSetupAccessoriesWithPayload:(id)payload completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager addAndSetupAccessoriesWithPayload:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v13;
    v30 = 2112;
    v31 = payloadCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding and setting up accessories with setup accessory payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = objc_alloc_init(HMAccessorySetupRequest);
  v15 = [[HMAccessorySetupPayload alloc] initWithInternalSetupPayload:payloadCopy ownershipToken:0];
  [(HMAccessorySetupRequest *)v14 setPayload:v15];

  v16 = objc_alloc_init(HMAccessorySetupManager);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__HMHomeManager_addAndSetupAccessoriesWithPayload_completionHandler___block_invoke;
  v25[3] = &unk_1E754AB90;
  v25[4] = selfCopy2;
  v26 = context;
  v27 = v8;
  v17 = v8;
  v18 = context;
  [(HMAccessorySetupManager *)v16 performAccessorySetupUsingRequest:v14 completionHandler:v25];
}

void __69__HMHomeManager_addAndSetupAccessoriesWithPayload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 accessoryUniqueIdentifiers];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __69__HMHomeManager_addAndSetupAccessoriesWithPayload_completionHandler___block_invoke_871;
    v18 = &unk_1E754AB68;
    v19 = *(a1 + 32);
    v20 = v5;
    v8 = [v7 na_map:&v15];

    v9 = [*(a1 + 40) delegateCaller];
    [v9 callCompletion:*(a1 + 48) error:0 array:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup with suggested room name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [*(a1 + 40) delegateCaller];
    [v14 callCompletion:*(a1 + 48) error:v6 array:0];
  }
}

id __69__HMHomeManager_addAndSetupAccessoriesWithPayload_completionHandler___block_invoke_871(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 homeUniqueIdentifier];
  v6 = [v2 homeWithUniqueIdentifier:v5];

  v7 = [v6 accessoryWithUniqueIdentifier:v4];

  return v7;
}

- (void)sendSetupModeMessage:(unint64_t)message
{
  v18[1] = *MEMORY[0x1E69E9840];
  context = [(HMHomeManager *)self context];
  v6 = MEMORY[0x1E69A2A10];
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v9 = [v7 initWithTarget:uuid];
  v17 = @"mode";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:message];
  v18[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v12 = [v6 messageWithName:@"HMHM.setupMode" destination:v9 payload:v11];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__HMHomeManager_sendSetupModeMessage___block_invoke;
  v14[3] = &unk_1E754CD70;
  objc_copyWeak(&v15, &location);
  [v12 setResponseHandler:v14];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __38__HMHomeManager_sendSetupModeMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleSetupModeMessageResponse:v5 error:v8];
  }
}

- (void)setSetupMode:(unint64_t)mode completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager setSetupMode:completion:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v26;
      v30 = 2112;
      modeCopy = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v7 = completionCopy;
  v8 = _os_feature_enabled_impl();
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v13;
      v30 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Attempt to set setup mode %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    os_unfair_lock_lock_with_options();
    if (selfCopy2->_pendingChangeSetupModeOperation)
    {
      os_unfair_lock_unlock(&selfCopy2->_lock);
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy2;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v17;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Can only have one operation in flight", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
      (v7)[2](v7, v18);
    }

    else
    {
      v20 = _Block_copy(v7);
      pendingChangeSetupModeOperation = selfCopy2->_pendingChangeSetupModeOperation;
      selfCopy2->_pendingChangeSetupModeOperation = v20;

      selfCopy2->_pendingChangeSetupMode = mode;
      os_unfair_lock_unlock(&selfCopy2->_lock);
      [(HMHomeManager *)selfCopy2 sendSetupModeMessage:mode];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Setup mode switch is not enabled short circuiting as success", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v7[2](v7, 0);
  }
}

- (void)_handleSetupModeMessageResponse:(id)response error:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  context = [(HMHomeManager *)self context];
  os_unfair_lock_lock_with_options();
  v9 = _Block_copy(self->_pendingChangeSetupModeOperation);
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v10 = [responseCopy hmf_numberForKey:@"mode"];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@A setup mode number was returned", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Calling setup mode completion", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:v9 error:errorCopy];

      os_unfair_lock_lock_with_options();
      pendingChangeSetupModeOperation = self->_pendingChangeSetupModeOperation;
      self->_pendingChangeSetupModeOperation = 0;

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)handleDaemonReconnectedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  os_unfair_lock_lock_with_options();
  v5 = _Block_copy(self->_pendingChangeSetupModeOperation);
  pendingChangeSetupMode = self->_pendingChangeSetupMode;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Sending setup mode message on reconnecting", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMHomeManager *)selfCopy sendSetupModeMessage:pendingChangeSetupMode];
  }
}

- (void)attemptHH2AutoMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  v6 = MEMORY[0x1E69A2A10];
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v9 = [v7 initWithTarget:uuid];
  v10 = [v6 messageWithName:@"HMHM.attemptHH2AutoMigration" destination:v9 payload:0];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__HMHomeManager_attemptHH2AutoMigrationWithCompletionHandler___block_invoke;
  v17 = &unk_1E754DE00;
  v18 = context;
  v19 = handlerCopy;
  v11 = handlerCopy;
  v12 = context;
  [v10 setResponseHandler:&v14];
  messageDispatcher = [v12 messageDispatcher];
  [messageDispatcher sendMessage:v10];
}

void __62__HMHomeManager_attemptHH2AutoMigrationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)_saveMigrationProgressToHMCache:(BOOL)cache error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  cacheManager = [(HMHomeManager *)self cacheManager];

  if (cacheManager)
  {
    cacheManager2 = [(HMHomeManager *)self cacheManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__HMHomeManager__saveMigrationProgressToHMCache_error___block_invoke;
    v13[3] = &unk_1E754AB40;
    v13[4] = self;
    cacheCopy = cache;
    v14 = errorCopy;
    [cacheManager2 cacheWithName:@"HMHM.HH2MigrationCacheName" completion:v13];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@This client is not running with cache configuration so not going to store migration info.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __55__HMHomeManager__saveMigrationProgressToHMCache_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Got a new cache with [%@]", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v3 setNumber:v8 forKey:@"HMHM.HH2MigrationInProgress"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "generationCounter")}];
  [v3 setNumber:v9 forKey:@"HMHM.HH2MigrationGenCounterValue"];

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = encodeRootObject(v10);
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 40);
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@HH2 Migration failed error code: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v3 setData:v11 forKey:@"HMHM.HH2MigrationFailedError"];
    }
  }

  v17 = [*(a1 + 32) cacheManager];
  [v17 forceFlushToDisk];
}

- (void)postHH2UpdateRequiredCarPlayNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69A2A10];
  v6 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v8 = [v6 initWithTarget:uuid];
  v9 = [v5 messageWithName:@"HMHM.homeUpdateRequired" destination:v8 payload:0];

  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__HMHomeManager_postHH2UpdateRequiredCarPlayNotificationWithCompletion___block_invoke;
    v12[3] = &unk_1E754C0F0;
    v13 = completionCopy;
    [v9 setResponseHandler:v12];
  }

  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v9];
}

void __72__HMHomeManager_postHH2UpdateRequiredCarPlayNotificationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    if ([a3 hmf_BOOLForKey:@"exceeded"])
    {
      v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:106];
    }

    else
    {
      v5 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAppleMediaAccesoryDiagnosticInfo:(id)info options:(unint64_t)options filteringKeyPaths:(id)paths completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  pathsCopy = paths;
  completionCopy = completion;
  if (!completionCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager fetchAppleMediaAccesoryDiagnosticInfo:options:filteringKeyPaths:completion:]", @"completionHandler"];
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v35;
      v45 = 2112;
      v46 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v13 = completionCopy;
  context = [(HMHomeManager *)self context];
  uuid = [infoCopy uuid];
  if (uuid)
  {
    v16 = MEMORY[0x1E69A2A10];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMHomeManager *)self uuid];
    v19 = [v17 initWithTarget:uuid2];
    v41[0] = @"options";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    v42[0] = v20;
    v42[1] = pathsCopy;
    v41[1] = @"filteringFetchKeyPaths";
    v41[2] = @"accessoryUUID";
    v42[2] = uuid;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v37 = infoCopy;
    v22 = v21 = pathsCopy;
    delegateCaller = [v16 messageWithName:@"HMHM.accessoryDiagnosticInfo" destination:v19 payload:v22];

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __92__HMHomeManager_fetchAppleMediaAccesoryDiagnosticInfo_options_filteringKeyPaths_completion___block_invoke;
    v38[3] = &unk_1E754DE00;
    v24 = context;
    v39 = v24;
    v40 = v13;
    [delegateCaller setResponseHandler:v38];
    messageDispatcher = [v24 messageDispatcher];
    [messageDispatcher sendMessage:delegateCaller completionHandler:0];

    pathsCopy = v21;
    infoCopy = v37;

    v26 = v39;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not determine accessory UUID", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    delegateCaller = [context delegateCaller];
    v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    [delegateCaller callCompletion:v13 obj:0 error:v26];
  }
}

void __92__HMHomeManager_fetchAppleMediaAccesoryDiagnosticInfo_options_filteringKeyPaths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 hmf_dataForKey:@"accessoryDiagnosticData"];
  if (v8)
  {
    v6 = [[HMAccessoryDiagnosticInfo alloc] initWithProtoData:v8];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) delegateCaller];
  [v7 callCompletion:*(a1 + 40) obj:v6 error:v5];
}

- (void)clearMobileAssetsLocalInfoWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager clearMobileAssetsLocalInfoWithCompletion:]", @"completion"];
    v16 = v15 = self;
    v17 = objc_autoreleasePoolPush();
    v18 = v15;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v5 = completionCopy;
  context = [(HMHomeManager *)self context];
  v7 = MEMORY[0x1E69A2A10];
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v10 = [v8 initWithTarget:uuid];
  v11 = [v7 messageWithName:@"HMHM.clearMobileAssetsInfo" destination:v10 payload:0];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__HMHomeManager_clearMobileAssetsLocalInfoWithCompletion___block_invoke;
  v22[3] = &unk_1E754DE00;
  v23 = context;
  v24 = v5;
  v12 = v5;
  v13 = context;
  [v11 setResponseHandler:v22];
  messageDispatcher = [v13 messageDispatcher];
  [messageDispatcher sendMessage:v11 completionHandler:0];
}

void __58__HMHomeManager_clearMobileAssetsLocalInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegateCaller];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__HMHomeManager_clearMobileAssetsLocalInfoWithCompletion___block_invoke_2;
  v7[3] = &unk_1E754E458;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 invokeBlock:v7];
}

- (void)updateMobileAssetsAndForce:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updateMobileAssetsAndForce:completion:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v7 = completionCopy;
  context = [(HMHomeManager *)self context];
  v9 = MEMORY[0x1E69A2A10];
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v12 = [v10 initWithTarget:uuid];
  v28 = @"HMHomeManagerForceUpdateMobileAssetMessageKey";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:forceCopy];
  v29 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v15 = [v9 messageWithName:@"HMHM.updateMobileAssets" destination:v12 payload:v14];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__HMHomeManager_updateMobileAssetsAndForce_completion___block_invoke;
  v25[3] = &unk_1E754DE00;
  v26 = context;
  v27 = v7;
  v16 = v7;
  v17 = context;
  [v15 setResponseHandler:v25];
  messageDispatcher = [v17 messageDispatcher];
  [messageDispatcher sendMessage:v15 completionHandler:0];
}

void __55__HMHomeManager_updateMobileAssetsAndForce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = a3;
    v6 = [v8 hmf_integerForKey:@"HMHomeManagerOldVersionMessageKey" error:0];
    v7 = [v8 hmf_integerForKey:@"HMHomeManagerNewVersionMessageKey" error:0];
  }

  v9 = [*(a1 + 32) delegateCaller];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HMHomeManager_updateMobileAssetsAndForce_completion___block_invoke_2;
  v12[3] = &unk_1E754AB18;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v13 = v5;
  v14 = v10;
  v11 = v5;
  [v9 invokeBlock:v12];
}

- (void)fetchNetworkMismatchInfoWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  if (context)
  {
    if (!handlerCopy)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager fetchNetworkMismatchInfoWithCompletionHandler:]", @"completionHandler"];
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
      objc_exception_throw(v22);
    }

    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 messageWithName:@"HMHM.networkMismatchInfo" destination:v9 payload:0];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__HMHomeManager_fetchNetworkMismatchInfoWithCompletionHandler___block_invoke;
    v23[3] = &unk_1E754DE00;
    v11 = context;
    v24 = v11;
    v25 = handlerCopy;
    [v10 setResponseHandler:v23];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v16;
      v28 = 2080;
      v29 = "[HMHomeManager fetchNetworkMismatchInfoWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __63__HMHomeManager_fetchNetworkMismatchInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)fetchDiagnosticInfoWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager fetchDiagnosticInfoWithCompletionHandler:]", @"completionHandler"];
    v16 = v15 = self;
    v17 = objc_autoreleasePoolPush();
    v18 = v15;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v5 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v7 = MEMORY[0x1E69A2A10];
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v10 = [v8 initWithTarget:uuid];
  v11 = [v7 messageWithName:@"HMHM.currentDeviceDiagnosticInfo" destination:v10 payload:0];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__HMHomeManager_fetchDiagnosticInfoWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E754DE00;
  v23 = context;
  v24 = v5;
  v12 = v5;
  v13 = context;
  [v11 setResponseHandler:v22];
  messageDispatcher = [v13 messageDispatcher];
  [messageDispatcher sendMessage:v11 completionHandler:0];
}

void __58__HMHomeManager_fetchDiagnosticInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 delegateCaller];
  [v8 callCompletion:*(a1 + 40) obj:v6 error:v7];
}

- (void)_testHH2MigrationWithCompletionHandler:(id)handler payload:(id)payload
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  payloadCopy = payload;
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager _testHH2MigrationWithCompletionHandler:payload:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v26;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v8 = payloadCopy;
  context = [(HMHomeManager *)self context];
  if (isInternalBuild())
  {
    v10 = MEMORY[0x1E69A2A10];
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)self uuid];
    v13 = [v11 initWithTarget:uuid];
    delegateCaller = [v10 messageWithName:@"HMHM.testHH2Migration" destination:v13 payload:v8];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__HMHomeManager__testHH2MigrationWithCompletionHandler_payload___block_invoke;
    v28[3] = &unk_1E754DE00;
    v15 = context;
    v29 = v15;
    v30 = handlerCopy;
    [delegateCaller setResponseHandler:v28];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:delegateCaller completionHandler:0];

    v17 = v29;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_FAULT, "%{public}@Not allowed to run in production / customer builds", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    delegateCaller = [context delegateCaller];
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [delegateCaller callCompletion:handlerCopy error:v17];
  }
}

void __64__HMHomeManager__testHH2MigrationWithCompletionHandler_payload___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)_upgradeToHH2WithCompletionHandler:(id)handler payload:(id)payload
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  payloadCopy = payload;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager _upgradeToHH2WithCompletionHandler:payload:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v8 = payloadCopy;
  context = [(HMHomeManager *)self context];
  v10 = MEMORY[0x1E69A2A10];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v13 = [v11 initWithTarget:uuid];
  v14 = [v10 messageWithName:@"HMHM.upgradeToHH2" destination:v13 payload:v8];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__HMHomeManager__upgradeToHH2WithCompletionHandler_payload___block_invoke;
  v24[3] = &unk_1E754E480;
  v24[4] = self;
  v25 = context;
  v26 = handlerCopy;
  v15 = handlerCopy;
  v16 = context;
  [v14 setResponseHandler:v24];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v14 completionHandler:0];
}

void __60__HMHomeManager__upgradeToHH2WithCompletionHandler_payload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Upgrade to HH2 request finished with error : %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) setHh2MigrationInProgress:v5 == 0];
  [*(a1 + 32) setHh2MigrationFailedError:v5];
  v11 = *(a1 + 32);
  v12 = [v11 isHH2MigrationInProgress];
  v13 = [*(a1 + 32) hh2MigrationFailedError];
  [v11 _saveMigrationProgressToHMCache:v12 error:v13];

  v14 = [*(a1 + 40) delegateCaller];
  [v14 callCompletion:*(a1 + 48) error:v5];

  v15 = [HMMigrationBoost alloc];
  v16 = [*(a1 + 32) uuid];
  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = [*(a1 + 40) messageDispatcher];
  v19 = [*(a1 + 40) queue];
  v20 = [(HMMigrationBoost *)v15 initWithMessageTarget:v16 notificationCenter:v17 messageDispatcher:v18 queue:v19];
  [*(a1 + 32) setMigrationBoost:v20];

  v21 = [*(a1 + 32) migrationBoost];
  [v21 startBoost];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  batchNotificationEndTimer = self->_batchNotificationEndTimer;
  if (batchNotificationEndTimer == fireCopy)
  {

    [(HMHomeManager *)self _forceBatchNotificationsEnd];
  }
}

- (void)_addKeysToRepairListIfUnique:(id)unique includePrivateKeys:(BOOL)keys repairList:(id)list
{
  listCopy = list;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__HMHomeManager__addKeysToRepairListIfUnique_includePrivateKeys_repairList___block_invoke;
  v9[3] = &unk_1E754AAF0;
  keysCopy = keys;
  v10 = listCopy;
  v8 = listCopy;
  [unique hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __76__HMHomeManager__addKeysToRepairListIfUnique_includePrivateKeys_repairList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69A2A30]);
  v5 = [v3 identifier];
  v6 = [v3 publicKey];
  if (*(a1 + 40))
  {
    v7 = [v3 privateKey];
    v8 = [v4 initWithIdentifier:v5 publicKey:v6 privateKey:v7];
  }

  else
  {
    v8 = [v4 initWithIdentifier:v5 publicKey:v6 privateKey:0];
  }

  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__HMHomeManager__addKeysToRepairListIfUnique_includePrivateKeys_repairList___block_invoke_2;
  v11[3] = &unk_1E754AAC8;
  v10 = v8;
  v12 = v10;
  if (([v9 na_any:v11] & 1) == 0)
  {
    [*(a1 + 32) addObject:v10];
  }
}

- (id)fetchPairingIdentitiesInRankOrder:(id)order error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2050000000;
  v5 = getHAPSystemKeychainStoreClass_softClass;
  v59 = getHAPSystemKeychainStoreClass_softClass;
  if (!getHAPSystemKeychainStoreClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHAPSystemKeychainStoreClass_block_invoke;
    v63 = &unk_1E754CB30;
    v64 = &v56;
    __getHAPSystemKeychainStoreClass_block_invoke(buf);
    v5 = v57[3];
  }

  v6 = v5;
  _Block_object_dispose(&v56, 8);
  systemStore = [v5 systemStore];
  array = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  obj = orderCopy;
  v39 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v39)
  {
    v36 = *v53;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v52 + 1) + 8 * i);
        v51 = 0;
        v43 = v8;
        v41 = [systemStore allKeysForType:? error:?];
        v40 = v51;
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v40)
        {
          if (v11)
          {
            v12 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v43;
            *&buf[22] = 2112;
            v63 = v40;
            _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Unable to find pairing identity for type %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v9);
        }

        else
        {
          if (v11)
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v13;
            *&buf[12] = 2112;
            *&buf[14] = v41;
            *&buf[22] = 2112;
            v63 = v43;
            _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Found [%@] of type : %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v9);
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v14 = v41;
          v15 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v15)
          {
            v16 = *v48;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v48 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v47 + 1) + 8 * j);
                v19 = objc_alloc(MEMORY[0x1E69A2A30]);
                identifier = [v18 identifier];
                publicKey = [v18 publicKey];
                privateKey = [v18 privateKey];
                v23 = [v19 initWithIdentifier:identifier publicKey:publicKey privateKey:privateKey];

                v45[0] = MEMORY[0x1E69E9820];
                v45[1] = 3221225472;
                v45[2] = __57__HMHomeManager_fetchPairingIdentitiesInRankOrder_error___block_invoke;
                v45[3] = &unk_1E754AAC8;
                v24 = v23;
                v46 = v24;
                if ([array na_any:v45])
                {
                  v25 = objc_autoreleasePoolPush();
                  v26 = selfCopy;
                  v27 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    v28 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    *&buf[4] = v28;
                    *&buf[12] = 2112;
                    *&buf[14] = v24;
                    *&buf[22] = 2112;
                    v63 = v43;
                    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Not adding key [%@] [%@] as it already exist in final list", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v25);
                }

                else
                {
                  [array addObject:v24];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
            }

            while (v15);
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v39);
  }

  v29 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = array;
    _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Returning pairing identities: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  v33 = [array copy];

  return v33;
}

- (void)currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:(id)identifier completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:completionHandler:]", @"accessoryUniqueIdentifier"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v28 = @"kIdentifierKey";
  v29 = identifierCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"HMHM.cuacpi" destination:v14 payload:v10];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__HMHomeManager_currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = self;
  v26 = identifierCopy;
  v27 = v8;
  v16 = v8;
  v17 = identifierCopy;
  [v15 setResponseHandler:v25];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __108__HMHomeManager_currentUserPairingIdentityForHomeContainingAccessoryWithUniqueIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@There was an error while retrieving pairing identity for a user in the home with accessory %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v32 = 0;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v32];
      v15 = v32;
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v14)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = *(a1 + 40);
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v21;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@HM: Fetched pairing identity [%@] for a user in the home with accessory : %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = *(a1 + 40);
          *buf = 138543874;
          v34 = v28;
          v35 = 2112;
          v36 = v29;
          v37 = 2112;
          v38 = v15;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identity a user in the home with accessory from encoded pairing identity: %@, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v30 = *(a1 + 48);
        v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v30 + 16))(v30, 0, v31);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 40);
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@HomeKitDaemon did not send any pairing identity a user in the home with accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = *(a1 + 48);
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      (*(v27 + 16))(v27, 0, v15);
    }
  }
}

- (void)pairingIdentityForAccessoryWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager pairingIdentityForAccessoryWithIdentifier:completionHandler:]", @"accessoryIdentifier"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager pairingIdentityForAccessoryWithIdentifier:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v28 = @"kIdentifierKey";
  v29 = identifierCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"HMHM.acpi" destination:v14 payload:v10];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__HMHomeManager_pairingIdentityForAccessoryWithIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = self;
  v26 = identifierCopy;
  v27 = v8;
  v16 = v8;
  v17 = identifierCopy;
  [v15 setResponseHandler:v25];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __77__HMHomeManager_pairingIdentityForAccessoryWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@There was an error while retrieving pairing identity for %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v32 = 0;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v32];
      v15 = v32;
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v14)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = *(a1 + 40);
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v21;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@HM: Fetched pairing identity [%@] for accessory : %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = *(a1 + 40);
          *buf = 138543874;
          v34 = v28;
          v35 = 2112;
          v36 = v29;
          v37 = 2112;
          v38 = v15;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identity from encoded pairing identity: %@, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v30 = *(a1 + 48);
        v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v30 + 16))(v30, 0, v31);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 40);
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@HomeKitDaemon did not send any pairing identity for accessory : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = *(a1 + 48);
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      (*(v27 + 16))(v27, 0, v15);
    }
  }
}

- (void)_handleResidentProvisioningStatusChanged:(id)changed
{
  v4 = [changed numberForKey:@"kProvisioningStatusKey"];
  -[HMHomeManager setResidentProvisioningStatus:](self, "setResidentProvisioningStatus:", [v4 integerValue]);
}

- (void)_handleAccessAllowedWhenLockedUpdatedNotification:(id)notification
{
  v5 = 0;
  v4 = [notification BOOLForKey:@"kAccessAllowedWhenLockedKey" keyPresent:&v5];
  if (v4 != [(HMHomeManager *)self isAccessAllowedWhenLocked])
  {
    [(HMHomeManager *)self setAccessAllowedWhenLocked:v4];
    [(HMHomeManager *)self _notifyAccessAllowedWhenLockedUpdated:v4];
  }
}

- (void)_handleDevicesUpdatedMessage:(id)message
{
  v27[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v6 = [messageCopy unarchivedObjectForKey:@"HMHM.devices" ofClasses:v5];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Devices updated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    delegate = [(HMHomeManager *)selfCopy delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v13 = delegate;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMHomeManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __46__HMHomeManager__handleDevicesUpdatedMessage___block_invoke;
      v19[3] = &unk_1E754E5E8;
      v20 = v14;
      v21 = selfCopy;
      v22 = v6;
      [delegateCaller invokeBlock:v19];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = messagePayload;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find devices in devices updated message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_handleResidentEnabledForThisDeviceUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  context = [(HMHomeManager *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [notificationCopy identifier];
  v12 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v8 = [notificationCopy BOOLForKey:@"kResidentEnabledKey"];
  if (v8 == [(HMHomeManager *)self isResidentEnabledForThisDevice])
  {
    v9 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  [(HMHomeManager *)self setResidentEnabledForThisDevice:v8];
  if (v12)
  {
LABEL_5:
    context2 = [(HMHomeManager *)self context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v12 error:0];

    goto LABEL_6;
  }

  [(HMHomeManager *)self notifyResidentEnabledUpdated:v8];
LABEL_6:
  v9 = v12;
LABEL_7:
}

- (void)_handleResidentDeviceCapableUpdatedNotification:(id)notification
{
  v4 = [notification BOOLForKey:@"kResidentCapableDeviceKey"];
  if (v4 != [(HMHomeManager *)self isThisDeviceResidentCapable])
  {
    [(HMHomeManager *)self setThisDeviceResidentCapable:v4];
    if ((v4 & 1) == 0 && [(HMHomeManager *)self isResidentEnabledForThisDevice])
    {
      [(HMHomeManager *)self setResidentEnabledForThisDevice:0];
      [(HMHomeManager *)self notifyResidentEnabledUpdated:0];
    }

    [(HMHomeManager *)self notifyResidentCapableUpdated:v4];
  }
}

- (void)_updateInvitation:(id)invitation presenceAuthStatus:(unint64_t)status invitationState:(int64_t)state invitationOptions:(int64_t)options completionHandler:(id)handler
{
  v43[5] = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  v42[0] = @"kInvitationIdentifierKey";
  identifier = [invitationCopy identifier];
  uUIDString = [identifier UUIDString];
  v43[0] = uUIDString;
  v42[1] = @"kInvitationStateKey";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v43[1] = v15;
  v42[2] = @"kInvitationResponseOptionsKey";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:options];
  v43[2] = v16;
  v42[3] = @"kUserPresenceAuthorizationStatusKey";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  v43[3] = v17;
  v42[4] = @"kHomeUUID";
  homeUUID = [invitationCopy homeUUID];
  uUIDString2 = [homeUUID UUIDString];
  v43[4] = uUIDString2;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:5];

  v21 = objc_alloc(MEMORY[0x1E69A2A10]);
  v22 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v24 = [v22 initWithTarget:uuid];
  v25 = [v21 initWithName:@"kUpdateInvitationStateRequestKey" destination:v24 payload:v20];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __106__HMHomeManager__updateInvitation_presenceAuthStatus_invitationState_invitationOptions_completionHandler___block_invoke;
  v35[3] = &unk_1E754DE00;
  v26 = context;
  v36 = v26;
  v27 = handlerCopy;
  v37 = v27;
  [v25 setResponseHandler:v35];
  v28 = objc_autoreleasePoolPush();
  selfCopy = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v31;
    v40 = 2112;
    v41 = v25;
    _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@update invitation: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  messageDispatcher = [v26 messageDispatcher];
  [messageDispatcher sendMessage:v25];
}

void __106__HMHomeManager__updateInvitation_presenceAuthStatus_invitationState_invitationOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)_handleQueryHomeKitUsageStateResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v16 = 0;
  v8 = [responseCopy hmf_BOOLForKey:@"kHomeKitInUseKey" isPresent:&v16];
  if (v16)
  {
    v9 = v8;
    v10 = [responseCopy hmf_BOOLForKey:@"kHomeKitUsingCloudKey" isPresent:&v16];
    if (v16)
    {
      if (handlerCopy)
      {
        v11 = v10;
        context = [(HMHomeManager *)self context];
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:handlerCopy isUsingHomeKit:v9 isUsingCloudServices:v11 error:0];
LABEL_9:
      }
    }

    else if (handlerCopy)
    {
      context = [(HMHomeManager *)self context];
      delegateCaller = [context delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:58 userInfo:0];
      [delegateCaller callCompletion:handlerCopy isUsingHomeKit:v9 isUsingCloudServices:0 error:v15];

      goto LABEL_9;
    }
  }

  else if (handlerCopy)
  {
    context = [(HMHomeManager *)self context];
    delegateCaller = [context delegateCaller];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:58 userInfo:0];
    [delegateCaller callCompletion:handlerCopy isUsingHomeKit:0 isUsingCloudServices:0 error:v14];

    goto LABEL_9;
  }
}

- (void)_handleMetadataUpdatedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = [(HMHomeManager *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v8 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v9 = [notificationCopy numberForKey:@"kMetadataInfoVersionKey"];
  v10 = [notificationCopy numberForKey:@"kMetadataInfoSchemaVersionKey"];
  v11 = v10;
  if (v9 && v10)
  {
    if (([(HMHomeManager *)self options]& 0x9701) != 0)
    {
      if ([v11 unsignedIntegerValue] == 1)
      {
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        if (unsignedIntegerValue >= [(HMHomeManager *)self metadataVersion])
        {
          -[HMHomeManager setMetadataVersion:](self, "setMetadataVersion:", [v9 unsignedIntegerValue]);
          v25 = [notificationCopy dataForKey:@"kHAPMetadataDataKey"];
          if (v25)
          {
            v26 = +[HMHAPMetadata getSharedInstance];
            [v26 applyProtoBufData:v25];

            v22 = 0;
          }

          else
          {
            v22 = [MEMORY[0x1E696ABC0] hmInternalErrorWithCode:1002];
          }

          if (!v8)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      v13 = [MEMORY[0x1E696ABC0] hmInternalErrorWithCode:1003];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        HMHomeManagerOptionsToString([(HMHomeManager *)selfCopy options]);
        v21 = v27 = v17;
        *buf = 138543618;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Client has not requested access to HAP accessories (options %@) - dropping metadata update", buf, 0x16u);

        v17 = v27;
      }

      objc_autoreleasePoolPop(v17);
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    }

    v22 = v13;
    if (!v8)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    context2 = [(HMHomeManager *)self context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v8 error:v22];

    goto LABEL_14;
  }

  if (v8)
  {
    context3 = [(HMHomeManager *)self context];
    delegateCaller2 = [context3 delegateCaller];
    v16 = [MEMORY[0x1E696ABC0] hmInternalErrorWithCode:1002];
    [delegateCaller2 callCompletion:v8 error:v16];
  }

LABEL_15:
}

- (void)_handleUserInvitationsUpdatedNotification:(id)notification
{
  v59 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v37 = [notificationCopy dataForKey:@"kInvitationsDataKey"];
  selfCopy = self;
  v4 = [HMIncomingHomeInvitation incomingHomeInvitationFromEncodedData:"incomingHomeInvitationFromEncodedData:homeManager:" homeManager:?];
  v5 = [v4 mutableCopy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v5 copy];
  v43 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v43)
  {
    v41 = *v49;
    v39 = v5;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = selfCopy;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v11;
          v54 = 2112;
          v55 = v7;
          _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Processing invitation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        homeInvitations = [(HMHomeManager *)v9 homeInvitations];
        identifier = [v7 identifier];
        v14 = [homeInvitations firstItemWithValue:identifier forKey:@"identifier"];

        invitationState = [v7 invitationState];
        v16 = invitationState;
        if (v14)
        {
          if (invitationState <= 7 && ((1 << invitationState) & 0x9A) != 0)
          {
            homeInvitations2 = [(HMHomeManager *)v9 homeInvitations];
            [homeInvitations2 removeObject:v14];

            v18 = objc_autoreleasePoolPush();
            v19 = v9;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              uniqueIdentifier = [v14 uniqueIdentifier];
              *buf = 138543618;
              v53 = v21;
              v54 = 2112;
              v55 = uniqueIdentifier;
              _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Removed invitation %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
            v5 = v39;
          }

          [v14 _updateInvitationState:v16];
          [v5 removeObject:v7];
          [v5 addObject:v14];
          v23 = objc_autoreleasePoolPush();
          v24 = v9;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            uniqueIdentifier2 = [v14 uniqueIdentifier];
            v28 = +[HMHomeInvitationData homeInvitationStateDescription:](HMHomeInvitationData, "homeInvitationStateDescription:", [v14 invitationState]);
            *buf = 138543874;
            v53 = v26;
            v54 = 2112;
            v55 = uniqueIdentifier2;
            v56 = 2112;
            v57 = v28;
            _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Updated invitation state for invitation %@ to %@", buf, 0x20u);
          }

LABEL_20:

          objc_autoreleasePoolPop(v23);
          goto LABEL_21;
        }

        if (invitationState == 5 || invitationState == 2)
        {
          context = [(HMHomeManager *)v9 context];
          [v7 __configureWithContext:context homeManager:v9];

          homeInvitations3 = [(HMHomeManager *)v9 homeInvitations];
          [homeInvitations3 addObject:v7];

          v23 = objc_autoreleasePoolPush();
          v31 = v9;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            uniqueIdentifier3 = [v7 uniqueIdentifier];
            *buf = 138543618;
            v53 = v32;
            v54 = 2112;
            v55 = uniqueIdentifier3;
            _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Added invitation: %@", buf, 0x16u);
          }

          goto LABEL_20;
        }

LABEL_21:
      }

      v43 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v43);
  }

  _privateDelegate = [(HMHomeManager *)selfCopy _privateDelegate];
  if ([v5 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context2 = [(HMHomeManager *)selfCopy context];
    delegateCaller = [context2 delegateCaller];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __59__HMHomeManager__handleUserInvitationsUpdatedNotification___block_invoke;
    v44[3] = &unk_1E754E5E8;
    v45 = _privateDelegate;
    v46 = selfCopy;
    v47 = v5;
    [delegateCaller invokeBlock:v44];
  }
}

- (void)_handleHomesDidUpdateNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [notificationCopy shortDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching home configuration in response to homes did update message: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMHomeManager *)selfCopy _fetchHomeConfigurationWithRefreshRequested:0];
}

- (void)_handleCurrentHomeChangedNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [notificationCopy uuidForKey:@"kCurrentHomeUUIDKey"];
  if (v5 || ((LOBYTE(v13) = 0, v6 = [notificationCopy BOOLForKey:@"kNoCurrentHomeKey" keyPresent:&v13], v13 == 1) ? (v7 = v6 == 0) : (v7 = 1), !v7))
  {
    [(HMHomeManager *)self _updateCurrentHome:v5];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      currentHome = [(HMHomeManager *)selfCopy currentHome];
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = currentHome;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updated current home: %@ due to current home changed notification", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_processHomeAddedPayload:(id)payload completionHandler:(id)handler
{
  v87[2] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  v10 = [payloadCopy hmf_BOOLForKey:@"HMHM.isPrimaryHome"];
  v11 = [payloadCopy hmf_dataForKey:@"kHomeDataKey"];
  if (v11)
  {
    v68 = 0;
    v65 = v11;
    delegateCaller2 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v11 error:&v68];
    v13 = v68;
    [delegateCaller2 _allowDecodingCyclesInSecureMode];
    v14 = MEMORY[0x1E695DFD8];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = *MEMORY[0x1E696A508];
    v67 = v13;
    v18 = [delegateCaller2 decodeTopLevelObjectOfClasses:v16 forKey:v17 error:&v67];
    v66 = v67;

    v19 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      aBlock = handlerCopy;
      uuid = [v21 uuid];
      context4 = [(HMHomeManager *)self _homeWithUUID:uuid];

      if (context4)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          currentUser = [v21 currentUser];
          currentUser2 = [v21 currentUser];
          uuid2 = [currentUser2 uuid];
          currentUser3 = [context4 currentUser];
          currentUser4 = [context4 currentUser];
          [currentUser4 uuid];
          v28 = v62 = v24;
          *buf = 138545410;
          v70 = v57;
          v71 = 2048;
          v72 = v21;
          v73 = 2112;
          v74 = v21;
          v75 = 2048;
          v76 = context4;
          v77 = 2112;
          v78 = context4;
          v79 = 2112;
          v80 = currentUser;
          v81 = 2112;
          v82 = uuid2;
          v83 = 2112;
          v84 = currentUser3;
          v85 = 2112;
          v86 = v28;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Not adding unarchived home %p/%@ to the home graph as a matching home already exist: %p/%@, [%@/%@] [%@/%@]", buf, 0x5Cu);

          v24 = v62;
        }

        v29 = context4;
      }

      else
      {
        context2 = [(HMHomeManager *)self context];
        [v21 __configureWithContext:context2 homeManager:self];

        currentHomes = [(HMHomeManager *)self currentHomes];
        [currentHomes addObject:v21];

        [v21 postConfigure];
        v42 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v63 = HMFGetLogIdentifier();
          v61 = HMFBooleanToString();
          currentUser5 = [v21 currentUser];
          [v21 currentUser];
          v45 = v56 = v42;
          [v45 uuid];
          v46 = v58 = v10;
          *buf = 138544642;
          v70 = v63;
          v71 = 2048;
          v72 = v21;
          v73 = 2112;
          v74 = v21;
          v75 = 2112;
          v76 = v61;
          v77 = 2112;
          v78 = currentUser5;
          v79 = 2112;
          v80 = v46;
          _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added home %p/%@ with isPrimary: %@, current user: %@/%@", buf, 0x3Eu);

          v10 = v58;
          v42 = v56;
        }

        objc_autoreleasePoolPop(v42);
        if (v10)
        {
          uuid3 = [v21 uuid];
          [(HMHomeManager *)selfCopy2 _updatePrimaryHome:uuid3 notifyDelegate:1];
        }

        v24 = objc_autoreleasePoolPush();
        v48 = selfCopy2;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          v50 = v24;
          v51 = _Block_copy(aBlock);
          *buf = 138543874;
          v70 = v49;
          v71 = 2112;
          v72 = v51;
          v73 = 2112;
          v74 = v21;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Calling completion %@ with newly added Home: %@", buf, 0x20u);

          v24 = v50;
        }

        v29 = v21;
      }

      objc_autoreleasePoolPop(v24);
      context3 = [(HMHomeManager *)self context];
      delegateCaller = [context3 delegateCaller];
      handlerCopy = aBlock;
      [delegateCaller callCompletion:aBlock home:v29 error:0];

      v11 = v65;
      context5 = v66;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v70 = v38;
        v71 = 2112;
        v72 = v66;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive home from home data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      context4 = [(HMHomeManager *)selfCopy3 context];
      context3 = [context4 delegateCaller];
      context5 = v66;
      [context3 callCompletion:handlerCopy home:0 error:v66];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v33;
      v71 = 2112;
      v72 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find home data in add home response payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    context5 = [(HMHomeManager *)selfCopy4 context];
    delegateCaller2 = [context5 delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [delegateCaller2 callCompletion:handlerCopy home:0 error:v19];
  }
}

- (id)_homeWithUUID:(id)d
{
  dCopy = d;
  currentHomes = [(HMHomeManager *)self currentHomes];
  v6 = [currentHomes firstItemWithUUID:dCopy];

  return v6;
}

- (id)homeWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHomes = [(HMHomeManager *)self currentHomes];
  v6 = [currentHomes firstItemWithUniqueIdentifier:identifierCopy];

  return v6;
}

- (id)_privateDelegate
{
  delegate = [(HMHomeManager *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63540])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_mergeNewAppData:(id)data
{
  dataCopy = data;
  applicationData = [(HMHomeManager *)self applicationData];
  v5 = HMFEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(HMHomeManager *)self _updateAppData:dataCopy];
  }
}

- (void)_updateAppData:(id)data
{
  [(HMHomeManager *)self setApplicationData:data];
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__HMHomeManager__updateAppData___block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_mergeHomeInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v5 = [HMObjectMergeCollection alloc];
  homeInvitations = [(HMHomeManager *)self homeInvitations];
  array = [homeInvitations array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:invitationsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __39__HMHomeManager__mergeHomeInvitations___block_invoke;
  v24[3] = &unk_1E754AAA0;
  v24[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__HMHomeManager__mergeHomeInvitations___block_invoke_812;
  v23[3] = &unk_1E754AAA0;
  v23[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v23];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  homeInvitations2 = [(HMHomeManager *)self homeInvitations];
  [homeInvitations2 setArray:finalObjects];

  array2 = [MEMORY[0x1E695DF70] array];
  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  [array2 addObjectsFromArray:addedObjects2];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  [array2 addObjectsFromArray:removedObjects2];

  updatedObjects = [(HMObjectMergeCollection *)v8 updatedObjects];
  [array2 addObjectsFromArray:updatedObjects];

  _privateDelegate = [(HMHomeManager *)self _privateDelegate];
  if ([array2 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context = [(HMHomeManager *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__HMHomeManager__mergeHomeInvitations___block_invoke_814;
    block[3] = &unk_1E754E5E8;
    block[4] = self;
    v21 = _privateDelegate;
    v22 = array2;
    dispatch_async(queue, block);
  }
}

void __39__HMHomeManager__mergeHomeInvitations___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed invitation via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __39__HMHomeManager__mergeHomeInvitations___block_invoke_812(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added invitation via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __39__HMHomeManager__mergeHomeInvitations___block_invoke_814(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__HMHomeManager__mergeHomeInvitations___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  [v3 invokeBlock:v6];
}

- (void)_mergeCurrentHomesWithNewHomes:(id)homes newPrimaryHome:(id)home newCurrentHome:(id)currentHome newInvitations:(id)invitations newAppData:(id)data refreshRequested:(BOOL)requested
{
  v86 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  homeCopy = home;
  currentHomeCopy = currentHome;
  invitationsCopy = invitations;
  dataCopy = data;
  v59 = [MEMORY[0x1E695DF00] now];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMHomeManager generationCounter](selfCopy, "generationCounter")}];
    *buf = 138543618;
    v80 = v17;
    v81 = 2112;
    v82 = v18;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Framework merge started for generation counter: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v21 = [@"Merge-HomeManager-" stringByAppendingString:uUIDString];

  context = [(HMHomeManager *)selfCopy context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke;
  block[3] = &unk_1E754E5C0;
  block[4] = selfCopy;
  v24 = v21;
  v78 = v24;
  dispatch_async(queue, block);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2;
  aBlock[3] = &unk_1E754AA50;
  aBlock[4] = selfCopy;
  v25 = _Block_copy(aBlock);
  v26 = [HMObjectMergeCollection alloc];
  currentHomes = [(HMHomeManager *)selfCopy currentHomes];
  array = [currentHomes array];
  v58 = homesCopy;
  v29 = [(HMObjectMergeCollection *)v26 initWithCurrentObjects:array newObjects:homesCopy commonObjectPredicate:v25];

  removedObjects = [(HMObjectMergeCollection *)v29 removedObjects];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_798;
  v75[3] = &unk_1E754AA78;
  v75[4] = selfCopy;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v75];

  addedObjects = [(HMObjectMergeCollection *)v29 addedObjects];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_800;
  v74[3] = &unk_1E754AA78;
  v74[4] = selfCopy;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v74];

  [(HMObjectMergeCollection *)v29 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v29 finalObjects];
  currentHomes2 = [(HMHomeManager *)selfCopy currentHomes];
  [currentHomes2 setArray:finalObjects];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  homes = [(HMHomeManager *)selfCopy homes];
  v35 = [homes countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v71;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v71 != v37)
        {
          objc_enumerationMutation(homes);
        }

        [*(*(&v70 + 1) + 8 * i) postConfigure];
      }

      v36 = [homes countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v36);
  }

  removedObjects2 = [(HMObjectMergeCollection *)v29 removedObjects];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_801;
  v69[3] = &unk_1E754AA78;
  v69[4] = selfCopy;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v69];

  addedObjects2 = [(HMObjectMergeCollection *)v29 addedObjects];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_804;
  v68[3] = &unk_1E754AA78;
  v68[4] = selfCopy;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v68];

  [(HMHomeManager *)selfCopy _mergeHomeInvitations:invitationsCopy];
  [(HMHomeManager *)selfCopy _mergeNewAppData:dataCopy];
  [(HMHomeManager *)selfCopy _updatePrimaryHome:homeCopy notifyDelegate:1];
  currentHome = [(HMHomeManager *)selfCopy currentHome];
  uuid = [currentHome uuid];
  v43 = currentHomeCopy;
  v44 = HMFEqualObjects();

  if ((v44 & 1) == 0)
  {
    context2 = [(HMHomeManager *)selfCopy context];
    queue2 = [context2 queue];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_808;
    v66[3] = &unk_1E754E5C0;
    v66[4] = selfCopy;
    v67 = currentHomeCopy;
    dispatch_async(queue2, v66);
  }

  context3 = [(HMHomeManager *)selfCopy context];
  queue3 = [context3 queue];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_810;
  v63[3] = &unk_1E754DC70;
  requestedCopy = requested;
  v63[4] = selfCopy;
  v49 = v24;
  v64 = v49;
  dispatch_async(queue3, v63);

  v50 = objc_autoreleasePoolPush();
  v51 = selfCopy;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMHomeManager generationCounter](v51, "generationCounter")}];
    [v59 timeIntervalSinceNow];
    *buf = 138543874;
    v80 = v53;
    v81 = 2112;
    v82 = v54;
    v83 = 2048;
    v84 = -v55;
    _os_log_impl(&dword_19BB39000, v52, OS_LOG_TYPE_INFO, "%{public}@Framework merge finished for generation counter: %@, %f seconds", buf, 0x20u);

    v43 = currentHomeCopy;
  }

  objc_autoreleasePoolPop(v50);
}

uint64_t __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 uniqueIdentifier];
  v8 = [v6 uniqueIdentifier];
  v9 = [v7 hmf_isEqualToUUID:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  if ([*(a1 + 32) isDaemonRunningWithROARFramework])
  {
    v10 = [v5 currentUser];
    v11 = [v10 homeAccessControl];
    if ([v11 isOwner])
    {

      goto LABEL_6;
    }

    v12 = [v5 currentUser];
    v13 = [v12 uniqueIdentifier];
    v14 = [v6 currentUser];
    v15 = [v14 uniqueIdentifier];
    v16 = HMFEqualObjects();

    if (v16)
    {
      goto LABEL_6;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v21;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Found different current user unique identifiers, so not considering homes to be the same even though they have the same unique identifier. Current home: %@, new home: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v17 = 1;
LABEL_11:

  return v17;
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_798(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543874;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed home via merge: %@ (%p)", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 unconfigure];
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_800(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added home via merge: %@ (%p)", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 homeManager:*(a1 + 32)];
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_801(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_803;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_804(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_806;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_808(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_809;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_810(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _requestRefresh];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 notifyDelegateOfBatchNotificationsEndWithReason:v3];
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_809(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateCurrentHome:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) currentHome];
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Updated current home: %@ due to current home merge", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_806(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_3_807;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_3_807(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    v7 = a1[6];
    v8 = [v6 currentUser];
    v9 = [a1[5] currentUser];
    v10 = [v9 uuid];
    v12 = 138544642;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did add home: %p/%@ delegate: %@ with current user : %@ / %@", &v12, 0x3Eu);
  }

  objc_autoreleasePoolPop(v2);
  return [a1[6] homeManager:a1[4] didAddHome:a1[5]];
}

void __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_2_803(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __121__HMHomeManager__mergeCurrentHomesWithNewHomes_newPrimaryHome_newCurrentHome_newInvitations_newAppData_refreshRequested___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed home: %p / %@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) homeManager:*(a1 + 32) didRemoveHome:*(a1 + 40)];
}

- (void)notifyDelegateOfBatchNotificationsEndWithReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  os_unfair_lock_lock_with_options();
  [(NSCountedSet *)self->_batchNotificationReasons removeObject:reasonCopy];
  if ([(NSCountedSet *)self->_batchNotificationReasons count]|| (batchNotificationEndTimer = self->_batchNotificationEndTimer) == 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(HMFTimer *)batchNotificationEndTimer suspend];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = reasonCopy;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling batch notification end: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    delegate = [(HMHomeManager *)selfCopy delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(HMHomeManager *)selfCopy delegate];
      if ([delegate2 conformsToProtocol:&unk_1F0F63540])
      {
        v13 = delegate2;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      context = [(HMHomeManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__HMHomeManager_notifyDelegateOfBatchNotificationsEndWithReason___block_invoke;
      v18[3] = &unk_1E754E5C0;
      v19 = v14;
      v20 = selfCopy;
      v17 = v14;
      [delegateCaller invokeBlock:v18];
    }
  }
}

- (void)notifyDelegateOfBatchNotificationsStartWithReason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  context = [(HMHomeManager *)self context];
  os_unfair_lock_lock_with_options();
  v6 = [(NSCountedSet *)self->_batchNotificationReasons count];
  [(NSCountedSet *)self->_batchNotificationReasons addObject:reasonCopy];
  if (v6)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    batchNotificationEndTimer = self->_batchNotificationEndTimer;
    if (!batchNotificationEndTimer)
    {
      timerFactory = [(HMHomeManager *)self timerFactory];
      v9 = timerFactory[2](timerFactory, 8, 10.0);
      v10 = self->_batchNotificationEndTimer;
      self->_batchNotificationEndTimer = v9;

      [(HMFTimer *)self->_batchNotificationEndTimer setDelegate:self];
      v11 = self->_batchNotificationEndTimer;
      queue = [context queue];
      [(HMFTimer *)v11 setDelegateQueue:queue];

      batchNotificationEndTimer = self->_batchNotificationEndTimer;
    }

    [(HMFTimer *)batchNotificationEndTimer resume];
    os_unfair_lock_unlock(&self->_lock);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = reasonCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Calling batch notification start: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    delegate = [(HMHomeManager *)selfCopy delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(HMHomeManager *)selfCopy delegate];
      if ([delegate2 conformsToProtocol:&unk_1F0F63540])
      {
        v20 = delegate2;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      delegateCaller = [context delegateCaller];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __67__HMHomeManager_notifyDelegateOfBatchNotificationsStartWithReason___block_invoke;
      v24[3] = &unk_1E754E5C0;
      v25 = v21;
      v26 = selfCopy;
      v23 = v21;
      [delegateCaller invokeBlock:v24];
    }
  }
}

- (void)_forceBatchNotificationsEnd
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  allObjects = [(NSCountedSet *)self->_batchNotificationReasons allObjects];
  [(NSCountedSet *)self->_batchNotificationReasons removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [allObjects componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Batch notifications '%@' did not complete - force-ending", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMHomeManager *)selfCopy delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(HMHomeManager *)selfCopy delegate];
    if ([delegate2 conformsToProtocol:&unk_1F0F63540])
    {
      v12 = delegate2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    context = [(HMHomeManager *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__HMHomeManager__forceBatchNotificationsEnd__block_invoke;
    v17[3] = &unk_1E754E5C0;
    v18 = v13;
    v19 = selfCopy;
    v16 = v13;
    [delegateCaller invokeBlock:v17];
  }
}

- (void)_notifyDelegateOfAppDataUpdate
{
  _privateDelegate = [(HMHomeManager *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHomeManager *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__HMHomeManager__notifyDelegateOfAppDataUpdate__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_setInitialHomes:(id)homes
{
  v46 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  [(HMHomeManager *)self setPrimaryHome:0];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  v5 = homesCopy;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        context = [(HMHomeManager *)self context];
        [v10 __configureWithContext:context homeManager:self];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v7);
  }

  currentHomes = [(HMHomeManager *)self currentHomes];
  [currentHomes setArray:v5];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * j);
        [v18 postConfigure];
        if ([v18 isPrimary])
        {
          [(HMHomeManager *)self setPrimaryHome:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v15);
  }

  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_initialMergeComplete = 1;
  os_unfair_lock_unlock(&self->_lock);
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v23;
    v42 = 2112;
    v43 = WeakRetained;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying client did update homes for delegate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  if (objc_opt_respondsToSelector())
  {
    currentActivity = [MEMORY[0x1E69A29C0] currentActivity];
    [currentActivity markWithReason:@"Notifying delegate homes did update"];
    context2 = [(HMHomeManager *)selfCopy context];
    delegateCaller = [context2 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __34__HMHomeManager__setInitialHomes___block_invoke;
    v28[3] = &unk_1E754E5E8;
    v29 = WeakRetained;
    v30 = selfCopy;
    v31 = currentActivity;
    v27 = currentActivity;
    [delegateCaller invokeBlock:v28];
  }
}

uint64_t __34__HMHomeManager__setInitialHomes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) homeManagerDidUpdateHomes:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 markWithReason:@"Notified delegate homes did update"];
}

- (void)_updateCurrentHome:(id)home
{
  v21 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  v5 = [(HMHomeManager *)self _homeWithUUID:homeCopy];
  [(HMHomeManager *)self setCurrentHome:v5];

  _privateDelegate = [(HMHomeManager *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      currentHome = [(HMHomeManager *)selfCopy currentHome];
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = currentHome;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated current home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    context = [(HMHomeManager *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__HMHomeManager__updateCurrentHome___block_invoke;
    v14[3] = &unk_1E754E5C0;
    v15 = _privateDelegate;
    v16 = selfCopy;
    [delegateCaller invokeBlock:v14];
  }
}

- (void)_updatePrimaryHome:(id)home notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  homeCopy = home;
  primaryHome = [(HMHomeManager *)self primaryHome];
  if (homeCopy)
  {
    currentHomes = [(HMHomeManager *)self currentHomes];
    v9 = [currentHomes firstItemWithUUID:homeCopy];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != primaryHome)
  {
    [primaryHome setPrimary:0];
    [v9 setPrimary:1];
    [(HMHomeManager *)self setPrimaryHome:v9];
    if (delegateCopy)
    {
      delegate = [(HMHomeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMHomeManager *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__HMHomeManager__updatePrimaryHome_notifyDelegate___block_invoke;
        block[3] = &unk_1E754E5E8;
        block[4] = self;
        v15 = context;
        v16 = delegate;
        v13 = context;
        dispatch_async(queue, block);
      }
    }
  }
}

void __51__HMHomeManager__updatePrimaryHome_notifyDelegate___block_invoke(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated primary home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [a1[5] delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__HMHomeManager__updatePrimaryHome_notifyDelegate___block_invoke_779;
  v9[3] = &unk_1E754E5C0;
  v7 = a1[6];
  v8 = a1[4];
  v10 = v7;
  v11 = v8;
  [v6 invokeBlock:v9];
}

- (void)_handleRuntimeStateUpdateNotification:(id)notification
{
  v4 = MEMORY[0x1E696AEC0];
  notificationCopy = notification;
  name = [notificationCopy name];
  identifier = [notificationCopy identifier];
  v9 = [v4 stringWithFormat:@"HomeManager-%@-%@", name, identifier];

  messagePayload = [notificationCopy messagePayload];

  [(HMHomeManager *)self _handleRuntimeStateUpdatePayload:messagePayload reason:v9];
}

- (void)_requestRuntimeUpdate:(id)update
{
  v21[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  context = [(HMHomeManager *)self context];
  if (updateCopy)
  {
    v20 = @"options";
    v21[0] = updateCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x1E69A2A10]);
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v10 = [v8 initWithTarget:uuid];
  v11 = [v7 initWithName:@"HMHM.rtsur" destination:v10 payload:v6];

  v12 = MEMORY[0x1E696AEC0];
  name = [v11 name];
  identifier = [v11 identifier];
  v15 = [v12 stringWithFormat:@"HomeManager-%@-%@", name, identifier];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__HMHomeManager__requestRuntimeUpdate___block_invoke;
  v18[3] = &unk_1E754E570;
  v18[4] = self;
  v19 = v15;
  v16 = v15;
  [v11 setResponseHandler:v18];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

id *__39__HMHomeManager__requestRuntimeUpdate___block_invoke(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] _handleRuntimeStateUpdatePayload:a3 reason:result[5]];
  }

  return result;
}

- (void)_handleRuntimeStateUpdatePayload:(id)payload reason:(id)reason
{
  v24 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  reasonCopy = reason;
  [(HMHomeManager *)self notifyDelegateOfBatchNotificationsStartWithReason:?];
  [(HMHomeManager *)self __handleHomeManagerState:payloadCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [payloadCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
        v14 = [(HMHomeManager *)self _homeWithUUID:v13];
        v15 = [payloadCopy hmf_dictionaryForKey:v12];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [v14 handleRuntimeStateUpdate:v15 reason:reasonCopy];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [(HMHomeManager *)self notifyDelegateOfBatchNotificationsEndWithReason:reasonCopy];
}

- (void)_writeCaches:(id)caches homeData:(BOOL)data metadata:(BOOL)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  v65 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  if (!dataCopy && !metadataCopy)
  {
    _HMFPreconditionFailure();
  }

  configuration = [(HMHomeManager *)self configuration];
  canWriteToCache = [configuration canWriteToCache];

  if (canWriteToCache)
  {
    homeCacheDir = [(HMHomeManager *)self homeCacheDir];
    if (homeCacheDir)
    {
      v56 = 0;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [defaultManager fileExistsAtPath:homeCacheDir isDirectory:&v56];

      if (v13)
      {
        if ((v56 & 1) == 0)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v17;
            v61 = 2112;
            v62 = homeCacheDir;
            _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@The cache location %@ is not a directory", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_33;
        }
      }

      else
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v55 = 0;
        v19 = [defaultManager2 createDirectoryAtPath:homeCacheDir withIntermediateDirectories:1 attributes:0 error:&v55];
        v20 = v55;

        if ((v19 & 1) == 0)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v60 = v23;
            v61 = 2112;
            v62 = homeCacheDir;
            v63 = 2112;
            v64 = v20;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to make directory %@ (%@).", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v21);
        }
      }

      if (dataCopy)
      {
        v24 = [cachesCopy mutableCopy];
        [v24 removeObjectForKey:@"kHAPMetadataDataKey"];
        v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
        v26 = MEMORY[0x1E696AEC0];
        configuration2 = [(HMHomeManager *)self configuration];
        v28 = [v26 stringWithFormat:@"%@/%@.%lu.%lu.%@", homeCacheDir, @"homeData", 5, objc_msgSend(configuration2, "options"), @"config"];

        v54 = 0;
        v49 = v25;
        LOBYTE(configuration2) = [v25 writeToFile:v28 options:1 error:&v54];
        v51 = v54;
        v29 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v31 = HMFGetOSLogHandle();
        v32 = v31;
        if (configuration2)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v33;
            v61 = 2112;
            v62 = v28;
            _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Wrote Home Configuration cache to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
        }

        else
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v34;
            v61 = 2112;
            v62 = v51;
            _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to write Home Configuration cache file with error %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          [(HMHomeManager *)selfCopy2 _removeCacheFiles];
        }
      }

      if (metadataCopy)
      {
        v35 = [cachesCopy hmf_dataForKey:@"kHAPMetadataDataKey"];
        v36 = [cachesCopy hmf_numberForKey:@"kHAPMetadataVersionKey"];
        v57[0] = @"kHAPMetadataDataKey";
        v57[1] = @"kHAPMetadataVersionKey";
        v50 = v36;
        v52 = v35;
        v58[0] = v35;
        v58[1] = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
        v38 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v37 requiringSecureCoding:1 error:0];
        v39 = MEMORY[0x1E696AEC0];
        homeCacheDir2 = [(HMHomeManager *)self homeCacheDir];
        v41 = [v39 stringWithFormat:@"%@/%@.%lu.%@", homeCacheDir2, @"metadata", 5, @"config"];

        v53 = 0;
        LOBYTE(v35) = [v38 writeToFile:v41 options:1 error:&v53];
        v42 = v53;
        v43 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v45 = HMFGetOSLogHandle();
        v46 = v45;
        if (v35)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v47;
            v61 = 2112;
            v62 = v41;
            _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Writing metadata cache to %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
        }

        else
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v48;
            v61 = 2112;
            v62 = v42;
            _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to write metadata cache file with error %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
          [(HMHomeManager *)selfCopy3 _removeCacheFiles];
        }
      }
    }

LABEL_33:
  }
}

- (void)_dumpCaches:(id)caches metadata:(id)metadata
{
  v60 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  metadataCopy = metadata;
  if (_dumpCaches_metadata__onceToken != -1)
  {
    dispatch_once(&_dumpCaches_metadata__onceToken, &__block_literal_global_763);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = cachesCopy;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
  v47 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    v11 = &unk_1EAFEF000;
    selfCopy = self;
    do
    {
      v12 = 0;
      v48 = v9;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        if ([v11[385] containsObject:{v13, metadataCopy}])
        {
          v14 = v10;
          v15 = [v7 valueForKey:v13];
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
            v18 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v17 length];
              *buf = 138543874;
              v54 = v21;
              v55 = 2112;
              v56 = v13;
              v57 = 2048;
              v58 = v22;
              _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@  %@ = <NSData: %lu bytes>", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v18);
            v10 = v14;
            v11 = &unk_1EAFEF000;
          }

          else
          {
            v23 = v15;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            context = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v27 = HMFGetOSLogHandle();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
            if (v25)
            {
              if (v28)
              {
                v29 = HMFGetLogIdentifier();
                v30 = [v25 count];
                *buf = 138543874;
                v54 = v29;
                v55 = 2112;
                v56 = v13;
                v57 = 2048;
                v58 = v30;
                _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@  %@ = <NSDictionary: %lu entries>", buf, 0x20u);

                v11 = &unk_1EAFEF000;
              }

              objc_autoreleasePoolPop(context);
              self = selfCopy;
              v10 = v14;
            }

            else
            {
              v10 = v14;
              if (v28)
              {
                v31 = HMFGetLogIdentifier();
                *buf = 138543874;
                v54 = v31;
                v55 = 2112;
                v56 = v13;
                v57 = 2112;
                v58 = v23;
                _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@  %@ = %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              self = selfCopy;
            }
          }

          v7 = v47;
          v9 = v48;
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v9);
  }

  v32 = metadataCopy;
  if (metadataCopy)
  {
    v33 = [metadataCopy hmf_numberForKey:@"kHAPMetadataVersionKey"];
    v34 = [metadataCopy hmf_dataForKey:@"kHAPMetadataDataKey"];
    v35 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v54 = v38;
      v55 = 2112;
      v56 = @"kHAPMetadataVersionKey";
      v57 = 2112;
      v58 = v33;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_INFO, "%{public}@  %@ = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy4;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [v34 length];
      *buf = 138543874;
      v54 = v42;
      v55 = 2112;
      v56 = @"kHAPMetadataDataKey";
      v57 = 2048;
      v58 = v43;
      _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_INFO, "%{public}@  %@ = <NSData: %lu bytes>", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    v32 = metadataCopy;
  }
}

void __38__HMHomeManager__dumpCaches_metadata___block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"kAccessAllowedWhenLockedKey";
  v2[1] = @"kCanUseCachedHomeConfigurationKey";
  v2[2] = @"kConfigGenerationCounterKey";
  v2[3] = @"kHAPMetadataVersionKey";
  v2[4] = @"kHomeCountKey";
  v2[5] = @"kHomeDataKey";
  v2[6] = @"kPrimaryHomeUUIDKey";
  v2[7] = @"dataSyncState";
  v2[8] = @"status";
  v2[9] = @"kProvisioningStatusKey";
  v2[10] = @"multiUserStatus";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:11];
  v1 = _dumpCaches_metadata__keysToDump;
  _dumpCaches_metadata__keysToDump = v0;
}

- (BOOL)_isValidCachedHomeConfiguration:(id)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (_isValidCachedHomeConfiguration__onceToken != -1)
  {
    dispatch_once(&_isValidCachedHomeConfiguration__onceToken, &__block_literal_global_761);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = _isValidCachedHomeConfiguration__requiredKeys;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [configurationCopy objectForKey:{v10, v24}];

        if (!v11)
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v29 = v18;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Cached home configuration does not contain required key '%@' - discarding cache", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          goto LABEL_16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [configurationCopy hmf_dataForKey:@"kHomeDataKey"];
  v13 = [v12 length];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Cached home configuration contains zero length Home Data - discarding cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
LABEL_16:
    v14 = 0;
  }

  return v14;
}

void __49__HMHomeManager__isValidCachedHomeConfiguration___block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"kConfigGenerationCounterKey";
  v2[1] = @"kHAPMetadataVersionKey";
  v2[2] = @"kIdentifierSaltKey";
  v2[3] = @"kAccessAllowedWhenLockedKey";
  v2[4] = @"kHomeCountKey";
  v2[5] = @"kHomeDataKey";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = _isValidCachedHomeConfiguration__requiredKeys;
  _isValidCachedHomeConfiguration__requiredKeys = v0;
}

- (void)_removeCacheFileAtPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [defaultManager removeItemAtPath:pathCopy error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = pathCopy;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove cache file %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_removeCacheFiles
{
  v38 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  homeCacheDir = [(HMHomeManager *)self homeCacheDir];
  v32 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:homeCacheDir error:&v32];
  v6 = v32;

  if (v5)
  {
    v25 = v6;
    v7 = MEMORY[0x1E696AEC0];
    configuration = [(HMHomeManager *)self configuration];
    v27 = [v7 stringWithFormat:@"%lu.%@", objc_msgSend(configuration, "options"), @"config"];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v29;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v14 hasPrefix:@"homeData"] && objc_msgSend(v14, "hasSuffix:", v27))
        {
          homeCacheDir2 = [(HMHomeManager *)self homeCacheDir];
          v16 = [homeCacheDir2 stringByAppendingPathComponent:v14];

          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v20;
            v35 = 2112;
            v36 = v16;
            v21 = v19;
            v22 = "%{public}@Removing home data cache file: %@";
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        if ([v14 hasPrefix:@"metadata"] && objc_msgSend(v14, "hasSuffix:", @"config"))
        {
          homeCacheDir3 = [(HMHomeManager *)self homeCacheDir];
          v16 = [homeCacheDir3 stringByAppendingPathComponent:v14];

          v17 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v20;
            v35 = 2112;
            v36 = v16;
            v21 = v19;
            v22 = "%{public}@Removing metadata cache file: %@";
LABEL_15:
            _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, v22, buf, 0x16u);
          }

LABEL_16:

          objc_autoreleasePoolPop(v17);
          [(HMHomeManager *)self _removeCacheFileAtPath:v16];

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (!v11)
      {
LABEL_19:

        v6 = v25;
        v5 = v26;
        break;
      }
    }
  }
}

- (void)_determineCacheFiles
{
  v89 = *MEMORY[0x1E69E9840];
  homeCacheDir = [(HMHomeManager *)self homeCacheDir];

  if (homeCacheDir)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    homeCacheDir2 = [(HMHomeManager *)self homeCacheDir];
    v6 = [defaultManager fileExistsAtPath:homeCacheDir2];

    if ((v6 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      homeCacheDir3 = [(HMHomeManager *)self homeCacheDir];
      v79 = 0;
      v9 = [defaultManager2 createDirectoryAtPath:homeCacheDir3 withIntermediateDirectories:1 attributes:0 error:&v79];
      v10 = v79;

      if ((v9 & 1) == 0)
      {
        v61 = objc_autoreleasePoolPush();
        selfCopy = self;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v64 = HMFGetLogIdentifier();
          homeCacheDir4 = [(HMHomeManager *)selfCopy homeCacheDir];
          *buf = 138543874;
          v81 = v64;
          v82 = 2112;
          v83 = homeCacheDir4;
          v84 = 2112;
          v85 = v10;
          _os_log_impl(&dword_19BB39000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to create directory %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v61);
LABEL_43:

        return;
      }
    }

    homeCacheDir5 = [(HMHomeManager *)self homeCacheDir];
    v78 = 0;
    v12 = [defaultManager contentsOfDirectoryAtPath:homeCacheDir5 error:&v78];
    v10 = v78;

    if (v12)
    {
      v67 = v10;
      v68 = defaultManager;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v66 = v12;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = v14;
      selfCopy2 = self;
      v17 = *v75;
      selfCopy3 = self;
      v73 = v13;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v75 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v74 + 1) + 8 * i);
          v20 = [v19 componentsSeparatedByString:@"."];
          lastObject = [v20 lastObject];
          v22 = [lastObject isEqualToString:@"config"];

          if (v22)
          {
            firstObject = [v20 firstObject];
            v24 = [firstObject isEqualToString:@"homeData"];

            if (v24)
            {
              if ([v20 count] < 4)
              {
                goto LABEL_33;
              }

              v25 = [v20 objectAtIndexedSubscript:2];
              v26 = MEMORY[0x1E696AEC0];
              configuration = [(HMHomeManager *)selfCopy2 configuration];
              v28 = [v26 stringWithFormat:@"%lu", objc_msgSend(configuration, "options")];
              v29 = [v25 isEqualToString:v28];

              if (v29)
              {
                v30 = [v20 objectAtIndexedSubscript:1];
                integerValue = [v30 integerValue];
                homeCacheDir6 = [(HMHomeManager *)selfCopy2 homeCacheDir];
                v33 = [homeCacheDir6 stringByAppendingPathComponent:v19];
                if (integerValue == 5)
                {
                  [(HMHomeManager *)selfCopy2 setHomeDataCache:v33];

                  v34 = objc_autoreleasePoolPush();
                  v35 = selfCopy2;
                  v36 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    v37 = HMFGetLogIdentifier();
                    [(HMHomeManager *)v35 homeDataCache];
                    v38 = contextb = v34;
                    *buf = 138543618;
                    v81 = v37;
                    v82 = 2112;
                    v83 = v38;
                    _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Determined home data cache file: %@", buf, 0x16u);

                    v34 = contextb;
                    selfCopy2 = selfCopy3;
                  }

                  objc_autoreleasePoolPop(v34);
                }

                else
                {

                  context = objc_autoreleasePoolPush();
                  v50 = selfCopy2;
                  v51 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                  {
                    v52 = HMFGetLogIdentifier();
                    *buf = 138544130;
                    v81 = v52;
                    v82 = 2112;
                    v83 = v30;
                    v84 = 2048;
                    v85 = 5;
                    v86 = 2112;
                    v87 = v33;
                    _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_INFO, "%{public}@Removing home data cache file with version %@ not equal to current version %ld: %@", buf, 0x2Au);

                    selfCopy2 = selfCopy3;
                  }

                  objc_autoreleasePoolPop(context);
                  [(HMHomeManager *)v50 _removeCacheFileAtPath:v33];
                }
              }

              goto LABEL_32;
            }

            firstObject2 = [v20 firstObject];
            v40 = [firstObject2 isEqualToString:@"metadata"];

            if (v40 && [v20 count] >= 3)
            {
              v25 = [v20 objectAtIndexedSubscript:1];
              v41 = selfCopy2;
              integerValue2 = [v25 integerValue];
              homeCacheDir7 = [(HMHomeManager *)v41 homeCacheDir];
              v44 = [homeCacheDir7 stringByAppendingPathComponent:v19];
              if (integerValue2 == 5)
              {
                [(HMHomeManager *)v41 setMetadataCache:v44];

                v45 = objc_autoreleasePoolPush();
                v46 = v41;
                v47 = HMFGetOSLogHandle();
                selfCopy2 = v41;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = HMFGetLogIdentifier();
                  metadataCache = [(HMHomeManager *)v46 metadataCache];
                  *buf = 138543618;
                  v81 = v48;
                  v82 = 2112;
                  v83 = metadataCache;
                  _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Determined metadata cache file: %@", buf, 0x16u);

                  selfCopy2 = selfCopy3;
                }

                objc_autoreleasePoolPop(v45);
              }

              else
              {

                contexta = objc_autoreleasePoolPush();
                v53 = v41;
                v54 = HMFGetOSLogHandle();
                selfCopy2 = v41;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  v55 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v81 = v55;
                  v82 = 2112;
                  v83 = v25;
                  v84 = 2048;
                  v85 = 5;
                  v86 = 2112;
                  v87 = v44;
                  _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Removing metadata cache file with version %@ not equal to current version %ld: %@", buf, 0x2Au);

                  selfCopy2 = selfCopy3;
                }

                objc_autoreleasePoolPop(contexta);
                [(HMHomeManager *)v53 _removeCacheFileAtPath:v44];
              }

LABEL_32:
              v13 = v73;
            }
          }

LABEL_33:
        }

        v15 = [v13 countByEnumeratingWithState:&v74 objects:v88 count:16];
        if (!v15)
        {
LABEL_35:

          v10 = v67;
          defaultManager = v68;
          v12 = v66;
          goto LABEL_39;
        }
      }
    }

    v56 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      homeCacheDir8 = [(HMHomeManager *)selfCopy4 homeCacheDir];
      *buf = 138543874;
      v81 = v59;
      v82 = 2112;
      v83 = homeCacheDir8;
      v84 = 2112;
      v85 = v10;
      _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to enumerate the contents of cache directory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v56);
LABEL_39:

    goto LABEL_43;
  }
}

- (BOOL)_shouldWeMergeLatestHomeGraphFromDaemonResponse:(id)response
{
  v3 = [(HMHomeManager *)self _dataSyncStateFromPayload:response];
  if (HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken != -1)
  {
    dispatch_once(&HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken, &__block_literal_global_164);
  }

  if (HMIsCurrentProcessSPIEntitled_spiEntitled)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFDLL;
  }

  return v4 == 1;
}

- (void)_processHomeConfigurationResponse:(id)response refreshRequested:(BOOL)requested
{
  requestedCopy = requested;
  v197 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v130 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Process home configuration"];
  v133 = responseCopy;
  v137 = [responseCopy hmf_numberForKey:@"kConfigGenerationCounterKey"];
  v132 = [responseCopy hmf_numberForKey:@"kHAPMetadataVersionKey"];
  v7 = [responseCopy hmf_dataForKey:@"kIdentifierSaltKey"];
  v131 = v7;
  if (v137)
  {
    v8 = v132 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && v7 != 0;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v137;
      *&buf[22] = 2112;
      v195 = v132;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Processing home configuration response with generation counter: %@ metadata version: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMHomeManager *)selfCopy _handleHH2StateWithPayload:v133];
    [(HMHomeManager *)selfCopy _handleHH2ManualMigrationEnabledStateWithPayload:v133];
    [(HMHomeManager *)selfCopy _handleHomeSafetySecurityEnabledStateWithPayload:v133];
    [(HMHomeManager *)selfCopy _handleHH2UpgradeRecommendationRequired:v133];
    [(HMHomeManager *)selfCopy _handleHH2MigrationProgressStateWithPayload:v133];
    [MEMORY[0x1E696AFB0] hm_setIdentifierSalt:v131];
    v129 = [v133 hmf_dataForKey:@"HMHM.assistantIdentifier"];
    if (v129 && [MEMORY[0x1E696AFB0] hm_setAssistantIdentifierSalt:v129])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v129;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Assistant identifier salt changed to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMHomeManager *)v16 _recomputeAssistantIdentifiers];
    }

    if (([(HMHomeManager *)selfCopy options]& 0x9701) != 0)
    {
      unsignedIntegerValue = [v132 unsignedIntegerValue];
      if (unsignedIntegerValue > [(HMHomeManager *)selfCopy metadataVersion])
      {
        -[HMHomeManager setMetadataVersion:](selfCopy, "setMetadataVersion:", [v132 unsignedIntegerValue]);
        v20 = [v133 hmf_dataForKey:@"kHAPMetadataDataKey"];
        if (v20)
        {
          v21 = +[HMHAPMetadata getSharedInstance];
          [v21 applyProtoBufData:v20];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = HMHomeManagerOptionsToString([(HMHomeManager *)v24 options]);
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Client has not requested access to HAP accessories (options %@) - dropping synced metadata", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }

    unsignedIntegerValue2 = [v137 unsignedIntegerValue];
    if (unsignedIntegerValue2 == [(HMHomeManager *)selfCopy generationCounter])
    {
      if (requestedCopy)
      {
        [(HMHomeManager *)selfCopy _requestRefresh];
      }
    }

    else
    {
      -[HMHomeManager setGenerationCounter:](selfCopy, "setGenerationCounter:", [v137 unsignedIntegerValue]);
      context = objc_autoreleasePoolPush();
      v127 = [v133 hmf_dataForKey:@"kHomeDataKey"];
      v124 = [v133 hmf_UUIDForKey:@"kPrimaryHomeUUIDKey"];
      v126 = [v133 hmf_UUIDForKey:@"kCurrentHomeUUIDKey"];
      v128 = [v133 hmf_UUIDForKey:@"HMHM.lastRemovedCurrentAccessory"];
      if (v127)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v195 = __Block_byref_object_copy__33380;
        *&v196 = __Block_byref_object_dispose__33381;
        *(&v196 + 1) = 0;
        v179 = 0;
        v180 = &v179;
        v181 = 0x3032000000;
        v182 = __Block_byref_object_copy__33380;
        v183 = __Block_byref_object_dispose__33381;
        v184 = 0;
        v29 = MEMORY[0x1E69A29C0];
        v174[0] = MEMORY[0x1E69E9820];
        v174[1] = 3221225472;
        v174[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke;
        v174[3] = &unk_1E754A9D8;
        v30 = v127;
        v177 = &v179;
        v178 = buf;
        v175 = v30;
        v176 = selfCopy;
        [v29 activityWithName:@"Unarchive homes" block:v174];
        v31 = v180[5];
        if (v31)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            v36 = v180[5];
            *v190 = 138543618;
            v191 = v35;
            v192 = 2112;
            v193 = v36;
            _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize homes from home configuration data: %@", v190, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          v125 = 0;
        }

        else
        {
          v37 = *(*&buf[8] + 40);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }

          v125 = v38;
        }

        _Block_object_dispose(&v179, 8);
        _Block_object_dispose(buf, 8);

        if (v31)
        {

          objc_autoreleasePoolPop(context);
LABEL_124:

          goto LABEL_125;
        }
      }

      else
      {
        v125 = 0;
      }

      v122 = [v133 hmf_dataForKey:@"kIncomingHomeInvitationsKey"];
      if (v122)
      {
        v39 = MEMORY[0x1E695DFD8];
        v189[0] = objc_opt_class();
        v189[1] = objc_opt_class();
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:2];
        v41 = [v39 setWithArray:v40];

        v173 = 0;
        v42 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v41 fromData:v122 error:&v173];
        v43 = v173;
        if (!v42)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v47;
            *&buf[12] = 2112;
            *&buf[14] = v43;
            _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive incoming home invitations from encoded invites data: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v44);
        }

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v123 = v42;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = v123;
        }

        else
        {
          v48 = 0;
        }

        v49 = v48;

        v50 = [v49 countByEnumeratingWithState:&v169 objects:v188 count:16];
        if (v50)
        {
          v51 = *v170;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v170 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = *(*(&v169 + 1) + 8 * i);
              context = [(HMHomeManager *)selfCopy context];
              [v53 __configureWithContext:context homeManager:selfCopy];
            }

            v50 = [v49 countByEnumeratingWithState:&v169 objects:v188 count:16];
          }

          while (v50);
        }
      }

      else
      {
        v123 = 0;
      }

      v55 = [v133 hmf_dictionaryForKey:@"kAppDataInformationKey"];
      v56 = v55;
      v57 = MEMORY[0x1E695E0F8];
      if (v55)
      {
        v57 = v55;
      }

      v120 = v57;

      v119 = [[HMApplicationData alloc] initWithDictionary:v120];
      if ([(HMHomeManager *)selfCopy isInitialMergeComplete])
      {
        if ([(HMHomeManager *)selfCopy _shouldWeMergeLatestHomeGraphFromDaemonResponse:v133])
        {
          v58 = MEMORY[0x1E69A29C0];
          v162[0] = MEMORY[0x1E69E9820];
          v162[1] = 3221225472;
          v162[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_740;
          v162[3] = &unk_1E754AA00;
          v162[4] = selfCopy;
          v163 = v125;
          v164 = v124;
          v165 = v126;
          v166 = v123;
          v167 = v119;
          v168 = requestedCopy;
          [v58 activityWithName:@"Merge homes" block:v162];
        }

        else
        {
          v64 = objc_autoreleasePoolPush();
          v65 = selfCopy;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            v68 = HMHomeManagerDataSyncStateToString([(HMHomeManager *)v65 _dataSyncStateFromPayload:v133]);
            *buf = 138543618;
            *&buf[4] = v67;
            *&buf[12] = 2112;
            *&buf[14] = v68;
            _os_log_impl(&dword_19BB39000, v66, OS_LOG_TYPE_INFO, "%{public}@Skipping framework merge as data sync state is %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v64);
        }
      }

      else
      {
        v59 = objc_autoreleasePoolPush();
        v60 = selfCopy;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v62;
          *&buf[12] = 2112;
          *&buf[14] = v125;
          *&buf[22] = 2112;
          v195 = v126;
          _os_log_impl(&dword_19BB39000, v61, OS_LOG_TYPE_INFO, "%{public}@Updating homes: %@, Current home UUID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v59);
        v63 = MEMORY[0x1E69A29C0];
        v155[0] = MEMORY[0x1E69E9820];
        v155[1] = 3221225472;
        v155[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_744;
        v155[3] = &unk_1E754AA28;
        v156 = v125;
        v157 = v124;
        v158 = v60;
        v159 = v123;
        v160 = v119;
        v161 = v126;
        [v63 activityWithName:@"Update homes" block:v155];
      }

      predictionProvider = [(HMHomeManager *)selfCopy predictionProvider];
      [predictionProvider recalculatePredictions];

      [(HMHomeManager *)selfCopy setGenerationCounterPostHomeGraphUpdate:[(HMHomeManager *)selfCopy generationCounter]];
      os_unfair_lock_lock_with_options();
      if (([(NSUUID *)selfCopy->_lastRemovedCurrentAccessoryUUID hmf_isEqualToUUID:v128]& 1) != 0)
      {
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        v70 = [v128 copy];
        lastRemovedCurrentAccessoryUUID = selfCopy->_lastRemovedCurrentAccessoryUUID;
        selfCopy->_lastRemovedCurrentAccessoryUUID = v70;

        v72 = selfCopy->_lastRemovedCurrentAccessoryUUID;
        os_unfair_lock_unlock(&selfCopy->_lock);
        if (v72)
        {
          v73 = objc_autoreleasePoolPush();
          v74 = selfCopy;
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = HMFGetLogIdentifier();
            lastRemovedCurrentAccessoryUUID = [(HMHomeManager *)v74 lastRemovedCurrentAccessoryUUID];
            *buf = 138543618;
            *&buf[4] = v76;
            *&buf[12] = 2112;
            *&buf[14] = lastRemovedCurrentAccessoryUUID;
            _os_log_impl(&dword_19BB39000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@Merged current accessory removal %@.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v73);
          _privateDelegate = [(HMHomeManager *)v74 _privateDelegate];
          if (objc_opt_respondsToSelector())
          {
            context2 = [(HMHomeManager *)v74 context];
            queue = [context2 queue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_746;
            block[3] = &unk_1E754E5C0;
            block[4] = v74;
            v154 = _privateDelegate;
            dispatch_async(queue, block);
          }
        }
      }

      v136 = [v133 hmf_arrayForKey:@"HMHM.SharedHomeUUIDsNotYetMigrated"];
      v135 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](selfCopy->_sharedHomeUUIDsNotYetMigrated, "count")}];
      os_unfair_lock_lock_with_options();
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v81 = selfCopy->_sharedHomeUUIDsNotYetMigrated;
      v82 = [(NSArray *)v81 countByEnumeratingWithState:&v149 objects:v187 count:16];
      if (v82)
      {
        v83 = *v150;
        do
        {
          for (j = 0; j != v82; ++j)
          {
            if (*v150 != v83)
            {
              objc_enumerationMutation(v81);
            }

            v85 = *(*(&v149 + 1) + 8 * j);
            v86 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v85];
            v87 = [(HMHomeManager *)selfCopy _homeWithUUID:v86];

            if (v85)
            {
              v88 = v87 == 0;
            }

            else
            {
              v88 = 0;
            }

            if (v88 && ([v136 containsObject:v85] & 1) == 0)
            {
              [v135 addObject:v85];
              v89 = objc_autoreleasePoolPush();
              v90 = selfCopy;
              v91 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                v92 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v92;
                *&buf[12] = 2112;
                *&buf[14] = v85;
                _os_log_impl(&dword_19BB39000, v91, OS_LOG_TYPE_INFO, "%{public}@Home %@ has been removed permanently.", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v89);
            }
          }

          v82 = [(NSArray *)v81 countByEnumeratingWithState:&v149 objects:v187 count:16];
        }

        while (v82);
      }

      v93 = [v136 copy];
      sharedHomeUUIDsNotYetMigrated = selfCopy->_sharedHomeUUIDsNotYetMigrated;
      selfCopy->_sharedHomeUUIDsNotYetMigrated = v93;

      os_unfair_lock_unlock(&selfCopy->_lock);
      if ([v135 count])
      {
        _privateDelegate2 = [(HMHomeManager *)selfCopy _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          obj = v135;
          v96 = [obj countByEnumeratingWithState:&v145 objects:v186 count:16];
          if (v96)
          {
            v97 = *v146;
            do
            {
              for (k = 0; k != v96; ++k)
              {
                if (*v146 != v97)
                {
                  objc_enumerationMutation(obj);
                }

                v99 = *(*(&v145 + 1) + 8 * k);
                context3 = [(HMHomeManager *)selfCopy context];
                queue2 = [context3 queue];
                v143[0] = MEMORY[0x1E69E9820];
                v143[1] = 3221225472;
                v143[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_748;
                v143[3] = &unk_1E754E5E8;
                v143[4] = selfCopy;
                v143[5] = v99;
                v144 = _privateDelegate2;
                dispatch_async(queue2, v143);
              }

              v96 = [obj countByEnumeratingWithState:&v145 objects:v186 count:16];
            }

            while (v96);
          }
        }
      }

      objc_autoreleasePoolPop(context);
    }

    v102 = [v133 hmf_numberForKey:@"status"];
    v103 = objc_autoreleasePoolPush();
    v104 = selfCopy;
    v105 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = HMFGetLogIdentifier();
      v107 = HMHomeManagerStatusToString([v102 unsignedIntegerValue]);
      *buf = 138543618;
      *&buf[4] = v106;
      *&buf[12] = 2112;
      *&buf[14] = v107;
      _os_log_impl(&dword_19BB39000, v105, OS_LOG_TYPE_DEFAULT, "%{public}@HomeManager status from daemon is %@ after fetch/merge. Marking framework merge completed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v103);
    [v104 _updateStatusWithPayload:v133 sourceIsFetch:1];
    serverGenerationCounter = [v104 serverGenerationCounter];
    if ([v137 unsignedIntegerValue] == serverGenerationCounter)
    {
      v109 = objc_autoreleasePoolPush();
      v110 = v104;
      v111 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v112;
        _os_log_impl(&dword_19BB39000, v111, OS_LOG_TYPE_INFO, "%{public}@The framework is in sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v109);
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v113 = v104[4];
    v114 = [v113 countByEnumeratingWithState:&v139 objects:v185 count:16];
    if (v114)
    {
      v115 = *v140;
      do
      {
        for (m = 0; m != v114; ++m)
        {
          if (*v140 != v115)
          {
            objc_enumerationMutation(v113);
          }

          v117 = *(*(&v139 + 1) + 8 * m);
          unsignedIntegerValue3 = [v137 unsignedIntegerValue];
          if (unsignedIntegerValue3 >= [v117 generationCounter])
          {
            [v117 finish];
          }
        }

        v114 = [v113 countByEnumeratingWithState:&v139 objects:v185 count:16];
      }

      while (v114);
    }

    [v104 __handleHomeManagerState:v133];
    [v130 invalidate];

    goto LABEL_124;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544130;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v137;
    *&buf[22] = 2112;
    v195 = v132;
    LOWORD(v196) = 2112;
    *(&v196 + 2) = v131;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot process home configuration response missing generation counter (%@) or metadata version (%@) or identifier salt (%@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
LABEL_125:
}

void __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke(uint64_t a1)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = objc_alloc(MEMORY[0x1E696ACD0]);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v5 initForReadingFromData:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  [v8 _allowDecodingCyclesInSecureMode];
  v9 = *MEMORY[0x1E696A508];
  v10 = *(*(a1 + 48) + 8);
  v19 = *(v10 + 40);
  v11 = [v8 decodeTopLevelObjectOfClasses:v4 forKey:v9 error:&v19];
  objc_storeStrong((v10 + 40), v19);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive homes from home data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

uint64_t __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_744(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 uuid];
        [v7 setPrimary:{objc_msgSend(v8, "isEqual:", *(a1 + 40))}];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 48) homeInvitations];
  [v9 setArray:*(a1 + 56)];

  [*(a1 + 48) _updateAppData:*(a1 + 64)];
  [*(a1 + 48) _setInitialHomes:*(a1 + 32)];
  return [*(a1 + 48) _updateCurrentHome:*(a1 + 72)];
}

void __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_746(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_748(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_2_749;
  v4[3] = &unk_1E754E5E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 invokeBlock:v4];
}

void __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_2_749(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying client that home: %@ has been removed permanently.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 40)];
  [v7 homeManager:v8 didRemoveHomePermanently:v9];
}

uint64_t __68__HMHomeManager__processHomeConfigurationResponse_refreshRequested___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying client that current accessory was removed.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) homeManagerDidRemoveCurrentAccessory:*(a1 + 32)];
}

- (void)_handleHH2UpgradeRecommendationRequired:(id)required
{
  v16 = *MEMORY[0x1E69E9840];
  requiredCopy = required;
  v5 = [requiredCopy hmf_BOOLForKey:@"HMHM.shouldPostHH2UpgradeRequired"];
  if (v5 != [(HMHomeManager *)self shouldPostHH2UpgradeRequired])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543874;
      v11 = v9;
      v12 = 1024;
      shouldPostHH2UpgradeRequired = [(HMHomeManager *)selfCopy shouldPostHH2UpgradeRequired];
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@shouldPostHH2UpgradeRequired from %{BOOL}d to %{BOOL}d", &v10, 0x18u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMHomeManager *)selfCopy setShouldPostHH2UpgradeRequired:v5];
  }
}

- (void)_handleHomeSafetySecurityEnabledStateWithPayload:(id)payload
{
  v29 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_BOOLForKey:@"HMHM.homeSafetySecurityEnabled"];
  if (v5 != [(HMHomeManager *)self homeSafetySecurityEnabled])
  {
    [(HMHomeManager *)self setHomeSafetySecurityEnabled:v5];
    delegate = [(HMHomeManager *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        [(HMHomeManager *)selfCopy homeSafetySecurityEnabled];
        v13 = HMFBooleanToString();
        *buf = 138543618;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client about updated Home Safety and Security enablement state : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      context = [(HMHomeManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__HMHomeManager__handleHomeSafetySecurityEnabledStateWithPayload___block_invoke;
      v21[3] = &unk_1E754DC70;
      v22 = v8;
      v23 = selfCopy;
      v24 = v5;
      [delegateCaller invokeBlock:v21];
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      [(HMHomeManager *)selfCopy2 homeSafetySecurityEnabled];
      v20 = HMFBooleanToString();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Daemon Home Safety and Security status: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)_handleHH2ManualMigrationEnabledStateWithPayload:(id)payload
{
  v34 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_BOOLForKey:@"HMHM.hh2ManualMigrationEnabled"];
  if (v5 == [(HMHomeManager *)self isHH2MigrationAvailable])
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      [(HMHomeManager *)selfCopy isHH2MigrationAvailable];
      v25 = HMFBooleanToString();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@isHH2MigrationAvailable didn't change. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    [(HMHomeManager *)self setIsHH2MigrationAvailable:v5];
    delegate = [(HMHomeManager *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        [(HMHomeManager *)selfCopy2 isHH2MigrationAvailable];
        v13 = HMFBooleanToString();
        *buf = 138543618;
        v31 = v12;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client about updated HH2 migration enablement : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      context = [(HMHomeManager *)selfCopy2 context];
      delegateCaller = [context delegateCaller];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__HMHomeManager__handleHH2ManualMigrationEnabledStateWithPayload___block_invoke;
      v26[3] = &unk_1E754DC70;
      v27 = v8;
      v28 = selfCopy2;
      v29 = v5;
      [delegateCaller invokeBlock:v26];
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      [(HMHomeManager *)selfCopy3 isHH2MigrationAvailable];
      v20 = HMFBooleanToString();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Daemon HH2 migration enabled status: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)_handleHH2MigrationProgressStateWithPayload:(id)payload
{
  v36 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_BOOLForKey:@"HMHM.HH2MigrationInProgress"];
  v6 = [payloadCopy hmf_errorForKey:@"HMHM.HH2MigrationFailedError"];
  [(HMHomeManager *)self setHh2MigrationFailedError:v6];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [(HMHomeManager *)selfCopy isHH2MigrationInProgress];
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    hh2MigrationFailedError = [(HMHomeManager *)selfCopy hh2MigrationFailedError];
    *buf = 138544130;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = hh2MigrationFailedError;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@>>> MIP: %@, new MIP: %@, error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5 != [(HMHomeManager *)selfCopy isHH2MigrationInProgress])
  {
    [(HMHomeManager *)selfCopy setHh2MigrationInProgress:v5];
    delegate = [(HMHomeManager *)selfCopy delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v15 = delegate;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (objc_opt_respondsToSelector())
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        [(HMHomeManager *)v18 isHH2MigrationInProgress];
        v21 = HMFBooleanToString();
        *buf = 138543618;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Notifying client of HH2 migration updated status : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      context = [(HMHomeManager *)v18 context];
      delegateCaller = [context delegateCaller];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __61__HMHomeManager__handleHH2MigrationProgressStateWithPayload___block_invoke;
      v24[3] = &unk_1E754DC70;
      v25 = v16;
      v26 = v18;
      v27 = v5;
      [delegateCaller invokeBlock:v24];
    }
  }
}

- (void)_handleHH2StateWithPayload:(id)payload
{
  v29 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  -[HMHomeManager setDaemonRunningWithROARFramework:](self, "setDaemonRunningWithROARFramework:", [payloadCopy hmf_BOOLForKey:@"HMHM.daemonROARFramework"]);
  v5 = [payloadCopy hmf_BOOLForKey:@"HMHM.userOptedToHH2"];
  if (v5 != [(HMHomeManager *)self hasOptedToHH2])
  {
    [(HMHomeManager *)self setMigrationBoost:0];
    [(HMHomeManager *)self setHasOptedToHH2:v5];
    delegate = [(HMHomeManager *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        [(HMHomeManager *)selfCopy hasOptedToHH2];
        v13 = HMFBooleanToString();
        *buf = 138543618;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of HH2 updated status : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      context = [(HMHomeManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __44__HMHomeManager__handleHH2StateWithPayload___block_invoke;
      v21[3] = &unk_1E754DC70;
      v22 = v8;
      v23 = selfCopy;
      v24 = v5;
      [delegateCaller invokeBlock:v21];
    }
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    [(HMHomeManager *)selfCopy2 isDaemonRunningWithROARFramework];
    v20 = HMFBooleanToString();
    *buf = 138543618;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Daemon HH2 status: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
}

- (void)_recomputeAssistantIdentifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  homes = [(HMHomeManager *)self homes];
  v5 = [homes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__HMHomeManager__recomputeAssistantIdentifiers__block_invoke;
        v15[3] = &unk_1E754E2A8;
        v16 = v3;
        [v9 recomputeAssistantIdentifiersWithCompletion:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [homes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  context = [(HMHomeManager *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__HMHomeManager__recomputeAssistantIdentifiers__block_invoke_2;
  block[3] = &unk_1E754E5C0;
  block[4] = self;
  v14 = context;
  v12 = context;
  dispatch_group_notify(v3, queue, block);
}

void __47__HMHomeManager__recomputeAssistantIdentifiers__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying client of assistant identifier update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 40) delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__HMHomeManager__recomputeAssistantIdentifiers__block_invoke_722;
    v10[3] = &unk_1E754E5C0;
    v8 = v2;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v7 invokeBlock:v10];
  }
}

- (void)__handleHomeManagerState:(id)state
{
  v23 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v18 = 0;
  v5 = [stateCopy hmf_BOOLForKey:@"kResidentCapableDeviceKey" isPresent:&v18];
  if (v18 == 1)
  {
    v6 = v5;
    if (v5 != [(HMHomeManager *)self isThisDeviceResidentCapable])
    {
      [(HMHomeManager *)self setThisDeviceResidentCapable:v6];
      [(HMHomeManager *)self notifyResidentCapableUpdated:v6];
    }
  }

  v18 = 0;
  v7 = [stateCopy hmf_BOOLForKey:@"kResidentEnabledKey" isPresent:&v18];
  if (v18 == 1)
  {
    v8 = v7;
    if (v7 != [(HMHomeManager *)self isResidentEnabledForThisDevice])
    {
      [(HMHomeManager *)self setResidentEnabledForThisDevice:v8];
      [(HMHomeManager *)self notifyResidentEnabledUpdated:v8];
    }
  }

  v18 = 0;
  v9 = [stateCopy hmf_BOOLForKey:@"kAccessAllowedWhenLockedKey" isPresent:&v18];
  if (v18 == 1)
  {
    v10 = v9;
    if (v9 != [(HMHomeManager *)self isAccessAllowedWhenLocked])
    {
      [(HMHomeManager *)self setAccessAllowedWhenLocked:v10];
      [(HMHomeManager *)self _notifyAccessAllowedWhenLockedUpdated:v10];
    }
  }

  v18 = 0;
  v11 = [stateCopy hmf_UUIDForKey:@"kCurrentHomeUUIDKey"];
  if (v11 || (v12 = [stateCopy hmf_BOOLForKey:@"kNoCurrentHomeKey" isPresent:&v18], v18 == 1) && v12)
  {
    [(HMHomeManager *)self _updateCurrentHome:v11];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      currentHome = [(HMHomeManager *)selfCopy currentHome];
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = currentHome;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Updated current home: %@ due to home manager state", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)__processSyncResponse:(id)response refreshRequested:(BOOL)requested completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __processSyncResponse:refreshRequested:completionHandler:]", @"completionHandler"];
    v17 = v16 = self;
    v18 = objc_autoreleasePoolPush();
    v19 = v16;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v10 = handlerCopy;
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HMHomeManager___processSyncResponse_refreshRequested_completionHandler___block_invoke;
  block[3] = &unk_1E754A988;
  v24 = responseCopy;
  selfCopy = self;
  requestedCopy = requested;
  v26 = context;
  v27 = v10;
  v13 = v10;
  v14 = context;
  v15 = responseCopy;
  dispatch_async(queue, block);
}

void __74__HMHomeManager___processSyncResponse_refreshRequested_completionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hmf_numberForKey:@"kProvisioningStatusKey"];
  v3 = v2;
  v4 = &unk_1F0EFD0A0;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  [*(a1 + 40) _setResidentProvisioningStatus:{objc_msgSend(v5, "integerValue")}];
  v6 = [*(a1 + 32) hmf_BOOLForKey:@"kCanCacheHomeConfigurationKey"];
  v7 = [*(a1 + 32) hmf_dataForKey:@"kHomeDataKey"];
  v8 = v7 != 0;

  v9 = [*(a1 + 32) hmf_BOOLForKey:@"kCanCacheHomeConfigurationKey"];
  if (([*(a1 + 40) options] & 0x9701) != 0)
  {
    v10 = [*(a1 + 32) valueForKey:@"kHAPMetadataDataKey"];
    v11 = (v10 != 0) & v9;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMHomeManagerOptionsToString([*(a1 + 40) options]);
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Client has not requested access to HAP accessories (options %@) - not going to write synced metadata to cache", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v17 = v8 & v6;
  if ([*(a1 + 32) hmf_BOOLForKey:@"runtime-update"])
  {
    v18 = [*(a1 + 32) hmf_numberForKey:@"options"];
    [*(a1 + 40) _requestRuntimeUpdate:v18];
  }

  if ((v17 | v11))
  {
    v19 = [*(a1 + 48) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__HMHomeManager___processSyncResponse_refreshRequested_completionHandler___block_invoke_719;
    block[3] = &unk_1E754A960;
    v23 = *(a1 + 32);
    v20 = v23.i64[0];
    v25 = vextq_s8(v23, v23, 8uLL);
    v26 = v17;
    v27 = v11;
    dispatch_async(v19, block);
  }

  v21 = objc_autoreleasePoolPush();
  [*(a1 + 40) _processHomeConfigurationResponse:*(a1 + 32) refreshRequested:*(a1 + 64)];
  objc_autoreleasePoolPop(v21);
  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }
}

- (void)_fetchHomeConfigurationWithRefreshRequested:(BOOL)requested completion:(id)completion
{
  requestedCopy = requested;
  v49 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  if (([(HMHomeManager *)self authorizationStatus]& 4) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v39 = 138543618;
      v40 = v12;
      v41 = 2048;
      authorizationStatus = [(HMHomeManager *)selfCopy authorizationStatus];
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@This client cannot access home data with current authorization status: %lu", &v39, 0x16u);
    }

    v13 = v9;
LABEL_5:
    objc_autoreleasePoolPop(v13);
    completionCopy[2](completionCopy);
    goto LABEL_23;
  }

  generationCounter = [(HMHomeManager *)self generationCounter];
  serverGenerationCounter = [(HMHomeManager *)self serverGenerationCounter];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  qualityOfService = [currentThread qualityOfService];

  v18 = 17;
  if (qualityOfService == -1)
  {
    v18 = -1;
  }

  if (qualityOfService == 25)
  {
    v19 = 25;
  }

  else
  {
    v19 = v18;
  }

  if (generationCounter == serverGenerationCounter)
  {
    shouldConnect = [(HMHomeManager *)self shouldConnect];
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (!shouldConnect)
    {
      if (v24)
      {
        v38 = HMFGetLogIdentifier();
        v39 = 138543618;
        v40 = v38;
        v41 = 2048;
        authorizationStatus = generationCounter;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Deferring configuration request with generation counter: %tu", &v39, 0x16u);
      }

      v13 = v21;
      goto LABEL_5;
    }

    if (v24)
    {
      v25 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Connecting and requesting configuration from the server", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v39 = 138543874;
      v40 = v29;
      v41 = 2048;
      authorizationStatus = generationCounter;
      v43 = 2048;
      v44 = serverGenerationCounter;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@The client generation counter %tu does not match the server generation counter: %tu", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    if (generationCounter == -1)
    {
      v19 = 25;
    }
  }

  [(HMHomeManager *)self setPendingSyncGenerationCounter:serverGenerationCounter];
  v30 = [[__HMHomeDataSyncOperation alloc] initWithHomeManager:self];
  [(HMFOperation *)v30 setQualityOfService:v19];
  v31 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch home configuration"];
  [(HMFOperation *)v30 setActivity:v31];

  [(__HMHomeDataSyncOperation *)v30 setRefresh:requestedCopy];
  [(__HMHomeDataSyncOperation *)v30 setCompletionBlock:completionCopy];
  v32 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = HMFGetLogIdentifier();
    v36 = HMFQualityOfServiceToString();
    v39 = 138544386;
    v40 = v35;
    v41 = 2048;
    authorizationStatus = generationCounter;
    v43 = 2048;
    v44 = serverGenerationCounter;
    v45 = 2112;
    v46 = v36;
    v47 = 2112;
    v48 = v30;
    _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting home configuration with client generation counter: %tu, server generation counter: %tu, QoS: %@, operation: %@", &v39, 0x34u);
  }

  objc_autoreleasePoolPop(v32);
  syncOperationQueue = [(HMHomeManager *)selfCopy4 syncOperationQueue];
  [syncOperationQueue addOperation:v30];

LABEL_23:
}

- (void)fetchHomeConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(HMHomeManager *)self context];
  queue = [context queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__HMHomeManager_fetchHomeConfigurationWithCompletion___block_invoke;
  v8[3] = &unk_1E754E458;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

uint64_t __54__HMHomeManager_fetchHomeConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Force-fetching home configuration.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _fetchHomeConfigurationWithRefreshRequested:0 completion:*(a1 + 40)];
}

- (void)_requestRefresh
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Refresh requested - re-enabling notifications/media accessory control for client", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  homes = [(HMHomeManager *)selfCopy homes];
  v8 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 reenableNotifications];
        [v12 reRegisterHMMMHandlers];
      }

      v9 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)_loadHH2MigrationInfoFromHMCache:(id)cache
{
  v28 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  cacheManager = [(HMHomeManager *)self cacheManager];

  dictionary = 0;
  if (cacheCopy && cacheManager)
  {
    cacheManager2 = [(HMHomeManager *)self cacheManager];
    v8 = [cacheManager2 cacheWithName:@"HMHM.HH2MigrationCacheName"];

    v9 = [v8 numberForKey:@"HMHM.HH2MigrationGenCounterValue"];
    if (v9)
    {
      if ([cacheCopy isEqual:v9])
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v10 = [v8 numberForKey:@"HMHM.HH2MigrationInProgress"];
        [dictionary setObject:v10 forKeyedSubscript:@"HMHM.HH2MigrationInProgress"];

        v11 = [v8 dataForKey:@"HMHM.HH2MigrationFailedError"];
        if (v11)
        {
          v23 = 0;
          v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v23];
          v13 = v23;
          if (!v12)
          {
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v25 = v21;
              v26 = 2112;
              v27 = v13;
              _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive HH2 migration error from the stored cache. : %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(context);
          }

          [dictionary setObject:v12 forKeyedSubscript:@"HMHM.HH2MigrationFailedError"];
        }

        v16 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v19;
          v26 = 2112;
          v27 = dictionary;
          _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@HH2 Migration Status: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        goto LABEL_16;
      }

      [v8 removeObjectForKey:@"HMHM.HH2MigrationInProgress"];
      [v8 removeObjectForKey:@"HMHM.HH2MigrationFailedError"];
      [v8 removeObjectForKey:@"HMHM.HH2MigrationGenCounterValue"];
      [v8 removeObjectForKey:@"HMHM.HH2MigrationCacheName"];
    }

    dictionary = 0;
LABEL_16:
  }

  return dictionary;
}

- (NSString)homeCacheDir
{
  configuration = [(HMHomeManager *)self configuration];
  cacheURL = [configuration cacheURL];
  path = [cacheURL path];

  return path;
}

- (void)_pingDeviceWithUUID:(id)d monitor:(BOOL)monitor secure:(BOOL)secure restrictToLocalNetwork:(BOOL)network completionHandler:(id)handler
{
  networkCopy = network;
  secureCopy = secure;
  monitorCopy = monitor;
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager _pingDeviceWithUUID:monitor:secure:restrictToLocalNetwork:completionHandler:]", @"deviceUUID"];
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v33;
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v14 = handlerCopy;
  if (!handlerCopy)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager _pingDeviceWithUUID:monitor:secure:restrictToLocalNetwork:completionHandler:]", @"completionHandler"];
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v38[0] = @"kIdentifierKey";
  uUIDString = [dCopy UUIDString];
  v39[0] = uUIDString;
  v38[1] = @"monitor";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:monitorCopy];
  v39[1] = v17;
  v38[2] = @"secure";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:secureCopy];
  v39[2] = v18;
  v38[3] = @"localNetwork";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:networkCopy];
  v39[3] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];

  v21 = objc_alloc(MEMORY[0x1E69A2A10]);
  v22 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v24 = [v22 initWithTarget:uuid];
  v25 = [v21 initWithName:@"kPingInternalRequestKey" destination:v24 payload:v20];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __93__HMHomeManager__pingDeviceWithUUID_monitor_secure_restrictToLocalNetwork_completionHandler___block_invoke;
  v35[3] = &unk_1E754DE00;
  v36 = context;
  v37 = v14;
  v26 = v14;
  v27 = context;
  [v25 setResponseHandler:v35];
  messageDispatcher = [v27 messageDispatcher];
  [messageDispatcher sendMessage:v25];
}

void __93__HMHomeManager__pingDeviceWithUUID_monitor_secure_restrictToLocalNetwork_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)__removeAccountWithHandle:(id)handle completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  handlerCopy = handler;
  if (!handleCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __removeAccountWithHandle:completionHandler:]", @"accountHandle"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __removeAccountWithHandle:completionHandler:]", @"completionHandler"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v28 = @"destination";
  v29 = handleCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"HMHM.rma" destination:v14 payload:v10];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__HMHomeManager___removeAccountWithHandle_completionHandler___block_invoke;
  v25[3] = &unk_1E754DE00;
  v26 = context;
  v27 = v8;
  v16 = v8;
  v17 = context;
  [v15 setResponseHandler:v25];
  messageDispatcher = [v17 messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __61__HMHomeManager___removeAccountWithHandle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)__removeAccountWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __removeAccountWithIdentifier:completionHandler:]", @"accountIdentifier"];
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v24;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __removeAccountWithIdentifier:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v29 = @"kIdentifierKey";
  uUIDString = [identifierCopy UUIDString];
  v30 = uUIDString;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  v12 = objc_alloc(MEMORY[0x1E69A2A10]);
  v13 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v15 = [v13 initWithTarget:uuid];
  v16 = [v12 initWithName:@"HMHM.rma" destination:v15 payload:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__HMHomeManager___removeAccountWithIdentifier_completionHandler___block_invoke;
  v26[3] = &unk_1E754DE00;
  v27 = context;
  v28 = v8;
  v17 = v8;
  v18 = context;
  [v16 setResponseHandler:v26];
  messageDispatcher = [v18 messageDispatcher];
  [messageDispatcher sendMessage:v16];
}

void __65__HMHomeManager___removeAccountWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)__resolveAccountHandle:(id)handle completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  handlerCopy = handler;
  if (!handleCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __resolveAccountHandle:completionHandler:]", @"accountHandle"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v23;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_8:
    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager __resolveAccountHandle:completionHandler:]", @"completionHandler"];
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  context = [(HMHomeManager *)self context];
  v28 = @"destination";
  v29 = handleCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"HMHM.rsa" destination:v14 payload:v10];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__HMHomeManager___resolveAccountHandle_completionHandler___block_invoke;
  v25[3] = &unk_1E754DE00;
  v26 = context;
  v27 = v8;
  v16 = v8;
  v17 = context;
  [v15 setResponseHandler:v25];
  messageDispatcher = [v17 messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __58__HMHomeManager___resolveAccountHandle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (BOOL)isiPhoneOnlyPairingSupportedForMatterAccessories
{
  if ((_os_feature_enabled_impl() & 1) != 0 || (AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) != 0)
  {

    LOBYTE(AppBooleanValue) = [(HMHomeManager *)self isDaemonRunningWithROARFramework];
  }

  return AppBooleanValue;
}

- (void)fetchDevicesWithCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager fetchDevicesWithCompletionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v5 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v7 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetching devices"];
  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    identifier = [v7 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v34 = v11;
    v35 = 2114;
    v36 = shortDescription;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching devices", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = objc_alloc(MEMORY[0x1E69A2A10]);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)selfCopy2 uuid];
  v17 = [v15 initWithTarget:uuid];
  v18 = [v14 initWithName:@"HMHM.fetchDevices" destination:v17 payload:0];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__HMHomeManager_fetchDevicesWithCompletionHandler___block_invoke;
  v29[3] = &unk_1E754D030;
  v29[4] = selfCopy2;
  v30 = v7;
  v31 = context;
  v32 = v5;
  v19 = v5;
  v20 = context;
  v21 = v7;
  [v18 setResponseHandler:v29];
  messageDispatcher = [v20 messageDispatcher];
  [messageDispatcher sendMessage:v18];
}

void __51__HMHomeManager_fetchDevicesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHM.devices" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) identifier];
      v15 = [v14 shortDescription];
      v24 = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = v15;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched devices: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [*(a1 + 48) delegateCaller];
    v17 = v16;
    v18 = *(a1 + 56);
    v19 = v8;
    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) identifier];
      v23 = [v22 shortDescription];
      v24 = 138543874;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch devices: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [*(a1 + 48) delegateCaller];
    v17 = v16;
    v18 = *(a1 + 56);
    v19 = 0;
    v20 = v5;
  }

  [v16 callCompletion:v18 obj:v19 error:v20];
}

- (void)checkName:(id)name inHome:(id)home withValidationOptions:(unint64_t)options completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  homeCopy = home;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager checkName:inHome:withValidationOptions:completionHandler:]", @"completionHandler"];
    v34 = objc_autoreleasePoolPush();
    selfCopy = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v37;
      v43 = 2112;
      v44 = v33;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v33 userInfo:0];
    objc_exception_throw(v38);
  }

  v13 = handlerCopy;
  context = [(HMHomeManager *)self context];
  if (!nameCopy)
  {
    context2 = [(HMHomeManager *)self context];
    delegateCaller = [context2 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:v13 value:0 conflictName:0 error:v22];

LABEL_10:
    goto LABEL_14;
  }

  v15 = [nameCopy length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  if (v15 > HMMaxLengthForNaming__hmf_once_v9)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Home name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    context2 = [context delegateCaller];
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
    [context2 callCompletion:v13 value:0 conflictName:0 error:delegateCaller];
    goto LABEL_10;
  }

  v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  if (homeCopy)
  {
    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    [v23 setObject:uUIDString forKeyedSubscript:@"kHomeUUID"];
  }

  [v23 setObject:nameCopy forKeyedSubscript:@"name"];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v23 setObject:v26 forKeyedSubscript:@"options"];

  v27 = objc_alloc(MEMORY[0x1E69A2A10]);
  v28 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid2 = [(HMHomeManager *)self uuid];
  v30 = [v28 initWithTarget:uuid2];
  v31 = [v27 initWithName:@"HMHM.qns" destination:v30 payload:v23];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __74__HMHomeManager_checkName_inHome_withValidationOptions_completionHandler___block_invoke;
  v39[3] = &unk_1E754C0F0;
  v40 = v13;
  [v31 setResponseHandler:v39];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v31];

LABEL_14:
}

void __74__HMHomeManager_checkName_inHome_withValidationOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 hmf_stringForKey:@"conflictName"];
  (*(*(a1 + 32) + 16))();
}

- (void)generateFirewallRuleTLVsFromNetworkDeclarations:(id)declarations completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  declarationsCopy = declarations;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager generateFirewallRuleTLVsFromNetworkDeclarations:completionHandler:]", @"completionHandler"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v8 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHomeManager *)self messageTargetUUID];
  v12 = [v10 initWithTarget:messageTargetUUID];

  v13 = objc_alloc(MEMORY[0x1E69A2A10]);
  v27 = @"jsonData";
  v28 = declarationsCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [v13 initWithName:@"HMHM.convertFirewallRules" destination:v12 payload:v14];

  objc_initWeak(location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__HMHomeManager_generateFirewallRuleTLVsFromNetworkDeclarations_completionHandler___block_invoke;
  v24[3] = &unk_1E754CFF8;
  objc_copyWeak(&v26, location);
  v16 = v8;
  v25 = v16;
  [v15 setResponseHandler:v24];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __83__HMHomeManager_generateFirewallRuleTLVsFromNetworkDeclarations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = [v5 hmf_dataForKey:@"fileString"];
    v8 = [WeakRetained context];
    v9 = [v8 delegateCaller];
    [v9 callCompletion:*(a1 + 32) obj:v7 error:v11];

LABEL_3:
    goto LABEL_6;
  }

  v10 = *(a1 + 32);
  if (!v11)
  {
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (*(v10 + 16))(v10, 0, v7);
    goto LABEL_3;
  }

  (*(v10 + 16))(v10, 0);
LABEL_6:
}

- (void)updateAccessAllowedWhenLocked:(BOOL)locked completionHandler:(id)handler
{
  lockedCopy = locked;
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updateAccessAllowedWhenLocked:completionHandler:]", @"completionHandler"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v7 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v11 = [v9 initWithTarget:uuid];

  v12 = MEMORY[0x1E69A2A10];
  v27 = @"kAccessAllowedWhenLockedKey";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:lockedCopy];
  v28 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [v12 messageWithName:@"kUpdateAccessAllowedWhenLockedRequestKey" destination:v11 payload:v14];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__HMHomeManager_updateAccessAllowedWhenLocked_completionHandler___block_invoke;
  v24[3] = &unk_1E754A910;
  v24[4] = self;
  v25 = v7;
  v26 = lockedCopy;
  v16 = v7;
  [v15 setResponseHandler:v24];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15 completionHandler:0];
}

void __65__HMHomeManager_updateAccessAllowedWhenLocked_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = _Block_copy(*(a1 + 40));
    v17 = 138544130;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Update access allowed when locked : %@, completionHandler: %@ error %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setAccessAllowedWhenLocked:*(a1 + 48)];
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];
}

- (void)updateResidentEnabledForThisDevice:(BOOL)device completionHandler:(id)handler
{
  deviceCopy = device;
  v39 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updateResidentEnabledForThisDevice:completionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v7 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v33 = @"kResidentEnabledKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:deviceCopy];
  v34 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"kUpdateResidentEnabledOnThisDeviceRequestKey" destination:v14 payload:v10];

  pendingRequests = [context pendingRequests];
  identifier = [v15 identifier];
  v18 = _Block_copy(v7);
  [pendingRequests addCompletionBlock:v18 forIdentifier:identifier];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70__HMHomeManager_updateResidentEnabledForThisDevice_completionHandler___block_invoke;
  v29[3] = &unk_1E754E0A8;
  v30 = pendingRequests;
  v31 = identifier;
  v32 = context;
  v19 = context;
  v20 = identifier;
  v21 = pendingRequests;
  [v15 setResponseHandler:v29];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __70__HMHomeManager_updateResidentEnabledForThisDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updateApplicationData:completionHandler:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v32;
      v44 = 2112;
      v45 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v8 = handlerCopy;
  context = [(HMHomeManager *)self context];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (dataCopy)
  {
    dictionary2 = [dataCopy dictionary];
    [dictionary setObject:dictionary2 forKeyedSubscript:@"kAppDataInformationKey"];
  }

  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHomeManager *)self messageTargetUUID];
  v13 = [v11 initWithTarget:messageTargetUUID];

  v14 = MEMORY[0x1E69A2A10];
  v15 = [dictionary copy];
  v16 = [v14 messageWithName:@"kSetHomeManagerAppDataRequestKey" destination:v13 payload:v15];

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HMHomeManager_updateApplicationData_completionHandler___block_invoke;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v42, location);
  v17 = dataCopy;
  v40 = v17;
  v18 = v8;
  v41 = v18;
  v19 = _Block_copy(aBlock);
  context2 = [(HMHomeManager *)self context];
  pendingRequests = [context2 pendingRequests];

  identifier = [v16 identifier];
  v23 = _Block_copy(v19);
  [pendingRequests addCompletionBlock:v23 forIdentifier:identifier];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __57__HMHomeManager_updateApplicationData_completionHandler___block_invoke_2;
  v35[3] = &unk_1E754E480;
  v24 = pendingRequests;
  v36 = v24;
  v25 = identifier;
  v37 = v25;
  v26 = v19;
  v38 = v26;
  [v16 setResponseHandler:v35];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v42);
  objc_destroyWeak(location);
}

void __57__HMHomeManager_updateApplicationData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setApplicationData:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __57__HMHomeManager_updateApplicationData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateiCloudSwitchState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updateiCloudSwitchState:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v7 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v26 = @"kiCloudSwitchStateKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:stateCopy];
  v27 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v11 = objc_alloc(MEMORY[0x1E69A2A10]);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v14 = [v12 initWithTarget:uuid];
  v15 = [v11 initWithName:@"HMHM.updateiCloudSwitchState" destination:v14 payload:v10];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__HMHomeManager_updateiCloudSwitchState_completionHandler___block_invoke;
  v24[3] = &unk_1E754C0F0;
  v25 = v7;
  v16 = v7;
  [v15 setResponseHandler:v24];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

- (void)queryiCloudSwitchStateWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager queryiCloudSwitchStateWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v5 = handlerCopy;
  context = [(HMHomeManager *)self context];
  v7 = objc_alloc(MEMORY[0x1E69A2A10]);
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v10 = [v8 initWithTarget:uuid];
  v11 = [v7 initWithName:@"HMHM.queryiCloudSwitchState" destination:v10 payload:0];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__HMHomeManager_queryiCloudSwitchStateWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E754C0F0;
  v21 = v5;
  v12 = v5;
  [v11 setResponseHandler:v20];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

void __61__HMHomeManager_queryiCloudSwitchStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    [a3 hmf_BOOLForKey:@"kiCloudSwitchStateKey"];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setMetadata:(id)metadata completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager setMetadata:completionHandler:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v8 = handlerCopy;
  context = [(HMHomeManager *)self context];
  if (metadataCopy)
  {
    v33 = @"kMetadataPlistPathKey";
    v34 = metadataCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHomeManager *)self messageTargetUUID];
  v13 = [v11 initWithTarget:messageTargetUUID];

  v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHM.sm" destination:v13 payload:v10];
  context2 = [(HMHomeManager *)self context];
  pendingRequests = [context2 pendingRequests];

  identifier = [v14 identifier];
  v18 = _Block_copy(v8);
  [pendingRequests addCompletionBlock:v18 forIdentifier:identifier];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __47__HMHomeManager_setMetadata_completionHandler___block_invoke;
  v29[3] = &unk_1E754E0A8;
  v30 = pendingRequests;
  v31 = identifier;
  v32 = context;
  v19 = context;
  v20 = identifier;
  v21 = pendingRequests;
  [v14 setResponseHandler:v29];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v14 completionHandler:0];
}

void __47__HMHomeManager_setMetadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)queryMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHomeManager *)self messageTargetUUID];
  v10 = [v8 initWithTarget:messageTargetUUID];

  v11 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHM.qm" destination:v10 payload:metadataCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__HMHomeManager_queryMetadata_completionHandler___block_invoke;
  v16[3] = &unk_1E754E480;
  v17 = metadataCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = metadataCopy;
  [v11 setResponseHandler:v16];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

void __49__HMHomeManager_queryMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@queryMetadata '%@' failed with error %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = [*(a1 + 40) context];
  v12 = [v11 delegateCaller];
  v13 = *(a1 + 48);
  v14 = [v6 hmf_dictionaryForKey:@"kMetadataDictionaryKey"];
  [v12 callCompletion:v13 error:v5 dictionary:v14];
}

- (void)resetLastTTRTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B4FFBCEC-B0A2-4660-B1B2-4B484FE76D74"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"resetLastTTRTime" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HMHomeManager_resetLastTTRTimeWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = handlerCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__HMHomeManager_resetLastTTRTimeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)presentTTRDialog:(id)dialog completionHandler:(id)handler
{
  dialogCopy = dialog;
  handlerCopy = handler;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B4FFBCEC-B0A2-4660-B1B2-4B484FE76D74"];
  v10 = [v8 initWithTarget:v9];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dialogCopy forKeyedSubscript:@"category"];
  v12 = [MEMORY[0x1E69A2A10] messageWithName:@"presentTTRDialog" destination:v10 payload:dictionary];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__HMHomeManager_presentTTRDialog_completionHandler___block_invoke;
  v16[3] = &unk_1E754CFF8;
  objc_copyWeak(&v18, &location);
  v13 = handlerCopy;
  v17 = v13;
  [v12 setResponseHandler:v16];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __52__HMHomeManager_presentTTRDialog_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)submitLogEventDailySchedulerRegisteredBlocksWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"logEventDailySchedulerRunRegisteredBlocks" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__HMHomeManager_submitLogEventDailySchedulerRegisteredBlocksWithCompletion___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__HMHomeManager_submitLogEventDailySchedulerRegisteredBlocksWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)resetEventCounters:(id)counters
{
  countersCopy = counters;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"resetEventCounters" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__HMHomeManager_resetEventCounters___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = countersCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __36__HMHomeManager_resetEventCounters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)fetchEventCounters:(id)counters
{
  countersCopy = counters;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"fetchEventCounters" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__HMHomeManager_fetchEventCounters___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = countersCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __36__HMHomeManager_fetchEventCounters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained context];
  v8 = [v7 delegateCaller];
  [v8 callCompletion:*(a1 + 32) error:v6 dictionary:v5];
}

- (void)listEphemeralContainersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"listEphemeralContainers" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HMHomeManager_listEphemeralContainersWithCompletion___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__HMHomeManager_listEphemeralContainersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained context];
  v8 = [v7 delegateCaller];
  [v8 callCompletion:*(a1 + 32) error:v6 dictionary:v5];
}

- (void)startupEphemeralContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v10 = [v8 initWithTarget:v9];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:nameCopy forKeyedSubscript:@"ephemeralContainerName"];
  v12 = MEMORY[0x1E69A2A10];
  v13 = [dictionary copy];
  v14 = [v12 messageWithName:@"startupEphemeralContainer" destination:v10 payload:v13];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__HMHomeManager_startupEphemeralContainerWithName_completion___block_invoke;
  v18[3] = &unk_1E754CFF8;
  objc_copyWeak(&v20, &location);
  v15 = completionCopy;
  v19 = v15;
  [v14 setResponseHandler:v18];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__HMHomeManager_startupEphemeralContainerWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)deleteEphemeralContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v10 = [v8 initWithTarget:v9];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:nameCopy forKeyedSubscript:@"ephemeralContainerName"];
  v12 = MEMORY[0x1E69A2A10];
  v13 = [dictionary copy];
  v14 = [v12 messageWithName:@"deleteEphemeralContainer" destination:v10 payload:v13];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__HMHomeManager_deleteEphemeralContainerWithName_completion___block_invoke;
  v18[3] = &unk_1E754CFF8;
  objc_copyWeak(&v20, &location);
  v15 = completionCopy;
  v19 = v15;
  [v14 setResponseHandler:v18];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __61__HMHomeManager_deleteEphemeralContainerWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)deactivateEphemeralContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v10 = [v8 initWithTarget:v9];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:nameCopy forKeyedSubscript:@"ephemeralContainerName"];
  v12 = MEMORY[0x1E69A2A10];
  v13 = [dictionary copy];
  v14 = [v12 messageWithName:@"deactivateEphemeralContainer" destination:v10 payload:v13];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HMHomeManager_deactivateEphemeralContainerWithName_completion___block_invoke;
  v18[3] = &unk_1E754CFF8;
  objc_copyWeak(&v20, &location);
  v15 = completionCopy;
  v19 = v15;
  [v14 setResponseHandler:v18];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __65__HMHomeManager_deactivateEphemeralContainerWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)addEphemeralContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v10 = [v8 initWithTarget:v9];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:nameCopy forKeyedSubscript:@"ephemeralContainerName"];
  v12 = MEMORY[0x1E69A2A10];
  v13 = [dictionary copy];
  v14 = [v12 messageWithName:@"addEphemeralContainer" destination:v10 payload:v13];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__HMHomeManager_addEphemeralContainerWithName_completion___block_invoke;
  v18[3] = &unk_1E754CFF8;
  objc_copyWeak(&v20, &location);
  v15 = completionCopy;
  v19 = v15;
  [v14 setResponseHandler:v18];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __58__HMHomeManager_addEphemeralContainerWithName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)deleteCountersBeforeDate:(id)date afterDate:(id)afterDate completion:(id)completion
{
  dateCopy = date;
  afterDateCopy = afterDate;
  completionCopy = completion;
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v13 = [v11 initWithTarget:v12];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dateCopy forKeyedSubscript:@"beforeDate"];
  [dictionary setObject:afterDateCopy forKeyedSubscript:@"afterDate"];
  v15 = MEMORY[0x1E69A2A10];
  v16 = [dictionary copy];
  v17 = [v15 messageWithName:@"deleteCounters" destination:v13 payload:v16];

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__HMHomeManager_deleteCountersBeforeDate_afterDate_completion___block_invoke;
  v21[3] = &unk_1E754CFF8;
  objc_copyWeak(&v23, &location);
  v18 = completionCopy;
  v22 = v18;
  [v17 setResponseHandler:v21];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __63__HMHomeManager_deleteCountersBeforeDate_afterDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)saveCountersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v7 = [v5 initWithTarget:v6];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"saveCounters" destination:v7 payload:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__HMHomeManager_saveCountersWithCompletion___block_invoke;
  v12[3] = &unk_1E754CFF8;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v13 = v9;
  [v8 setResponseHandler:v12];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __44__HMHomeManager_saveCountersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)readCountersForGroup:(id)group homeUUIDString:(id)string accessoryUUIDString:(id)dString counter:(id)counter statistics:(id)statistics datePartition:(id)partition ephemeralContainerName:(id)name completion:(id)self0
{
  groupCopy = group;
  stringCopy = string;
  dStringCopy = dString;
  counterCopy = counter;
  statisticsCopy = statistics;
  partitionCopy = partition;
  nameCopy = name;
  completionCopy = completion;
  v21 = objc_alloc(MEMORY[0x1E69A2A00]);
  v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3872CF5-6B42-43E3-8D60-9E0A0C8483DA"];
  v23 = [v21 initWithTarget:v22];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:groupCopy forKeyedSubscript:@"groupName"];
  [dictionary setObject:stringCopy forKeyedSubscript:@"homeUUID"];
  [dictionary setObject:dStringCopy forKeyedSubscript:@"accessoryUUID"];
  v34 = counterCopy;
  [dictionary setObject:counterCopy forKeyedSubscript:@"counter"];
  v33 = statisticsCopy;
  v25 = statisticsCopy;
  v26 = partitionCopy;
  [dictionary setObject:v25 forKeyedSubscript:@"statistics"];
  [dictionary setObject:partitionCopy forKeyedSubscript:@"partition"];
  [dictionary setObject:nameCopy forKeyedSubscript:@"ephemeralContainerName"];
  v27 = MEMORY[0x1E69A2A10];
  v28 = [dictionary copy];
  v29 = [v27 messageWithName:@"readCounters" destination:v23 payload:v28];

  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __140__HMHomeManager_readCountersForGroup_homeUUIDString_accessoryUUIDString_counter_statistics_datePartition_ephemeralContainerName_completion___block_invoke;
  v38[3] = &unk_1E754CFF8;
  objc_copyWeak(&v40, &location);
  v30 = completionCopy;
  v39 = v30;
  [v29 setResponseHandler:v38];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v29];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

void __140__HMHomeManager_readCountersForGroup_homeUUIDString_accessoryUUIDString_counter_statistics_datePartition_ephemeralContainerName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained context];
  v8 = [v7 delegateCaller];
  [v8 callCompletion:*(a1 + 32) error:v6 dictionary:v5];
}

- (void)dumpState:(id)state dataPrivacyLevel:(unint64_t)level payload:(id)payload completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  payloadCopy = payload;
  completionCopy = completion;
  if (!completionCopy)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager dumpState:dataPrivacyLevel:payload:completion:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v33;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v13 = completionCopy;
  if (level >= 3)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:level];
      *location = 138543618;
      *&location[4] = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid privacy level specified : %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (v13)[2](v13, v14, 0);
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:payloadCopy];
    [v14 setObject:stateCopy forKey:@"kDumpStateRequestedConfigurationKey"];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:level];
    [v14 setObject:v15 forKeyedSubscript:@"HMIncludeDataPrivacyLevelKey"];

    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)self uuid];
    v18 = [v16 initWithTarget:uuid];

    v19 = MEMORY[0x1E69A2A10];
    v20 = [v14 copy];
    v21 = [v19 messageWithName:@"HMHM.ds" destination:v18 payload:v20];

    objc_initWeak(location, self);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __63__HMHomeManager_dumpState_dataPrivacyLevel_payload_completion___block_invoke;
    v35[3] = &unk_1E754CFF8;
    objc_copyWeak(&v37, location);
    v36 = v13;
    [v21 setResponseHandler:v35];
    context = [(HMHomeManager *)self context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21];

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }
}

void __63__HMHomeManager_dumpState_dataPrivacyLevel_payload_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained context];
  v8 = [v7 delegateCaller];
  [v8 callCompletion:*(a1 + 32) error:v6 dictionary:v5];
}

- (void)queryVersionWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager queryVersionWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v5 = handlerCopy;
  v6 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHomeManager *)self messageTargetUUID];
  v8 = [v6 initWithTarget:messageTargetUUID];

  v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHM.qv" destination:v8 payload:0];
  objc_initWeak(location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__HMHomeManager_queryVersionWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E754CFF8;
  objc_copyWeak(&v21, location);
  v10 = v5;
  v20 = v10;
  [v9 setResponseHandler:v19];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v9];

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);
}

void __51__HMHomeManager_queryVersionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v7 = [a3 hmf_stringForKey:@"kHomeKitVersionStringKey"];
    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained context];
  v10 = [v9 delegateCaller];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__HMHomeManager_queryVersionWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E754E0F8;
  v11 = *(a1 + 32);
  v16 = v6;
  v17 = v11;
  v15 = v7;
  v12 = v6;
  v13 = v7;
  [v10 invokeBlock:v14];
}

- (void)queryHomeKitUsageStateWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager queryHomeKitUsageStateWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v5 = handlerCopy;
  v6 = objc_alloc(MEMORY[0x1E69A2A10]);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v9 = [v7 initWithTarget:uuid];
  v10 = [v6 initWithName:@"kQueryHomeKitUsageStateRequestKey" destination:v9 payload:0];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__HMHomeManager_queryHomeKitUsageStateWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E754DE00;
  v20[4] = self;
  v21 = v5;
  v11 = v5;
  [v10 setResponseHandler:v20];
  context = [(HMHomeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];
}

void __61__HMHomeManager_queryHomeKitUsageStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v5)
  {
    v7 = [v6 context];
    v8 = [v7 delegateCaller];
    [v8 callCompletion:*(a1 + 40) isUsingHomeKit:0 isUsingCloudServices:0 error:v9];
  }

  else
  {
    [v6 _handleQueryHomeKitUsageStateResponse:a3 completionHandler:*(a1 + 40)];
  }
}

- (void)eraseHomeDataAndDeleteMetadata:(BOOL)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager eraseHomeDataAndDeleteMetadata:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v8 = context;
  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v11 = [v9 initWithTarget:uuid];

  v12 = MEMORY[0x1E69A29F8];
  v27 = @"kResetConfigMetadataKey";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:metadataCopy];
  v28 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [v12 messageWithName:@"kResetConfigRequestKey" qualityOfService:25 destination:v11 payload:v14];

  objc_initWeak(location, self);
  messageDispatcher = [v8 messageDispatcher];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__HMHomeManager_eraseHomeDataAndDeleteMetadata_completionHandler___block_invoke;
  v24[3] = &unk_1E754D910;
  objc_copyWeak(&v26, location);
  v17 = handlerCopy;
  v25 = v17;
  [messageDispatcher sendMessage:v15 completionHandler:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __66__HMHomeManager_eraseHomeDataAndDeleteMetadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)resetConfiguration:(BOOL)configuration withoutPopup:(BOOL)popup completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v7);
  }

  v8 = handlerCopy;
  [(HMHomeManager *)self eraseHomeDataWithCompletionHandler:handlerCopy];
}

- (void)removeHome:(HMHome *)home completionHandler:(void *)completion
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = home;
  v7 = completion;
  context = [(HMHomeManager *)self context];
  if (!v7)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager removeHome:completionHandler:]", @"completion"];
    v47 = objc_autoreleasePoolPush();
    selfCopy = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v50;
      v63 = 2112;
      v64 = v46;
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v46 userInfo:0];
    objc_exception_throw(v51);
  }

  v9 = context;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Remove home"];
  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v62 = v14;
    v63 = 2114;
    v64 = shortDescription;
    v65 = 2112;
    v66 = v6;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (v6)
  {
    currentHomes = [(HMHomeManager *)selfCopy2 currentHomes];
    v18 = [currentHomes containsObject:v6];

    v53 = v10;
    if (v18)
    {
      v52 = MEMORY[0x1E69A2A10];
      v19 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHomeManager *)selfCopy2 uuid];
      v21 = [v19 initWithTarget:uuid];
      v59 = @"kHomeUUID";
      uuid2 = [(HMHome *)v6 uuid];
      uUIDString = [uuid2 UUIDString];
      v60 = uUIDString;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v24 = v6;
      v25 = v7;
      v27 = v26 = v9;
      delegateCaller = [v52 messageWithName:@"kRemoveHomeRequestKey" destination:v21 payload:v27];

      v9 = v26;
      v7 = v25;
      v6 = v24;

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __46__HMHomeManager_removeHome_completionHandler___block_invoke;
      v54[3] = &unk_1E754B6C8;
      v54[4] = selfCopy2;
      v55 = v53;
      v29 = v9;
      v56 = v29;
      v58 = v7;
      v57 = v6;
      [delegateCaller setResponseHandler:v54];
      messageDispatcher = [v29 messageDispatcher];
      [messageDispatcher sendMessage:delegateCaller];

      v10 = v53;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy2;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        identifier2 = [v10 identifier];
        shortDescription2 = [identifier2 shortDescription];
        currentHomes2 = [(HMHomeManager *)v39 currentHomes];
        *buf = 138543874;
        v62 = v41;
        v63 = 2114;
        v64 = shortDescription2;
        v65 = 2112;
        v66 = currentHomes2;
        _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to remove home that doesn't exist in current homes: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v38);
      delegateCaller = [v9 delegateCaller];
      v45 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [delegateCaller callCompletion:v7 error:v45];

      v10 = v53;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy2;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      identifier3 = [v10 identifier];
      shortDescription3 = [identifier3 shortDescription];
      *buf = 138543618;
      v62 = v34;
      v63 = 2114;
      v64 = shortDescription3;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to remove nil home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    delegateCaller = [v9 delegateCaller];
    v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:v7 error:v37];
  }
}

void __46__HMHomeManager_removeHome_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v12;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to remove home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[6] delegateCaller];
    [v13 callCompletion:a1[8] error:v5];
  }

  else
  {
    v14 = [a1[6] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMHomeManager_removeHome_completionHandler___block_invoke_653;
    block[3] = &unk_1E754D7A8;
    v19 = *(a1 + 2);
    v15 = *(&v19 + 1);
    v16 = a1[7];
    v17 = a1[6];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v21 = v19;
    v22 = v18;
    v23 = a1[8];
    dispatch_async(v14, block);
  }
}

void __46__HMHomeManager_removeHome_completionHandler___block_invoke_653(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) identifier];
    v7 = [v6 shortDescription];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully removed home", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) currentHomes];
  [v8 removeObject:*(a1 + 48)];

  [*(a1 + 48) unconfigure];
  v9 = [*(a1 + 56) delegateCaller];
  [v9 callCompletion:*(a1 + 64) error:0];
}

- (void)addHomeWithName:(NSString *)homeName completionHandler:(void *)completion
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = homeName;
  v7 = completion;
  context = [(HMHomeManager *)self context];
  if (!v7)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager addHomeWithName:completionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v43;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v9 = context;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Add home"];
  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v52 = v14;
    v53 = 2114;
    v54 = shortDescription;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding home with name: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (v6)
  {
    v17 = [(NSString *)v6 length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v17 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      v32 = MEMORY[0x1E69A2A10];
      v33 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHomeManager *)selfCopy2 uuid];
      v35 = [v33 initWithTarget:uuid];
      v49 = @"kHomeName";
      v50 = v6;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      delegateCaller = [v32 messageWithName:@"kAddHomeRequestKey" destination:v35 payload:v36];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __51__HMHomeManager_addHomeWithName_completionHandler___block_invoke;
      v45[3] = &unk_1E754D030;
      v45[4] = selfCopy2;
      v46 = v10;
      v37 = v9;
      v47 = v37;
      v48 = v7;
      [delegateCaller setResponseHandler:v45];
      messageDispatcher = [v37 messageDispatcher];
      [messageDispatcher sendMessage:delegateCaller];

      goto LABEL_16;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy2;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Home name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    delegateCaller = [v9 delegateCaller];
    v23 = MEMORY[0x1E696ABC0];
    v24 = 46;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy2;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      identifier2 = [v10 identifier];
      shortDescription2 = [identifier2 shortDescription];
      *buf = 138543618;
      v52 = v28;
      v53 = 2114;
      v54 = shortDescription2;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Asked to add home with nil name", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    delegateCaller = [v9 delegateCaller];
    v23 = MEMORY[0x1E696ABC0];
    v24 = 20;
  }

  v31 = [v23 hmErrorWithCode:v24];
  [delegateCaller callCompletion:v7 home:0 error:v31];

LABEL_16:
}

void __51__HMHomeManager_addHomeWithName_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[6] delegateCaller];
    [v13 callCompletion:a1[7] home:0 error:v5];
  }

  else
  {
    v14 = [a1[4] context];
    v15 = [v14 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMHomeManager_addHomeWithName_completionHandler___block_invoke_649;
    block[3] = &unk_1E754E0F8;
    block[4] = a1[4];
    v17 = v6;
    v18 = a1[7];
    dispatch_async(v15, block);
  }
}

- (void)updatePrimaryHome:(HMHome *)home completionHandler:(void *)completion
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = home;
  v7 = completion;
  context = [(HMHomeManager *)self context];
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager updatePrimaryHome:completionHandler:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v9 = context;
  if (!v6)
  {
    delegateCaller = [context delegateCaller];
    delegateCaller2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    delegateCaller4 = delegateCaller;
    v15 = v7;
    v16 = delegateCaller2;
    goto LABEL_7;
  }

  delegateCaller = [(HMHome *)v6 uuid];
  currentHomes = [(HMHomeManager *)self currentHomes];
  v12 = [currentHomes firstItemWithUUID:delegateCaller];

  if (!v12)
  {
    delegateCaller2 = [v9 delegateCaller];
    delegateCaller3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    [delegateCaller2 callCompletion:v7 error:delegateCaller3];
LABEL_14:

    goto LABEL_15;
  }

  if (![(HMHomeManager *)self isDaemonRunningWithROARFramework])
  {
    currentUser = [(HMHome *)v6 currentUser];
    delegateCaller2 = [(HMHome *)v6 homeAccessControlForUser:currentUser];

    if ([delegateCaller2 isAccessAllowed])
    {
      uuid = [(HMHomeManager *)self uuid];
      v38 = @"kHomeUUID";
      v39 = delegateCaller;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __53__HMHomeManager_updatePrimaryHome_completionHandler___block_invoke;
      v33[3] = &unk_1E754D030;
      v34 = v9;
      v37 = v7;
      selfCopy2 = self;
      v36 = delegateCaller;
      [(_HMContext *)v34 sendMessage:uuid target:v20 payload:v33 responseHandler:?];

      delegateCaller3 = v34;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(delegateCaller2, "accessNotAllowedReasonCode")}];
        *buf = 138543874;
        v41 = v24;
        v42 = 2112;
        v43 = v6;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the primary home. Access to the home [%@] is not allowed due to reason: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      delegateCaller3 = [v9 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      [delegateCaller3 callCompletion:v7 error:v26];
    }

    goto LABEL_14;
  }

  [(HMHomeManager *)self setPrimaryHome:v6];
  delegateCaller4 = [v9 delegateCaller];
  delegateCaller2 = delegateCaller4;
  v15 = v7;
  v16 = 0;
LABEL_7:
  [delegateCaller4 callCompletion:v15 error:v16];
LABEL_15:
}

void __53__HMHomeManager_updatePrimaryHome_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 56);
    v6 = v7;
  }

  else
  {
    [*(a1 + 40) _updatePrimaryHome:*(a1 + 48) notifyDelegate:0];
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 56);
    v6 = 0;
  }

  [v3 callCompletion:v5 error:v6];
}

- (id)_refreshBeforeDate:(id)date completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v8 = 0.0;
  if (!dateCopy)
  {
    goto LABEL_10;
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  if ([dateCopy isEqualToDate:distantFuture])
  {

LABEL_10:
    v17 = [[__HMHomeManagerRefreshRequest alloc] initWithGenerationCounter:[(HMHomeManager *)self serverGenerationCounter] timeout:v8];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v17);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke;
    v29[3] = &unk_1E754A8C8;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    v30 = handlerCopy;
    [(__HMHomeManagerRefreshRequest *)v17 setCompletionBlock:v29];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting refresh request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [(HMFOperation *)v17 start];
    context = [(HMHomeManager *)selfCopy context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_635;
    block[3] = &unk_1E754E5C0;
    block[4] = selfCopy;
    v24 = v17;
    v28 = v24;
    dispatch_async(queue, block);

    v25 = v28;
    v16 = v24;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  [dateCopy timeIntervalSinceNow];
  v8 = v10;

  if (v8 >= 0.0)
  {
    goto LABEL_10;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v14;
    v37 = 2048;
    v38 = v8;
    v39 = 2112;
    v40 = dateCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot refresh before date %fs in the past: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (handlerCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:0 reason:@"The date is invalid" suggestion:0];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

void __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [v3 error];
  if (!v3)
  {
    v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];

    v4 = v5;
  }

  if (v4 && ([v4 isHMError] & 1) == 0)
  {
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69A2978]];

    if (v7)
    {
      v8 = [v4 code];
      v9 = 52;
      if (v8 == 13)
      {
        v9 = 8;
      }

      if (v8 == 12)
      {
        v10 = 23;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = 52;
    }

    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v10 description:0 reason:0 suggestion:0 underlyingError:v4];

    v4 = v11;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = WeakRetained;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v15;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Completed refresh request with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  [v3 qualityOfService];
  v16 = HMFQOSClassFromQualityOfService();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_634;
  block[3] = &unk_1E754E458;
  v28 = a1[4];
  v17 = v4;
  v27 = v17;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  v19 = v18;
  if (v13)
  {
    v20 = [v13 context];
    v21 = [v20 delegateCaller];
    [v21 invokeBlock:v19];

    if (v3)
    {
      v22 = [v13 context];
      v23 = [v22 queue];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_2;
      v24[3] = &unk_1E754E5C0;
      v24[4] = v13;
      v25 = v3;
      dispatch_async(v23, v24);
    }
  }

  else
  {
    (*(v18 + 2))(v18);
  }
}

void __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_635(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) generationCounter];
  v3 = [*(a1 + 32) serverGenerationCounter];
  v4 = v3;
  if (v2 != -1 && v2 >= v3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v10;
      v25 = 2048;
      v26 = v2;
      v27 = 2048;
      v28 = v4;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Informing client a refresh is not needed (%tu-%tu)", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) finish];
  }

  else
  {
    v6 = *(*(a1 + 32) + 32);
    if (v6)
    {
      [v6 addObject:*(a1 + 40)];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithObject:*(a1 + 40)];
      v12 = *(a1 + 32);
      v13 = *(v12 + 32);
      *(v12 + 32) = v11;
    }

    v14 = [*(a1 + 32) pendingSyncGenerationCounter];
    if (v14 < v4 || v14 == -1)
    {
      v16 = *(a1 + 32);

      [v16 _fetchHomeConfigurationWithRefreshRequested:0];
    }

    else
    {
      v17 = v14;
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = 138543874;
        v24 = v22;
        v25 = 2048;
        v26 = v17;
        v27 = 2048;
        v28 = v4;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Not performing new fetch request, data sync is already in progress pendingSyncGenerationCounter: %tu serverGenerationCounter: %tu", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }
}

uint64_t __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_634(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __54__HMHomeManager__refreshBeforeDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(v1 + 32) removeObject:*(a1 + 40)];
    if ([*(*(a1 + 32) + 32) hmf_isEmpty])
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 32);
      *(v3 + 32) = 0;
    }
  }
}

- (HMCameraClipsQuotaMessenger)cameraClipsQuotaMessenger
{
  os_unfair_lock_lock_with_options();
  cameraClipsQuotaMessenger = self->_cameraClipsQuotaMessenger;
  if (!cameraClipsQuotaMessenger)
  {
    v4 = [HMCameraClipsQuotaMessenger alloc];
    context = [(HMHomeManager *)self context];
    v6 = [(HMCameraClipsQuotaMessenger *)v4 initWithContext:context];
    v7 = self->_cameraClipsQuotaMessenger;
    self->_cameraClipsQuotaMessenger = v6;

    cameraClipsQuotaMessenger = self->_cameraClipsQuotaMessenger;
  }

  v8 = cameraClipsQuotaMessenger;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)setResidentProvisioningStatus:(unint64_t)status
{
  os_unfair_lock_lock_with_options();
  if (self->_residentProvisioningStatus == status)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_residentProvisioningStatus = status;
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HMHomeManager *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63540])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMHomeManager *)self context];
      delegateCaller = [context delegateCaller];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__HMHomeManager_setResidentProvisioningStatus___block_invoke;
      v10[3] = &unk_1E754E120;
      v11 = v7;
      selfCopy = self;
      statusCopy = status;
      [delegateCaller invokeBlock:v10];
    }
  }
}

- (void)_setResidentProvisioningStatus:(unint64_t)status
{
  os_unfair_lock_lock_with_options();
  self->_residentProvisioningStatus = status;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)residentProvisioningStatus
{
  os_unfair_lock_lock_with_options();
  residentProvisioningStatus = self->_residentProvisioningStatus;
  os_unfair_lock_unlock(&self->_lock);
  return residentProvisioningStatus;
}

- (void)_notifyAccessAllowedWhenLockedUpdated:(BOOL)updated
{
  delegate = [(HMHomeManager *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63540])
  {
    v6 = delegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHomeManager *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__HMHomeManager__notifyAccessAllowedWhenLockedUpdated___block_invoke;
    v10[3] = &unk_1E754DC70;
    v10[4] = self;
    updatedCopy = updated;
    v11 = v7;
    [delegateCaller invokeBlock:v10];
  }
}

uint64_t __55__HMHomeManager__notifyAccessAllowedWhenLockedUpdated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateAccessAllowedWhenLocked with : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) homeManager:*(a1 + 32) didUpdateAccessAllowedWhenLocked:*(a1 + 48)];
}

- (void)setAccessAllowedWhenLocked:(BOOL)locked
{
  os_unfair_lock_lock_with_options();
  self->_accessAllowedWhenLocked = locked;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAccessAllowedWhenLocked
{
  os_unfair_lock_lock_with_options();
  accessAllowedWhenLocked = self->_accessAllowedWhenLocked;
  os_unfair_lock_unlock(&self->_lock);
  return accessAllowedWhenLocked;
}

- (void)notifyResidentEnabledUpdated:(BOOL)updated
{
  delegate = [(HMHomeManager *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63540])
  {
    v6 = delegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHomeManager *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__HMHomeManager_notifyResidentEnabledUpdated___block_invoke;
    v10[3] = &unk_1E754DC70;
    v11 = v7;
    selfCopy = self;
    updatedCopy = updated;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)setResidentEnabledForThisDevice:(BOOL)device
{
  os_unfair_lock_lock_with_options();
  self->_residentEnabledForThisDevice = device;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isResidentEnabledForThisDevice
{
  os_unfair_lock_lock_with_options();
  residentEnabledForThisDevice = self->_residentEnabledForThisDevice;
  os_unfair_lock_unlock(&self->_lock);
  return residentEnabledForThisDevice;
}

- (void)notifyResidentCapableUpdated:(BOOL)updated
{
  delegate = [(HMHomeManager *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63540])
  {
    v6 = delegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHomeManager *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__HMHomeManager_notifyResidentCapableUpdated___block_invoke;
    v10[3] = &unk_1E754DC70;
    v11 = v7;
    selfCopy = self;
    updatedCopy = updated;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)_updateStatusWithPayload:(id)payload sourceIsFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v47 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v7 = [payloadCopy hmf_numberForKey:@"status"];
  v8 = v7;
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      selfCopy2 = self;
      v14 = v13 = fetchCopy;
      v15 = HMHomeManagerStatusToString([(HMHomeManager *)selfCopy status]);
      v16 = HMHomeManagerStatusToString(unsignedIntegerValue);
      *buf = 138543874;
      v42 = v14;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating status from %@ -> %@", buf, 0x20u);

      fetchCopy = v13;
      self = selfCopy2;
    }

    objc_autoreleasePoolPop(v10);
    if ([(HMHomeManager *)selfCopy status]!= unsignedIntegerValue)
    {
      [(HMHomeManager *)selfCopy setStatus:unsignedIntegerValue];
      status = [(HMHomeManager *)selfCopy status];
      v36 = fetchCopy;
      if (status != unsignedIntegerValue)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          v42 = v21;
          v43 = 2048;
          v44 = unsignedIntegerValue;
          v45 = 2048;
          v46 = status;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Framework merge not completed - overriding the status from daemon %tu with %tu", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        fetchCopy = v36;
      }

      delegate = [(HMHomeManager *)selfCopy delegate];
      if ([delegate conformsToProtocol:&unk_1F0F63540])
      {
        v23 = delegate;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (objc_opt_respondsToSelector())
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v29 = HMHomeManagerStatusToString(unsignedIntegerValue);
          *buf = 138543618;
          v42 = v28;
          v43 = 2112;
          v44 = v29;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated status: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        context = [(HMHomeManager *)v26 context];
        delegateCaller = [context delegateCaller];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __56__HMHomeManager__updateStatusWithPayload_sourceIsFetch___block_invoke;
        v37[3] = &unk_1E754E120;
        v38 = v24;
        v39 = v26;
        v40 = status;
        [delegateCaller invokeBlock:v37];

        fetchCopy = v36;
      }
    }
  }

  [(HMHomeManager *)self _updateDataSyncState:payloadCopy];
  v32 = [payloadCopy hmf_numberForKey:@"multiUserStatus"];
  v33 = v32;
  if (v32)
  {
    unsignedIntegerValue2 = [v32 unsignedIntegerValue];
    if (fetchCopy)
    {
      [(HMHomeManager *)self setMultiUserStatus:unsignedIntegerValue2];
    }
  }
}

- (void)_handleStatusUpdated:(id)updated
{
  v45 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  messagePayload = [updatedCopy messagePayload];
  v6 = [updatedCopy numberForKey:@"kConfigGenerationCounterKey"];
  v7 = [updatedCopy numberForKey:@"status"];
  v8 = v7;
  if (v6 && v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMHomeManagerStatusToString(unsignedIntegerValue);
      *buf = 138543874;
      v40 = v13;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling status updated message with generation counter: %@, status: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    status = [(HMHomeManager *)selfCopy status];
    generationCounter = [(HMHomeManager *)selfCopy generationCounter];
    if (generationCounter == [v6 unsignedIntegerValue] || (status & 0x31) == 0 || (unsignedIntegerValue & 0x31) != 0)
    {
      [(HMHomeManager *)selfCopy _updateStatusWithPayload:messagePayload sourceIsFetch:0];
      if ((unsignedIntegerValue & 0x31) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v20 = v38 = unsignedIntegerValue;
        v21 = messagePayload;
        v22 = v17;
        unsignedIntegerValue2 = [v6 unsignedIntegerValue];
        generationCounter2 = [(HMHomeManager *)v18 generationCounter];
        *buf = 138543874;
        v40 = v20;
        v41 = 2048;
        v42 = unsignedIntegerValue2;
        v17 = v22;
        messagePayload = v21;
        v43 = 2048;
        v44 = generationCounter2;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding busy status to updated status because home manager generation counter %lu does not match client's value of %lu", buf, 0x20u);

        unsignedIntegerValue = v38;
      }

      objc_autoreleasePoolPop(v17);
      messagePayload2 = [updatedCopy messagePayload];
      v26 = [messagePayload2 mutableCopy];

      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | 1];
      [v26 setObject:v27 forKeyedSubscript:@"status"];

      v28 = [v26 copy];
      [(HMHomeManager *)v18 _updateStatusWithPayload:v28 sourceIsFetch:0];
      messagePayload = v28;
    }

    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v37;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_INFO, "%{public}@Force-fetching home configuration after homeManager status is good", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    [(HMHomeManager *)v35 _fetchHomeConfigurationWithRefreshRequested:0];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      messagePayload3 = [updatedCopy messagePayload];
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = messagePayload3;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Status update message payload missing generation counter and/or status number: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

LABEL_18:
}

- (void)setStatus:(unint64_t)status
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  initialMergeComplete = self->_initialMergeComplete;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  HMFGetOSLogHandle();
  v9 = v8 = !initialMergeComplete | status;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMHomeManagerStatusToString(selfCopy->_status);
    v12 = HMHomeManagerStatusToString(v8);
    v13 = HMFBooleanToString();
    v14 = 138544130;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating status from %@ -> %@ (initial merge complete: %@)", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  selfCopy->_status = v8;
  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)status
{
  os_unfair_lock_lock_with_options();
  status = self->_status;
  os_unfair_lock_unlock(&self->_lock);
  return status;
}

- (BOOL)isDataSyncInProgress
{
  os_unfair_lock_lock_with_options();
  v3 = [HMHomeManager dataSyncInProgressFromDataSyncState:self->_dataSyncState];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_updateDataSyncState:(id)state
{
  v41 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [(HMHomeManager *)self _dataSyncStateFromPayload:stateCopy];
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMHomeManagerDataSyncStateToString(v6);
      *buf = 138543618;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Got data sync state update from daemon: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMHomeManager *)selfCopy dataSyncState]!= v6)
    {
      v12 = [HMHomeManager dataSyncInProgressFromDataSyncState:[(HMHomeManager *)selfCopy dataSyncState]];
      [(HMHomeManager *)selfCopy setDataSyncState:v6];
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = HMHomeManagerDataSyncStateToString(v6);
        *buf = 138543618;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating data sync state to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      _privateDelegate = [(HMHomeManager *)v14 _privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v14;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v22;
          v39 = 2112;
          v40 = _privateDelegate;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated data sync state: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        context = [(HMHomeManager *)v20 context];
        delegateCaller = [context delegateCaller];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __38__HMHomeManager__updateDataSyncState___block_invoke;
        v34[3] = &unk_1E754E5C0;
        v35 = _privateDelegate;
        v36 = v20;
        [delegateCaller invokeBlock:v34];
      }

      if (v12 != [HMHomeManager dataSyncInProgressFromDataSyncState:[(HMHomeManager *)v14 dataSyncState]]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v14;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v28;
          v39 = 2112;
          v40 = _privateDelegate;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated data sync in progress: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        context2 = [(HMHomeManager *)v26 context];
        delegateCaller2 = [context2 delegateCaller];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __38__HMHomeManager__updateDataSyncState___block_invoke_539;
        v31[3] = &unk_1E754E5C0;
        v32 = _privateDelegate;
        v33 = v26;
        [delegateCaller2 invokeBlock:v31];
      }
    }
  }
}

- (unint64_t)_dataSyncStateFromPayload:(id)payload
{
  v3 = [payload hmf_numberForKey:@"dataSyncState"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setDataSyncState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_dataSyncState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)dataSyncState
{
  os_unfair_lock_lock_with_options();
  dataSyncState = self->_dataSyncState;
  os_unfair_lock_unlock(&self->_lock);
  return dataSyncState;
}

- (void)setMultiUserStatus:(int64_t)status
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (self->_multiUserStatus == status)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_multiUserStatus = status;
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:status];
      *v17 = 138543618;
      *&v17[4] = v8;
      *&v17[12] = 2112;
      *&v17[14] = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Multi user status changed to %@", v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    _privateDelegate = [(HMHomeManager *)selfCopy _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMHomeManager *)selfCopy context];
      delegateCaller = [context delegateCaller];
      *v17 = MEMORY[0x1E69E9820];
      *&v17[8] = 3221225472;
      *&v17[16] = __53__HMHomeManager__notifyClientOfMultiUserStateChange___block_invoke;
      v18 = &unk_1E754A938;
      v19 = selfCopy;
      statusCopy = status;
      v20 = _privateDelegate;
      v21 = 0;
      [delegateCaller invokeBlock:v17];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *v17 = 138543362;
        *&v17[4] = v16;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Registered client does not respond to multi-user state change delegate", v17, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

uint64_t __53__HMHomeManager__notifyClientOfMultiUserStateChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying client of multi user state change %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) homeManager:*(a1 + 32) didUpdateMultiUserStatus:*(a1 + 56) reason:*(a1 + 48)];
}

- (void)setHomeSafetySecurityEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_homeSafetySecurityEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)homeSafetySecurityEnabled
{
  os_unfair_lock_lock_with_options();
  homeSafetySecurityEnabled = self->_homeSafetySecurityEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return homeSafetySecurityEnabled;
}

- (NSError)hh2MigrationFailedError
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hh2MigrationFailedError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHh2MigrationFailedError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  hh2MigrationFailedError = self->_hh2MigrationFailedError;
  self->_hh2MigrationFailedError = errorCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isHH2MigrationInProgress
{
  os_unfair_lock_lock_with_options();
  hh2MigrationInProgress = self->_hh2MigrationInProgress;
  os_unfair_lock_unlock(&self->_lock);
  return hh2MigrationInProgress;
}

- (void)setHh2MigrationInProgress:(BOOL)progress
{
  os_unfair_lock_lock_with_options();
  self->_hh2MigrationInProgress = progress;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsHH2MigrationAvailable:(BOOL)available
{
  os_unfair_lock_lock_with_options();
  self->_hh2MigrationAvailable = available;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isHH2MigrationAvailable
{
  os_unfair_lock_lock_with_options();
  hh2MigrationAvailable = self->_hh2MigrationAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return hh2MigrationAvailable;
}

- (void)setHasOptedToHH2:(BOOL)h2
{
  os_unfair_lock_lock_with_options();
  self->_optedToHH2 = h2;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOptedToHH2
{
  os_unfair_lock_lock_with_options();
  optedToHH2 = self->_optedToHH2;
  os_unfair_lock_unlock(&self->_lock);
  return optedToHH2;
}

- (int64_t)multiUserStatus
{
  os_unfair_lock_lock_with_options();
  multiUserStatus = self->_multiUserStatus;
  os_unfair_lock_unlock(&self->_lock);
  return multiUserStatus;
}

- (void)setThisDeviceResidentCapable:(BOOL)capable
{
  os_unfair_lock_lock_with_options();
  self->_thisDeviceResidentCapable = capable;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isThisDeviceResidentCapable
{
  os_unfair_lock_lock_with_options();
  thisDeviceResidentCapable = self->_thisDeviceResidentCapable;
  os_unfair_lock_unlock(&self->_lock);
  return thisDeviceResidentCapable;
}

- (NSArray)incomingHomeInvitations
{
  homeInvitations = [(HMHomeManager *)self homeInvitations];
  array = [homeInvitations array];

  return array;
}

- (unint64_t)options
{
  configuration = [(HMHomeManager *)self configuration];
  options = [configuration options];

  return options;
}

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMAccessory)currentAccessory
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  homes = [(HMHomeManager *)self homes];
  v3 = [homes countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(homes);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        accessories = [v7 accessories];
        v9 = [accessories countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(accessories);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              if ([v13 isCurrentAccessory])
              {
                v14 = v13;

                goto LABEL_19;
              }
            }

            v10 = [accessories countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [homes countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v4);
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (void)setCurrentHome:(id)home
{
  v16 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_currentHome, home);
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = homeCopy;
    v14 = 2048;
    v15 = selfCopy;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Set current home to: %@ with self: %p", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
}

- (HMHome)currentHome
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentHome;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPrimaryHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  primaryHome = self->_primaryHome;
  self->_primaryHome = homeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)primaryHome
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryHome;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isInitialMergeComplete
{
  os_unfair_lock_lock_with_options();
  initialMergeComplete = self->_initialMergeComplete;
  os_unfair_lock_unlock(&self->_lock);
  return initialMergeComplete;
}

- (void)setDelegate:(id)delegate
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting HMHomeManager delegate to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);

  if (WeakRetained == v4)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    objc_storeWeak(&selfCopy->_delegate, v4);
    initialMergeComplete = selfCopy->_initialMergeComplete;
    os_unfair_lock_unlock(&selfCopy->_lock);
    if (initialMergeComplete)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying client did update homes for delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (objc_opt_respondsToSelector())
      {
        context = [(HMHomeManager *)v12 context];
        delegateCaller = [context delegateCaller];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __29__HMHomeManager_setDelegate___block_invoke;
        v17[3] = &unk_1E754E5C0;
        v18 = v4;
        v19 = v12;
        [delegateCaller invokeBlock:v17];
      }
    }
  }
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (id)eventRouter
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (!self->_eventStoreStarted)
  {
    lastEventStore = self->_lastEventStore;
    if (lastEventStore)
    {
      if ([(HMELastEventStore *)lastEventStore startup])
      {
        self->_eventStoreStarted = 1;
      }

      else
      {
        v4 = objc_autoreleasePoolPush();
        selfCopy = self;
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v7;
          _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error starting event store!", &v11, 0xCu);
        }

        objc_autoreleasePoolPop(v4);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  xpcEventRouterClient = [(HMHomeManager *)self xpcEventRouterClient];
  eventRouter = [xpcEventRouterClient eventRouter];

  return eventRouter;
}

- (HMELastEventStore)lastEventStore
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastEventStore;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@HMHomeManager deallocated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMHomeManager *)selfCopy handleInstanceDestroyed];
  homes = [(HMHomeManager *)selfCopy homes];
  incomingHomeInvitations = [(HMHomeManager *)selfCopy incomingHomeInvitations];
  queue = [(_HMContext *)selfCopy->_context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__HMHomeManager_dealloc__block_invoke;
  block[3] = &unk_1E754E5C0;
  v10 = homes;
  v14 = v10;
  v11 = incomingHomeInvitations;
  v15 = v11;
  dispatch_async(queue, block);

  if (selfCopy->_serverGenerationCounterToken != -1)
  {
    [(HMDarwinNotificationProvider *)selfCopy->_darwinNotificationProvider notifyCancel:?];
  }

  if (selfCopy->_serverGenerationCounterDelayedConnectionToken != -1)
  {
    [(HMDarwinNotificationProvider *)selfCopy->_darwinNotificationProvider notifyCancel:?];
  }

  v12.receiver = selfCopy;
  v12.super_class = HMHomeManager;
  [(HMHomeManager *)&v12 dealloc];
}

void __24__HMHomeManager_dealloc__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) _unconfigure];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _unconfigure];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (HMHomeManager)initWithUUID:(id)d configuration:(id)configuration context:(id)context xpcEventRouterClient:(id)client lastEventStore:(id)store timerFactory:(id)factory darwinNotificationProvider:(id)provider privacySettingsProvider:(id)self0
{
  v85 = *MEMORY[0x1E69E9840];
  dCopy = d;
  configurationCopy = configuration;
  contextCopy = context;
  clientCopy = client;
  storeCopy = store;
  factoryCopy = factory;
  providerCopy = provider;
  settingsProviderCopy = settingsProvider;
  [MEMORY[0x1E69A2A38] setClassMappingForNSCoder];
  v19 = objc_alloc(MEMORY[0x1E69A29C0]);
  v20 = MEMORY[0x19EAEB2A0](self, a2);
  v21 = [v19 initWithName:v20];

  v82.receiver = self;
  v82.super_class = HMHomeManager;
  v22 = [(HMHomeManager *)&v82 init];
  if (v22)
  {
    v23 = [configurationCopy copy];
    v24 = *(v22 + 20);
    *(v22 + 20) = v23;

    v22[82] = [configurationCopy shouldConnect];
    *(v22 + 11) = -1;
    objc_storeStrong(v22 + 40, context);
    objc_storeStrong(v22 + 32, provider);
    v25 = _Block_copy(factoryCopy);
    v26 = *(v22 + 33);
    *(v22 + 33) = v25;

    objc_storeStrong(v22 + 27, settingsProvider);
    v72 = factoryCopy;
    if (initializeMappingsAndPaths_pred != -1)
    {
      dispatch_once(&initializeMappingsAndPaths_pred, &__block_literal_global_25877);
    }

    objc_storeStrong(v22 + 39, d);
    v27 = +[HMMutableArray array];
    v28 = *(v22 + 37);
    *(v22 + 37) = v27;

    *(v22 + 29) = -1;
    *(v22 + 41) = -1;
    *(v22 + 42) = -1;
    *(v22 + 37) = 0;
    v22[76] = 0;
    *(v22 + 43) = 0;
    v29 = +[HMMutableArray array];
    v30 = *(v22 + 28);
    *(v22 + 28) = v29;

    v22[83] = 0;
    *(v22 + 136) = xmmword_19BE37680;
    v31 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v32 = *(v22 + 38);
    *(v22 + 38) = v31;

    [*(v22 + 38) setMaxConcurrentOperationCount:1];
    v33 = objc_alloc_init(HMApplicationData);
    v34 = *(v22 + 16);
    *(v22 + 16) = v33;

    v35 = [[HMNetworkRouterFirewallRuleManager alloc] initWithHomeManager:v22];
    v36 = *(v22 + 49);
    *(v22 + 49) = v35;

    v37 = [[HMUserCloudShareManager alloc] initWithDataSource:v22];
    v38 = *(v22 + 50);
    *(v22 + 50) = v37;

    v39 = objc_alloc_init(HMAccessorySetupCoordinator);
    v40 = *(v22 + 51);
    *(v22 + 51) = v39;

    v41 = [MEMORY[0x1E696AB50] set];
    v42 = *(v22 + 5);
    *(v22 + 5) = v41;

    *(v22 + 22) = 0;
    objc_storeStrong(v22 + 47, client);
    objc_storeStrong(v22 + 8, store);
    v43 = [HMSoftwareUpdateDocumentationManager alloc];
    context = [v22 context];
    v45 = [(HMSoftwareUpdateDocumentationManager *)v43 initWithContext:context];
    v46 = *(v22 + 48);
    *(v22 + 48) = v45;

    v47 = [[HMWidgetManager alloc] initWithHomeManager:v22 context:contextCopy];
    v48 = *(v22 + 52);
    *(v22 + 52) = v47;

    if (([configurationCopy canUseCache] & 1) != 0 || objc_msgSend(configurationCopy, "canWriteToCache"))
    {
      v49 = +[HMFrameworkCacheManager sharedInstance];
      v50 = *(v22 + 45);
      *(v22 + 45) = v49;
    }

    if (([configurationCopy options] & 0x4000) != 0)
    {
      v51 = HMDispatchQueueNameString(v22, @"HMUserActionPredictionProvider");
      uTF8String = [v51 UTF8String];
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v54 = v53 = configurationCopy;
      v55 = dispatch_queue_create(uTF8String, v54);

      v56 = [[HMUserActionPredictionDuetDataSource alloc] initWithCacheManager:*(v22 + 45)];
      v57 = [HMUserActionPredictionProvider alloc];
      messageDispatcher = [*(v22 + 40) messageDispatcher];
      v59 = objc_alloc_init(HMUserActionPredictionTransformer);
      darwinNotificationProvider = [v22 darwinNotificationProvider];
      v61 = v57;
      configurationCopy = v53;
      v62 = [(HMUserActionPredictionProvider *)v61 initWithWorkQueue:v55 messageDispatcher:messageDispatcher UUID:dCopy dataSource:v22 predictionDataSource:v56 predictionTransformer:v59 darwinNotificationProvider:darwinNotificationProvider];
      v63 = *(v22 + 46);
      *(v22 + 46) = v62;
    }

    [v22 handleInstanceCreated];
    [v22 __preconfigure];
    if ([*(v22 + 20) isDiscretionary])
    {
      v64 = configurationCopy;
      v65 = objc_autoreleasePoolPush();
      v66 = v22;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543362;
        v84 = v68;
        _os_log_impl(&dword_19BB39000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Deferring starting for discretionary client", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v65);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __152__HMHomeManager_initWithUUID_configuration_context_xpcEventRouterClient_lastEventStore_timerFactory_darwinNotificationProvider_privacySettingsProvider___block_invoke;
      block[3] = &unk_1E754E2A8;
      v81 = v66;
      v69 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
      queue = [*(v22 + 40) queue];
      dispatch_async(queue, v69);

      factoryCopy = v72;
      configurationCopy = v64;
    }

    else
    {
      [v22 __start];
      factoryCopy = v72;
    }
  }

  [v21 invalidate];

  return v22;
}

- (HMHomeManager)initWithConfiguration:(id)configuration
{
  v42[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v6 = [[HMDelegateCaller alloc] initWithQueue:0];
  delegateQueue = [configurationCopy delegateQueue];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v9 = [delegateQueue isEqual:mainQueue];

  v39 = delegateQueue;
  if ((v9 & 1) == 0)
  {
    v10 = [HMDelegateCaller delegateCallerWithOperationQueue:delegateQueue];

    v6 = v10;
  }

  v11 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc"];
  selfCopy = self;
  v12 = HMDispatchQueueNameString(self, 0);
  uTF8String = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create(uTF8String, v14);
  [(HMXPCMessageTransportConfiguration *)v11 setQueue:v15];

  v41[0] = @"HMPrincipalClassKey";
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v42[0] = v17;
  v41[1] = @"inactiveUpdatingLevel";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "inactiveUpdatingLevel")}];
  v42[1] = v18;
  v41[2] = @"options";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "options")}];
  v42[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

  v37 = v11;
  v21 = [[HMXPCClient alloc] initWithConfiguration:v11 userInfo:v20];
  v40 = v6;
  v22 = [[_HMContext alloc] initWithXPCClient:v21 delegateCaller:v6];
  if (HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken != -1)
  {
    dispatch_once(&HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken, &__block_literal_global_164);
  }

  if (HMIsCurrentProcessSPIEntitled_spiEntitled == 1)
  {
    if (![configurationCopy canUseCache])
    {
      goto LABEL_11;
    }

    if (HMIsCurrentProcessAnExtension_onceToken != -1)
    {
      dispatch_once(&HMIsCurrentProcessAnExtension_onceToken, &__block_literal_global_187);
    }

    if (HMIsCurrentProcessAnExtension_isCurrentProcessAnExtension & 1) != 0 || ([MEMORY[0x1E696AAE8] mainBundle], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "bundleIdentifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", @"com.apple.AssistantServices"), v24, v23, (v25))
    {
LABEL_11:
      initInMemoryStore = [objc_alloc(MEMORY[0x1E69A45F8]) initInMemoryStore];
      v27 = 0;
    }

    else
    {
      initInMemoryStore = +[HMHomeManager sharedEventStore];
      v27 = 1;
    }

    v28 = [HMXPCEventRouterClient alloc];
    queue = [(_HMContext *)v22 queue];
    messageDispatcher = [(_HMContext *)v22 messageDispatcher];
    LOBYTE(v36) = v27;
    v31 = [(HMXPCEventRouterClient *)v28 initWithMessageTargetUUID:v5 queue:queue messageDispatcher:messageDispatcher changeRegistrationsMessageName:@"hm.evt.reg.change" updateMessageName:@"hm.evt.updates" storeReadHandle:initInMemoryStore storeWriteHandle:initInMemoryStore useBackgroundTaskAssertion:v36];
  }

  else
  {
    initInMemoryStore = 0;
    v31 = 0;
  }

  v32 = objc_alloc_init(HMDarwinNotificationProvider);
  v33 = objc_alloc_init(_HMPrivacySettingsProvider);
  v34 = [(HMHomeManager *)selfCopy initWithUUID:v5 configuration:configurationCopy context:v22 xpcEventRouterClient:v31 lastEventStore:initInMemoryStore timerFactory:&__block_literal_global_33524 darwinNotificationProvider:v32 privacySettingsProvider:v33];

  return v34;
}

id __39__HMHomeManager_initWithConfiguration___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x1E69A2A68]) initWithTimeInterval:a3 options:a1];

  return v3;
}

- (HMHomeManager)initWithOptions:(unint64_t)options
{
  v4 = [[HMHomeManagerConfiguration alloc] initWithOptions:options cachePolicy:0];
  v5 = [(HMHomeManager *)self initWithConfiguration:v4];

  return v5;
}

- (HMHomeManager)init
{
  v3 = +[HMHomeManagerConfiguration defaultConfiguration];
  v4 = [(HMHomeManager *)self initWithConfiguration:v3];

  return v4;
}

+ (void)fetchSetupModeWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "+[HMHomeManager fetchSetupModeWithCompletion:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v5 = completionCopy;
  v6 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.SetupMode"];
  v7 = MEMORY[0x1E69A2A10];
  v8 = objc_alloc(MEMORY[0x1E69A2A00]);
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v10 = [v8 initWithTarget:v9];
  v11 = [v7 messageWithName:@"HMHM.fetchSetupMode" destination:v10 payload:0];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__HMHomeManager_fetchSetupModeWithCompletion___block_invoke;
  v20[3] = &unk_1E754C0F0;
  v21 = v5;
  v12 = v5;
  [v11 setResponseHandler:v20];
  messageDispatcher = [(_HMContext *)v6 messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

void __46__HMHomeManager_fetchSetupModeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 hmf_numberForKey:@"mode"];
  if (!v6 && v5)
  {
    [v5 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)sharedEventStore
{
  if (sharedEventStore_onceToken != -1)
  {
    dispatch_once(&sharedEventStore_onceToken, &__block_literal_global_529);
  }

  v3 = sharedEventStore_eventStore;

  return v3;
}

void __33__HMHomeManager_sharedEventStore__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = HMCreateFrameworkCacheDirectory();
  v4 = [v0 stringWithFormat:@"%@/%@", v1, @"EventRouterLastEventStoreCache"];

  v2 = [objc_alloc(MEMORY[0x1E69A45F8]) initWithFileName:v4];
  v3 = sharedEventStore_eventStore;
  sharedEventStore_eventStore = v2;
}

- (BOOL)removeAllHomeKitPairingIdentities
{
  v37 = *MEMORY[0x1E69E9840];
  context = [(HMHomeManager *)self context];
  if (context)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to delete all the HomeKit Pairing Identities before TTSU... Start", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)selfCopy uuid];
    v12 = [v10 initWithTarget:uuid];
    v13 = [v9 initWithName:@"HMHM.RemoveAllPairingIdentities" destination:v12 payload:MEMORY[0x1E695E0F8]];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__HMHomeManager_PairingIdentity__removeAllHomeKitPairingIdentities__block_invoke;
    v29[3] = &unk_1E754ABB8;
    v29[4] = selfCopy;
    p_buf = &buf;
    v14 = v4;
    v30 = v14;
    [v13 setResponseHandler:v29];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13];

    v16 = dispatch_time(0, 20000000000);
    LOBYTE(v12) = dispatch_group_wait(v14, v16) == 0;
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    if (v12)
    {
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *v32 = 138543362;
        v33 = v27;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Going to delete all the HomeKit Pairing Identities before TTSU... End", v32, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = *(*(&buf + 1) + 24);
    }

    else
    {
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *v32 = 138543362;
        v33 = v20;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Timed out while deleting the HomeKit pairing identities.", v32, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context. Please initialize HomeKit properly", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  return v21 & 1;
}

void __67__HMHomeManager_PairingIdentity__removeAllHomeKitPairingIdentities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Removing of all the HomeKit Pairing Identities finished with error : %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all the HomeKit Pairing Identities.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)deleteDatabaseEntityWithModelID:(id)d completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  context = [(HMHomeManager *)self context];
  if (!completionCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager(HMHomeManagerAdaptive) deleteDatabaseEntityWithModelID:completion:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = context;
  if (context)
  {
    v10 = MEMORY[0x1E69A2A10];
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)self uuid];
    v13 = [v11 initWithTarget:uuid];
    v31 = @"modelId";
    v32 = dCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v15 = [v10 messageWithName:@"HMHM.deleteHH2Entity" destination:v13 payload:v14];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __83__HMHomeManager_HMHomeManagerAdaptive__deleteDatabaseEntityWithModelID_completion___block_invoke;
    v28[3] = &unk_1E754DE00;
    v16 = v9;
    v29 = v16;
    v30 = completionCopy;
    [v15 setResponseHandler:v28];
    messageDispatcher = [v16 messageDispatcher];
    [messageDispatcher sendMessage:v15 completionHandler:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2080;
      v36 = "[HMHomeManager(HMHomeManagerAdaptive) deleteDatabaseEntityWithModelID:completion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __83__HMHomeManager_HMHomeManagerAdaptive__deleteDatabaseEntityWithModelID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if (v7)
  {
    v5 = [*(a1 + 32) delegateCaller];
    [v5 callCompletion:*(a1 + 40) obj:0 error:v7];
  }

  else
  {
    v5 = [a3 hmf_stringForKey:@"entity"];
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 40) obj:v5 error:0];
  }
}

- (void)checkIsUsingProductionObjectModelWithCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHomeManager *)self context];
  if (!completionCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager(HMHomeManagerAdaptive) checkIsUsingProductionObjectModelWithCompletion:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v6 = context;
  if (context)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHomeManager *)self uuid];
    v10 = [v8 initWithTarget:uuid];
    v11 = [v7 messageWithName:@"HMHM.checkIsUsingProductionObjectModel" destination:v10 payload:0];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__HMHomeManager_HMHomeManagerAdaptive__checkIsUsingProductionObjectModelWithCompletion___block_invoke;
    v24[3] = &unk_1E754DE00;
    v12 = v6;
    v25 = v12;
    v26 = completionCopy;
    [v11 setResponseHandler:v24];
    messageDispatcher = [v12 messageDispatcher];
    [messageDispatcher sendMessage:v11 completionHandler:0];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v17;
      v29 = 2080;
      v30 = "[HMHomeManager(HMHomeManagerAdaptive) checkIsUsingProductionObjectModelWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __88__HMHomeManager_HMHomeManagerAdaptive__checkIsUsingProductionObjectModelWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 40);
    v8 = 0;
    v9 = v11;
  }

  else
  {
    v10 = [a3 hmf_BOOLForKey:@"usingProductionObjectModel"];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 40);
    v8 = v10;
    v9 = 0;
  }

  [v5 callCompletion:v7 value:v8 error:v9];
}

- (void)dumpCloudDatabase:(BOOL)database localDatabase:(BOOL)localDatabase workingDatabase:(BOOL)workingDatabase fakeCloudModels:(BOOL)models completion:(id)completion
{
  modelsCopy = models;
  workingDatabaseCopy = workingDatabase;
  localDatabaseCopy = localDatabase;
  databaseCopy = database;
  v43 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager(HMHomeManagerAdaptive) dumpCloudDatabase:localDatabase:workingDatabase:fakeCloudModels:completion:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v31;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v13 = completionCopy;
  context = [(HMHomeManager *)self context];
  v14 = MEMORY[0x1E69A2A10];
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v17 = [v15 initWithTarget:uuid];
  v37[0] = @"c";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:databaseCopy];
  v38[0] = v18;
  v37[1] = @"f";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:modelsCopy];
  v38[1] = v19;
  v37[2] = @"l";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:localDatabaseCopy];
  v38[2] = v20;
  v37[3] = @"w";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:workingDatabaseCopy];
  v38[3] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v23 = [v14 messageWithName:@"HMHM.dumpDatabase" destination:v17 payload:v22];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __115__HMHomeManager_HMHomeManagerAdaptive__dumpCloudDatabase_localDatabase_workingDatabase_fakeCloudModels_completion___block_invoke;
  v34[3] = &unk_1E754DE00;
  v35 = context;
  v36 = v13;
  v24 = v13;
  v25 = context;
  [v23 setResponseHandler:v34];
  messageDispatcher = [v25 messageDispatcher];
  [messageDispatcher sendMessage:v23 completionHandler:0];
}

void __115__HMHomeManager_HMHomeManagerAdaptive__dumpCloudDatabase_localDatabase_workingDatabase_fakeCloudModels_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = 0;
LABEL_3:
    v8 = v5;
    goto LABEL_6;
  }

  v6 = [a3 hmf_dataForKey:@"d"];
  if (!v6)
  {
    v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:
  v7 = [*(a1 + 32) delegateCaller];
  [v7 callCompletion:*(a1 + 40) obj:v6 error:v8];
}

- (void)enableUARPPacketCapture:(BOOL)capture capturePath:(id)path completionHandler:(id)handler
{
  captureCopy = capture;
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager(HMHomeManagerAdaptive) enableUARPPacketCapture:capturePath:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v10 = handlerCopy;
  v33[0] = @"HMHomeManagerEnableUARPPacketCaptureEnableMessageKey";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:captureCopy];
  v33[1] = @"HMHomeManagerEnableUARPPacketCapturePathMessageKey";
  v34[0] = v11;
  v34[1] = pathCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v13 = objc_alloc(MEMORY[0x1E69A2A10]);
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v16 = [v14 initWithTarget:uuid];
  v17 = [v13 initWithName:@"HMHomeManagerEnableUARPPacketCaptureMessage" destination:v16 payload:v12];

  context = [(HMHomeManager *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [v17 identifier];
  v21 = _Block_copy(v10);
  [pendingRequests addCompletionBlock:v21 forIdentifier:identifier];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __94__HMHomeManager_HMHomeManagerAdaptive__enableUARPPacketCapture_capturePath_completionHandler___block_invoke;
  v31[3] = &unk_1E754DE00;
  v31[4] = self;
  v32 = v10;
  v22 = v10;
  [v17 setResponseHandler:v31];
  context2 = [(HMHomeManager *)self context];
  messageDispatcher = [context2 messageDispatcher];
  [messageDispatcher sendMessage:v17];
}

void __94__HMHomeManager_HMHomeManagerAdaptive__enableUARPPacketCapture_capturePath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 context];
  v5 = [v6 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)_endActiveAssertion:(id)assertion
{
  v16 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = assertionCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid assertion object" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = assertionCopy;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Ending active assertion: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [v6 invalidate];
}

- (id)_beginActiveAssertionWithReason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = reasonCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Taking active assertion with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.HomeKit.ActiveAssertion.%@", reasonCopy];
  v10 = [__HMActiveAssertion alloc];
  context = [(HMHomeManager *)selfCopy context];
  messageTargetUUID = [(HMHomeManager *)selfCopy messageTargetUUID];
  v13 = [(__HMActiveAssertion *)v10 initWithName:reasonCopy context:context messageTargetUUID:messageTargetUUID];

  [(__HMActiveAssertion *)v13 acquire:0];
  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Took active assertion: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);

  return v13;
}

- (void)prepareForDiagnosticExtensionWithCompletion:(id)completion
{
  completionCopy = completion;
  context = [(HMHomeManager *)self context];
  v6 = MEMORY[0x1E69A2A10];
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHomeManager *)self uuid];
  v9 = [v7 initWithTarget:uuid];
  v10 = [v6 messageWithName:@"HMHM.prepareForDiagnosticExtension" destination:v9 payload:MEMORY[0x1E695E0F8]];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82__HMHomeManager_DiagnosticExtension__prepareForDiagnosticExtensionWithCompletion___block_invoke;
  v17 = &unk_1E754DE00;
  v18 = context;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = context;
  [v10 setResponseHandler:&v14];
  messageDispatcher = [v12 messageDispatcher];
  [messageDispatcher sendMessage:v10 completionHandler:0];
}

void __82__HMHomeManager_DiagnosticExtension__prepareForDiagnosticExtensionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (BOOL)accessorySettingsDataSource:(id)source transformHomeUUID:(id)d mediaSystemUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientMediaSystemIdentifier:(id *)systemIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dCopy = d;
  iDCopy = iD;
  currentHomes = [(HMHomeManager *)self currentHomes];
  v16 = [currentHomes firstItemWithUUID:dCopy];

  if (v16)
  {
    v17 = [v16 mediaSystemWithUUID:iDCopy];
    v18 = v17 != 0;
    if (v17)
    {
      if (identifier)
      {
        *identifier = [v16 uniqueIdentifier];
      }

      if (systemIdentifier)
      {
        *systemIdentifier = [v17 uniqueIdentifier];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v26;
        v30 = 2112;
        v31 = iDCopy;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no media system with uuid: %@ home: %@", &v28, 0x20u);
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
      v28 = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no home with uuid: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (BOOL)accessorySettingsDataSource:(id)source transformHomeUUID:(id)d accessoryUUID:(id)iD toClientHomeIdentifier:(id *)identifier clientAccessoryIdentifier:(id *)accessoryIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dCopy = d;
  iDCopy = iD;
  currentHomes = [(HMHomeManager *)self currentHomes];
  v16 = [currentHomes firstItemWithUUID:dCopy];

  if (v16)
  {
    v17 = [v16 accessoryWithUUID:iDCopy];
    v18 = v17 != 0;
    if (v17)
    {
      if (identifier)
      {
        *identifier = [v16 uniqueIdentifier];
      }

      if (accessoryIdentifier)
      {
        *accessoryIdentifier = [v17 uniqueIdentifier];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v26;
        v30 = 2112;
        v31 = iDCopy;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no accessory with uuid: %@ home: %@", &v28, 0x20u);
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
      v28 = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to transform to client identifiers due to no home with uuid: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (id)createAccessorySettingsMessengerWithHomeUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating accessory settings messenger with home uuid: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  accessorySettingsMetricsDispatcher = [(HMHomeManager *)selfCopy accessorySettingsMetricsDispatcher];
  if (!accessorySettingsMetricsDispatcher)
  {
    _HMFPreconditionFailure();
  }

  v10 = accessorySettingsMetricsDispatcher;
  v11 = [HMAccessorySettingsMessenger messageTargetUUIDWithHomeUUID:dCopy];
  v12 = [HMAccessorySettingsMessenger alloc];
  context = [(HMHomeManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  v15 = [(HMAccessorySettingsMessenger *)v12 initWithMessageDispatcher:messageDispatcher messageTargetUUID:v11 metricsDispatcher:v10];

  return v15;
}

- (id)createAccessorySettingsMetricsDispatcherWithCoreAnalyticsMetricDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v4 = [[HMAccessorySettingsMetricsDispatcher alloc] initWithCoreAnalyticsMetricDispatcher:dispatcherCopy];

  return v4;
}

- (void)configureAccessorySettingsMetricsDispatcherWithFactory:(id)factory
{
  v14 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring accessory settings metrics dispatcher", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  coreAnalyticsMetricEventDispatcher = [(HMHomeManager *)selfCopy coreAnalyticsMetricEventDispatcher];
  if (!coreAnalyticsMetricEventDispatcher)
  {
    _HMFPreconditionFailure();
  }

  v10 = coreAnalyticsMetricEventDispatcher;
  v11 = [factoryCopy createAccessorySettingsMetricsDispatcherWithCoreAnalyticsMetricDispatcher:coreAnalyticsMetricEventDispatcher];
  [(HMHomeManager *)selfCopy setAccessorySettingsMetricsDispatcher:v11];
}

- (void)createAutoAddWalletKeySupressionAssertionWithIncomingInvitation:(id)invitation completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  completionCopy = completion;
  homeUUID = [invitationCopy homeUUID];
  identifier = [invitationCopy identifier];
  v10 = [[HMAutoAddWalletKeySupressionAssertion alloc] initWithHomeManager:self homeUUID:homeUUID];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v14;
    v24 = 2112;
    v25 = homeUUID;
    v26 = 2112;
    v27 = identifier;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Acquiring auto add wallet key suppression assertion for home: %@ invitation: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__HMHomeManager_Wallet__createAutoAddWalletKeySupressionAssertionWithIncomingInvitation_completion___block_invoke;
  v18[3] = &unk_1E754C7E8;
  v18[4] = selfCopy;
  v19 = identifier;
  v20 = v10;
  v21 = completionCopy;
  v15 = v10;
  v16 = completionCopy;
  v17 = identifier;
  [(HMAutoAddWalletKeySupressionAssertion *)v15 acquireWithCompletion:v18];
}

void __100__HMHomeManager_Wallet__createAutoAddWalletKeySupressionAssertionWithIncomingInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
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
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to acquire auto add wallet key suppression assertion for invitation %@:%@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully acquired auto add wallet key suppression assertion for invitation: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 56) + 16))();
}

- (void)findVendorAccessoryWithHAPPublicKey:(id)key completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  handlerCopy = handler;
  context = [(HMHomeManager *)self context];
  if (!handlerCopy)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeManager(Vendor) findVendorAccessoryWithHAPPublicKey:completionHandler:]", @"completion"];
    v41 = objc_autoreleasePoolPush();
    selfCopy = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v44;
      v55 = 2112;
      v56 = v40;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v40 userInfo:0];
    objc_exception_throw(v45);
  }

  v10 = context;
  if (context)
  {
    if ([(HMHomeManager *)self isInitialMergeComplete])
    {
      v11 = objc_alloc(MEMORY[0x1E69A29C0]);
      v12 = MEMORY[0x1E696AEC0];
      v13 = MEMORY[0x19EAEB2A0](self, a2);
      v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Vendor/HMHomeManager+Vendor.m", 39];
      v50 = [v11 initWithName:v14];

      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        identifier = [v50 identifier];
        shortDescription = [identifier shortDescription];
        *buf = 138543874;
        v54 = v18;
        v55 = 2114;
        v56 = shortDescription;
        v57 = 2112;
        v58 = keyCopy;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Find vendor accessory with HAP LTPK %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = MEMORY[0x1E69A2A10];
      v22 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHomeManager *)selfCopy2 uuid];
      v24 = [v22 initWithTarget:uuid];
      v51 = @"kAccessoryPublicKey";
      v52 = keyCopy;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v26 = [v21 messageWithName:@"HMHM.findVendorAccessory" destination:v24 payload:v25];

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __79__HMHomeManager_Vendor__findVendorAccessoryWithHAPPublicKey_completionHandler___block_invoke;
      v46[3] = &unk_1E754D030;
      v46[4] = selfCopy2;
      v47 = v50;
      v27 = v10;
      v48 = v27;
      v49 = handlerCopy;
      [v26 setResponseHandler:v46];
      messageDispatcher = [v27 messageDispatcher];
      [messageDispatcher sendMessage:v26];

      __HMFActivityScopeLeave();
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v54 = v37;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@findVendorAccessory... called before homeManagerDidUpdateHomes:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      delegateCaller = [v10 delegateCaller];
      v39 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
      [delegateCaller callCompletion:handlerCopy obj:0 error:v39];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v32;
      v55 = 2080;
      v56 = "[HMHomeManager(Vendor) findVendorAccessoryWithHAPPublicKey:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v33);
  }
}

void __79__HMHomeManager_Vendor__findVendorAccessoryWithHAPPublicKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v38 = v11;
      v39 = 2114;
      v40 = v13;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Find vendor accessory failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [*(a1 + 48) delegateCaller];
    [v14 callCompletion:*(a1 + 56) obj:0 error:v5];
  }

  else
  {
    v14 = [v6 uuidFromStringForKey:@"kHomeUUID"];
    v15 = [v7 uuidFromStringForKey:@"kAccessoryUUID"];
    v16 = v15;
    if (v14 && v15 && ([*(a1 + 32) _homeWithUUID:v14], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "accessoryWithUUID:", v16), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v34 = [*(a1 + 40) identifier];
        [v34 shortDescription];
        v23 = v33 = v20;
        [v18 shortDescription];
        v24 = v35 = v19;
        *buf = 138543874;
        v38 = v22;
        v39 = 2114;
        v40 = v23;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Found accessory %@", buf, 0x20u);

        v19 = v35;
        v20 = v33;
      }

      objc_autoreleasePoolPop(v19);
      v25 = [*(a1 + 48) delegateCaller];
      [v25 callCompletion:*(a1 + 56) obj:v18 error:0];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) identifier];
        [v30 shortDescription];
        v36 = v26;
        v32 = v31 = v16;
        *buf = 138543618;
        v38 = v29;
        v39 = 2114;
        v40 = v32;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] No accessory found", buf, 0x16u);

        v16 = v31;
        v26 = v36;
      }

      objc_autoreleasePoolPop(v26);
      v18 = [*(a1 + 48) delegateCaller];
      [v18 callCompletion:*(a1 + 56) obj:0 error:0];
    }
  }
}

- (id)createAccessorySettingsDataSource
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating accessory settings data source", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  accessorySettingsMetricsDispatcher = [(HMHomeManager *)selfCopy accessorySettingsMetricsDispatcher];
  if (!accessorySettingsMetricsDispatcher)
  {
    _HMFPreconditionFailure();
  }

  v8 = accessorySettingsMetricsDispatcher;
  v9 = [HMAccessorySettingsDataSource alloc];
  context = [(HMHomeManager *)selfCopy context];
  v11 = +[HMLocalization sharedManager];
  eventRouter = [(HMHomeManager *)selfCopy eventRouter];
  lastEventStore = [(HMHomeManager *)selfCopy lastEventStore];
  xpcEventRouterClient = [(HMHomeManager *)selfCopy xpcEventRouterClient];
  v15 = [(HMAccessorySettingsDataSource *)v9 initWithContext:context localizationManager:v11 messengerFactory:selfCopy subscriptionProvider:eventRouter lastEventStoreReadHandle:lastEventStore eventRouterXPCClient:xpcEventRouterClient metricsDispatcher:v8];

  [(HMAccessorySettingsDataSource *)v15 setDataSource:selfCopy];

  return v15;
}

- (void)configureCoreAnalyticsMetricEventDispatcherWithFactory:(id)factory
{
  v12 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring core analytics metric event dispatcher", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  createCoreAnalyticsMetricEventDispatcher = [factoryCopy createCoreAnalyticsMetricEventDispatcher];
  [(HMHomeManager *)selfCopy setCoreAnalyticsMetricEventDispatcher:createCoreAnalyticsMetricEventDispatcher];
}

- (void)handleInstanceDestroyed
{
  if (isInternalBuild())
  {
    os_unfair_lock_lock_with_options();
    instanceTracker = [objc_opt_class() instanceTracker];
    [instanceTracker removeObject:self];

    os_unfair_lock_unlock(&instanceTrackerLock);
  }
}

@end