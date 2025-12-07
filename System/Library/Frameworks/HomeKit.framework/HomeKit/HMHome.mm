@interface HMHome
+ (BOOL)isValidMediaPassword:(id)password error:(id *)error;
+ (id)errorByDeviceWithOverallError:(id)error;
+ (id)logCategory;
+ (id)passSerialNumberWithHomeUUID:(id)d userUUID:(id)iD;
- (BOOL)_addActionSetFromResponse:(id)response completion:(id)completion;
- (BOOL)_addEventTriggerFromResponse:(id)response withEventTrigger:(id)trigger completion:(id)completion;
- (BOOL)_addTimerTriggerFromResponse:(id)response withTimerTrigger:(id)trigger completion:(id)completion;
- (BOOL)_addTrigger:(id)trigger triggerUUID:(id)d completion:(id)completion;
- (BOOL)_areAllUserInviteInformationValid:(id)valid;
- (BOOL)_handleActionSetRemovedFromResponse:(id)response responsePayload:(id)payload;
- (BOOL)_mergeAccessories:(id)accessories;
- (BOOL)_mergeAccessoryProtectionGroups:(id)groups;
- (BOOL)_mergeActionSets:(id)sets;
- (BOOL)_mergeIsFeatureHomeTheaterQFAEnabled:(BOOL)enabled;
- (BOOL)_mergeOutgoingInvitations:(id)invitations;
- (BOOL)_mergeResidentDevices:(id)devices;
- (BOOL)_mergeRooms:(id)rooms;
- (BOOL)_mergeServiceGroups:(id)groups;
- (BOOL)_mergeTriggerOwnedActionSets:(id)sets;
- (BOOL)_mergeTriggers:(id)triggers;
- (BOOL)_mergeUsers:(id)users;
- (BOOL)_mergeZones:(id)zones;
- (BOOL)_removeTriggerFromResponse:(id)response completion:(id)completion;
- (BOOL)_setSupportedFeature:(int64_t)feature enabled:(BOOL)enabled;
- (BOOL)adoptTriggerOwnedActionSet:(id)set;
- (BOOL)areAutomationBuildersSupported;
- (BOOL)areBulletinNotificationsSupported;
- (BOOL)areValidScheduleEntries:(id)entries forState:(unint64_t)state;
- (BOOL)didOnboardEventLog;
- (BOOL)dismissedWalletKeyUWBUnlockOnboarding;
- (BOOL)hasAnyUserAcknowledgedCameraRecordingOnboarding;
- (BOOL)hasOnboardedForAccessCode;
- (BOOL)hasOnboardedForWalletKey;
- (BOOL)isAutomaticSoftwareUpdateEnabled;
- (BOOL)isAutomaticThirdPartyAccessorySoftwareUpdateEnabled;
- (BOOL)isEventLogEnabled;
- (BOOL)isMediaPeerToPeerEnabled;
- (BOOL)isMultiUserEnabled;
- (BOOL)isPrimary;
- (BOOL)isUpdatedToROAR;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)supportsAddingNetworkRouter;
- (BOOL)supportsResidentSelection;
- (BOOL)validateBuilder:(id)builder error:(id *)error;
- (CLLocation)homeLocation;
- (HMAccessorySoftwareUpdateControllerV2)softwareUpdateController;
- (HMActionSet)builtinActionSetOfType:(NSString *)actionSetType;
- (HMApplicationData)applicationData;
- (HMFMessageDestination)messageDestination;
- (HMHome)initWithCoder:(id)coder;
- (HMHome)initWithName:(id)name uuid:(id)uuid accessories:(id)accessories mediaSystems:(id)systems;
- (HMHomeDelegatePrivate)_privateDelegate;
- (HMHomeManager)homeManager;
- (HMHomePersonManager)personManager;
- (HMHomePersonManagerSettings)personManagerSettings;
- (HMPersonSettingsManager)personSettingsManager;
- (HMResidentDevice)userSelectedPreferredResident;
- (HMUser)currentUser;
- (NSArray)accessories;
- (NSArray)accessoryProtectionGroups;
- (NSArray)actionSets;
- (NSArray)autoSelectedPreferredResidents;
- (NSArray)rooms;
- (NSArray)serviceGroups;
- (NSArray)servicesWithTypes:(NSArray *)serviceTypes;
- (NSArray)triggerOwnedActionSets;
- (NSArray)triggers;
- (NSArray)users;
- (NSArray)zones;
- (NSSet)supportedFeatures;
- (NSString)description;
- (NSString)matterControllerID;
- (NSString)mediaPassword;
- (NSString)name;
- (NSString)walletKeyPassSerialNumber;
- (NSTimeZone)timeZone;
- (NSUUID)threadNetworkCredentialsUUID;
- (NSUUID)uniqueIdentifier;
- (id)__defaultProgressHandlerForAddAccessory;
- (id)__responseHandlerForRequests:(id)requests progressHandler:(id)handler completionHandler:(id)completionHandler activity:(id)activity;
- (id)_addObjectOfClass:(void *)class fromResponse:(void *)response toArray:;
- (id)_createFailedAccessoriesListFromError:(id)error;
- (id)_encodeEvents:(void *)events error:;
- (id)_encodeTriggerBuilder:(void *)builder error:;
- (id)_findCharacteristic:(id)characteristic forService:(id)service accessoryUUID:(id)d;
- (id)_findService:(id)service accessoryUUID:(id)d;
- (id)_findUserWithID:(id)d;
- (id)_getContainerForAppData:(id)data;
- (id)_getUserWithUUID:(id)d;
- (id)accessoryInfoFetch;
- (id)accessoryUUIDForIdentifier:(id)identifier;
- (id)accessoryWithIdsIdentifier:(id)identifier;
- (id)accessoryWithUUID:(id)d;
- (id)accessoryWithUniqueIdentifier:(id)identifier;
- (id)actionSetWithName:(id)name;
- (id)actionSetWithUUID:(id)d;
- (id)administrator;
- (id)allUsers;
- (id)assistantIdentifier;
- (id)communalUsers;
- (id)controlTargets;
- (id)createAccessCodeManager;
- (id)createActionSetWithName:(id)name type:(id)type uuid:(id)uuid;
- (id)createAndAddActionSetWithName:(id)name type:(id)type uuid:(id)uuid;
- (id)createHomeAudioAnalysisEventSubscriber;
- (id)createSiriEndpointProfilesMessenger;
- (id)delegate;
- (id)encodeActionSetBuilder:(id)builder error:(id *)error;
- (id)encodeEventTriggerBuilder:(id)builder error:(id *)error;
- (id)lightProfileWithProfileUUID:(id)d;
- (id)location;
- (id)logIdentifier;
- (id)mediaDestinationsWithHomeTheaterSupportedOptions;
- (id)mediaDestinationsWithSupportedOptions:(unint64_t)options;
- (id)mediaProfileWithProfileUUID:(id)d;
- (id)mediaProfileWithUUID:(id)d;
- (id)mediaSystemWithUUID:(id)d;
- (id)mediaSystemWithUniqueIdentifier:(id)identifier;
- (id)mediaSystems;
- (id)newActionSetBuilder;
- (id)newActionSetBuilderWithName:(id)name;
- (id)newEventTriggerBuilder;
- (id)newEventTriggerBuilderWithName:(id)name events:(id)events endEvents:(id)endEvents recurrences:(id)recurrences predicate:(id)predicate;
- (id)newEventTriggerBuilderWithName:(id)name events:(id)events predicate:(id)predicate;
- (id)newTimerTriggerBuilder;
- (id)newTimerTriggerBuilderWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrence:(id)recurrence;
- (id)newTimerTriggerBuilderWithName:(id)name significantEvent:(id)event significantEventOffset:(id)offset recurrences:(id)recurrences;
- (id)outgoingInvitations;
- (id)owner;
- (id)personManagerWithUUID:(id)d;
- (id)photosPersonManagerWithUUID:(id)d;
- (id)profileWithUniqueIdentifier:(id)identifier;
- (id)removeMediaSystemRequestResponseHandlerWithMediaSystem:(id)system context:(id)context messageIdentifier:(id)identifier completionHandler:(id)handler;
- (id)residentDevices;
- (id)restrictedGuests;
- (id)roomWithName:(id)name;
- (id)roomWithUUID:(id)d;
- (id)serviceGroupWithName:(id)name;
- (id)serviceGroupWithUUID:(id)d;
- (id)targetControllers;
- (id)triggerOwnedActionSetWithUUID:(id)d;
- (id)triggerWithName:(id)name;
- (id)triggerWithUUID:(id)d;
- (id)userActionPredictionController;
- (id)userFromPayload:(id)payload;
- (id)userWithUUID:(id)d;
- (id)zoneWithName:(id)name;
- (id)zoneWithUUID:(id)d;
- (int64_t)homeLocationStatus;
- (int64_t)minimumMediaUserPrivilege;
- (int64_t)protectionMode;
- (unint64_t)networkRouterSupport;
- (unint64_t)networkRouterSupportDisableReason;
- (void)__configureWithContext:(id)context homeManager:(id)manager;
- (void)__handleExecuteRequest:(id)request activity:(id)activity batchRequest:(id)batchRequest;
- (void)__updateHomeAccessControlFromResponsePayload:(id)payload forUser:(id)user;
- (void)__updateLocation:(id)location locationStatus:(int64_t)status;
- (void)_addActionSetWithName:(id)name completionHandler:(id)handler;
- (void)_addRoomWithName:(id)name completionHandler:(id)handler;
- (void)_addServiceGroupWithName:(id)name completionHandler:(id)handler;
- (void)_addTrigger:(id)trigger completionHandler:(id)handler;
- (void)_addZoneWithName:(id)name completionHandler:(id)handler;
- (void)_assignAccessory:(id)accessory toRoom:(id)room completionHandler:(id)handler;
- (void)_callDelegateDidOnboardEventLog;
- (void)_callDelegateDidUpdateEventLogEnabled;
- (void)_callProgressHandler:(id)handler updatingAccessoryDescription:(id)description fromMessage:(id)message;
- (void)_cancelPairingForAccessoryWithDescription:(id)description completionHandler:(id)handler;
- (void)_cancelPairingForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)_clearRequestHandlerForMessageName:(id)name;
- (void)_configureOutgoingInvitation:(id)invitation;
- (void)_continuePairingForAccessoryWithUUID:(id)d setupCode:(id)code onboardingSetupPayloadString:(id)string completionHandler:(id)handler;
- (void)_didAddAccessoryNetworkProtectionGroup:(id)group;
- (void)_didRemoveAccessoryNetworkProtectionGroup:(id)group;
- (void)_didUpdateAccessoryNetworkProtectionGroup:(id)group;
- (void)_didUpdateNetworkRouterSupport;
- (void)_executeActionSet:(id)set activity:(id)activity reportContext:(id)context completionHandler:(id)handler;
- (void)_handleAccessoryAddedNotification:(id)notification;
- (void)_handleAccessoryConnectivityChangedNotification:(id)notification;
- (void)_handleAccessoryErrorNotification:(id)notification;
- (void)_handleAccessoryInfoUpdatedNotification:(id)notification;
- (void)_handleAccessoryNetworkProtectionGroupAddedNotification:(id)notification;
- (void)_handleAccessoryNetworkProtectionGroupRemovedNotification:(id)notification;
- (void)_handleAccessoryRemovedResponse:(id)response;
- (void)_handleAccessoryReprovisionStateUpdate:(id)update;
- (void)_handleAccessoryReprovisionedNotification:(id)notification;
- (void)_handleAccessorySetupCodeFailureMessage:(id)message;
- (void)_handleAddAccessoryProgressNotification:(id)notification;
- (void)_handleDidAddWalletKeyMessage:(id)message;
- (void)_handleDidRemoveWalletKeyMessage:(id)message;
- (void)_handleDidUpdateHomeActivityStateMessage:(id)message;
- (void)_handleHMMMRequestReceivedMessage:(id)message;
- (void)_handleHomeHubStateUpdatedNotification:(id)notification;
- (void)_handleHomeLocationStatusUpdateNotification:(id)notification;
- (void)_handleHomeLocationUpdate:(id)update;
- (void)_handleHomeLocationUpdateNotification:(id)notification;
- (void)_handleHomeNetworkRouterSupportUpdated:(id)updated;
- (void)_handleLocationAuthorizationUpdatedNotification:(id)notification;
- (void)_handleMultiUserEnabledChangeNotification:(id)notification;
- (void)_handleMultipleCharacteristicValuesUpdated:(id)updated;
- (void)_handleRuntimeStateUpdate:(id)update reason:(id)reason;
- (void)_handleUserAddedNotification:(id)notification;
- (void)_handleUserInvitationsUpdatedNotification:(id)notification;
- (void)_invokeDelegateForAppData:(id)data;
- (void)_manageUsersWithCompletionHandler:(id)handler;
- (void)_notifyDelegateOfAccesoryInvitationsUpdateForUser:(id)user;
- (void)_notifyDelegateOfAccessControlUpdateForUser:(id)user;
- (void)_notifyDelegateOfAppDataUpdate;
- (void)_notifyDelegateOfAppDataUpdateForActionSet:(id)set;
- (void)_notifyDelegateOfAppDataUpdateForRoom:(id)room;
- (void)_notifyDelegateOfAppDataUpdateForServiceGroup:(id)group;
- (void)_notifyDelegateOfBulletinNotificationsSupportedUpdate;
- (void)_notifyDelegateOfHomeHubStateUpdate;
- (void)_notifyDelegateOfTriggerAdded:(id)added;
- (void)_notifyDelegateOfTriggerRemoved:(id)removed;
- (void)_notifyDelegateOfTriggerUpdated:(id)updated;
- (void)_notifyDelegateOfUpdatedHomeLocationStatus;
- (void)_notifySetupFailedIfInHomeUIService:(id)service;
- (void)_notifyUpdatedSupportedFeatures;
- (void)_performBatchRequest:(id)request activity:(id)activity;
- (void)_registerNotificationHandlers;
- (void)_removeAccessory:(id)accessory completionHandler:(id)handler;
- (void)_removeActionSet:(id)set completionHandler:(id)handler;
- (void)_removeActionSetsForAccessory:(id)accessory;
- (void)_removeEventsForAccessory:(id)accessory;
- (void)_removeIncompatibleTrigger:(id)trigger;
- (void)_removeResidentDevicesForAccessory:(id)accessory;
- (void)_removeRoom:(id)room completionHandler:(id)handler;
- (void)_removeServiceGroup:(id)group completionHandler:(id)handler;
- (void)_removeServices:(id)services;
- (void)_removeTrigger:(id)trigger completionHandler:(id)handler;
- (void)_removeUser:(id)user completionHandler:(id)handler;
- (void)_removeZone:(id)zone completionHandler:(id)handler;
- (void)_reprovisionAccessory:(id)accessory completionHandler:(id)handler;
- (void)_retrieveLocation;
- (void)_retrieveResultsWithReportingContext:(id)context progressHandler:(id)handler completionHandler:(id)completionHandler activity:(id)activity;
- (void)_setAllNotificationsEnabled:(BOOL)enabled includeAppleMediaAccessories:(BOOL)accessories completionHandler:(id)handler;
- (void)_setNotificationsEnabled:(BOOL)enabled forCharacteristics:(id)characteristics completionHandler:(id)handler;
- (void)_setRequestHandler:(id)handler forMessageName:(id)name withOptions:(id)options;
- (void)_startPairingWithAccessoryDescription:(id)description progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_unconfigure;
- (void)_updateDidOnboardEventLog:(void *)log completion:;
- (void)_updateInvitation:(id)invitation invitationState:(int64_t)state completionHandler:(id)handler;
- (void)_updateLastSeenStatusWithPayload:(id)payload;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)_userDidConfirmExecution:(BOOL)execution ofTriggerWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)addAccessory:(HMAccessory *)accessory completionHandler:(void *)completion;
- (void)addAccessory:(id)accessory password:(id)password progress:(id)progress completionHandler:(id)handler;
- (void)addAccessoryWithAccessorySetupPayload:(id)payload progress:(id)progress completionHandler:(id)handler;
- (void)addActionSetFromBuilder:(id)builder completionHandler:(id)handler;
- (void)addActionSetWithName:(NSString *)actionSetName completionHandler:(void *)completion;
- (void)addAndSetUpNewAccessoriesWithSuggestedRoomName:(id)name completionHandler:(id)handler;
- (void)addAndSetupAccessoriesWithCompletionHandler:(void *)completion;
- (void)addAndSetupAccessoriesWithPayload:(HMAccessorySetupPayload *)payload completionHandler:(void *)completion;
- (void)addEventTriggerFromBuilder:(id)builder completionHandler:(id)handler;
- (void)addRoomWithName:(NSString *)roomName completionHandler:(void *)completion;
- (void)addServiceGroupWithName:(NSString *)serviceGroupName completionHandler:(void *)completion;
- (void)addTimerTriggerFromBuilder:(id)builder completionHandler:(id)handler;
- (void)addTrigger:(HMTrigger *)trigger completionHandler:(void *)completion;
- (void)addUser:(id)user withCompletionHandler:(id)handler;
- (void)addUserWithCompletionHandler:(void *)completion;
- (void)addUserWithoutConfirmation:(id)confirmation privilege:(int64_t)privilege completionHandler:(id)handler;
- (void)addWalletKeyToPairedWatchesWithOptions:(int64_t)options completion:(id)completion;
- (void)addWalletKeyWithOptions:(int64_t)options completion:(id)completion;
- (void)addWalletKeyWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)addZoneWithName:(NSString *)zoneName completionHandler:(void *)completion;
- (void)assignAccessory:(HMAccessory *)accessory toRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)cancelHomeActivityStateHoldWithCompletionHandler:(id)handler;
- (void)cancelPairingForAccessoryWithDescription:(id)description completionHandler:(id)handler;
- (void)cancelPairingForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)changeHomeActivityState:(unint64_t)state completionHandler:(id)handler;
- (void)clearEventLogWithCompletionHandler:(id)handler;
- (void)configurePersonManager;
- (void)configurePresenceSubscriptions;
- (void)confirmResidentWithCompletion:(id)completion;
- (void)continuePairingForAccessoryWithUUID:(id)d setupCode:(id)code onboardingSetupPayloadString:(id)string completionHandler:(id)handler;
- (void)dealloc;
- (void)enableExpressForWalletKeyWithAuthData:(id)data completion:(id)completion;
- (void)enableMultiUserWithCompletionHandler:(id)handler;
- (void)enableRemoteAccess:(BOOL)access completionHandler:(id)handler;
- (void)establishShareWithHomeOwner:(id)owner container:(id)container allowWriteAccess:(BOOL)access completionHandler:(id)handler;
- (void)executeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)executeActions:(id)actions completionHandler:(id)handler;
- (void)fetchAvailableWalletKeyEncodedPKPass:(id)pass;
- (void)fetchCurrentHomeActivityState:(id)state;
- (void)fetchExistingWalletKeyUUIDWithCompletion:(id)completion;
- (void)fetchHasWalletKeyWithCompletion:(id)completion;
- (void)fetchIsExpressEnabledForWalletKeyWithCompletion:(id)completion;
- (void)fetchIsWalletKeySupportedOnAnyPairedWatchWithCompletion:(id)completion;
- (void)fetchIsWalletKeySupportedWithCompletion:(id)completion;
- (void)fetchLastModifiedServiceOfType:(id)type completionHandler:(id)handler;
- (void)fetchMissingWalletKeysForAccessory:(id)accessory completion:(id)completion;
- (void)fetchMissingWalletKeysForUser:(id)user completion:(id)completion;
- (void)fetchMostRecentEventWithCharacteristicType:(id)type serviceType:(id)serviceType homeSPIClientIdentifier:(id)identifier completion:(id)completion;
- (void)fetchMostRecentEventWithCharacteristicType:(id)type serviceType:(id)serviceType homeSPIClientIdentifier:(id)identifier library:(id)library completion:(id)completion;
- (void)fetchNetworkInfosFromTarget:(int64_t)target timeout:(double)timeout completion:(id)completion;
- (void)fetchPowerAssertionInfo:(id)info;
- (void)fetchPresenceForUsers:(id)users completion:(id)completion;
- (void)fetchRoomsSupportingLocalPresenceWithCompletion:(id)completion;
- (void)fetchSettingsForLightProfiles:(id)profiles withCompletion:(id)completion;
- (void)fetchTriggerNameForTriggerIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchWalleKeyExpressEnablementConflictingPassDescription:(id)description;
- (void)fetchWalletKeyColorWithCompletion:(id)completion;
- (void)fetchWalletKeyCustomURLWithCompletion:(id)completion;
- (void)fetchWalletKeyDeviceStateForPairedWatchesWithCompletion:(id)completion;
- (void)fetchWalletKeyDeviceStateWithCompletion:(id)completion;
- (void)fetchWalletKeyEncodedPKPass:(id)pass;
- (void)fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes:(id)codes completion:(id)completion;
- (void)fetchWiFiInfosWithTimeout:(double)timeout completion:(id)completion;
- (void)getPrimaryResidentNetworkInfoWithCompletion:(id)completion;
- (void)handlePresenceUpdateMessage:(id)message;
- (void)handleRuntimeStateUpdate:(id)update reason:(id)reason;
- (void)inviteUsers:(id)users completionHandler:(id)handler;
- (void)inviteUsersWithInviteInformation:(id)information completionHandler:(id)handler;
- (void)joinThreadNetwork:(id)network withCompletion:(id)completion;
- (void)joinThreadNetworkWithCompletion:(id)completion;
- (void)manageUsersWithCompletionHandler:(void *)completion;
- (void)notifyDelegateOfAccesoryInvitationsUpdateForUser:(id)user;
- (void)notifyDelegateOfAccessControlUpdateForUser:(id)user;
- (void)notifyDelegateOfAppDataUpdateForActionSet:(id)set;
- (void)notifyDelegateOfAppDataUpdateForRoom:(id)room;
- (void)notifyDelegateOfAppDataUpdateForServiceGroup:(id)group;
- (void)notifyDelegatesOfExecutionForActionSet:(id)set atDate:(id)date;
- (void)performBatchCharacteristicRequest:(id)request;
- (void)performBatchRequest:(id)request;
- (void)performMediaGroupReadinessCheckForAccessory:(id)accessory timeout:(double)timeout setupSessionIdentifier:(id)identifier completion:(id)completion;
- (void)postConfigure;
- (void)queryRemoteAccessWithCompletionHandler:(id)handler;
- (void)reRegisterHMMMHandlers;
- (void)recomputeAssistantIdentifiersWithCompletion:(id)completion;
- (void)reenableNotifications;
- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler;
- (void)removeAccessory:(HMAccessory *)accessory completionHandler:(void *)completion;
- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)removeMediaSystem:(id)system completionHandler:(id)handler;
- (void)removeRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)removeServiceGroup:(HMServiceGroup *)group completionHandler:(void *)completion;
- (void)removeServices:(id)services;
- (void)removeTrigger:(HMTrigger *)trigger completionHandler:(void *)completion;
- (void)removeUser:(HMUser *)user completionHandler:(void *)completion;
- (void)removeZone:(HMZone *)zone completionHandler:(void *)completion;
- (void)reprovisionAccessory:(id)accessory completionHandler:(id)handler;
- (void)resetAndRemoveAllCHIPPairingsFromAccessory:(id)accessory completion:(id)completion;
- (void)resolveThreadNetworkCredentialsWithCompletion:(id)completion;
- (void)restoreMissingWalletKeys:(id)keys completion:(id)completion;
- (void)retrieveHomeKitLocationForFeedbackWithCompletionHandler:(id)handler;
- (void)retrieveResultsWithReportingContext:(id)context progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)selectPreferredResident:(id)resident requireAutoUpdate:(BOOL)update completion:(id)completion;
- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler;
- (void)setAccessoryInfoFetch:(id)fetch;
- (void)setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion:(id)version completionHandler:(id)handler;
- (void)setAllNotificationsEnabled:(BOOL)enabled includeAppleMediaAccessories:(BOOL)accessories completionHandler:(id)handler;
- (void)setApplicationData:(id)data;
- (void)setAutoSelectedPreferredResidents:(id)residents;
- (void)setAutomaticSoftwareUpdateEnabled:(BOOL)enabled;
- (void)setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled;
- (void)setBulletinNotificationsSupported:(BOOL)supported;
- (void)setCurrentUser:(id)user;
- (void)setDelegate:(id)delegate;
- (void)setDidOnboardEventLog:(BOOL)log;
- (void)setDismissedWalletKeyUWBUnlockOnboarding:(BOOL)onboarding;
- (void)setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:(id)completion;
- (void)setEventLogEnabled:(BOOL)enabled;
- (void)setExpressSettingsAuthData:(id)data enableUWB:(BOOL)b enableNFCExpress:(BOOL)express completion:(id)completion;
- (void)setHasAnyUserAcknowledgedCameraRecordingOnboarding:(BOOL)onboarding;
- (void)setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler:(id)handler;
- (void)setHasOnboardedForAccessCode:(BOOL)code;
- (void)setHasOnboardedForAccessCodeWithCompletion:(id)completion;
- (void)setHasOnboardedForWalletKey:(BOOL)key;
- (void)setHasOnboardedForWalletKeyWithCompletion:(id)completion;
- (void)setHomeLocation:(id)location;
- (void)setHomeLocationStatus:(int64_t)status;
- (void)setMediaPassword:(id)password;
- (void)setMediaPeerToPeerEnabled:(BOOL)enabled;
- (void)setMinimumMediaUserPrivilege:(int64_t)privilege;
- (void)setMultiUserEnabled:(BOOL)enabled;
- (void)setName:(id)name;
- (void)setNetworkRouterSupport:(unint64_t)support;
- (void)setNetworkRouterSupportDisableReason:(unint64_t)reason;
- (void)setNetworkRouterSupportMinimumHomeKitVersion:(id)version completionHandler:(id)handler;
- (void)setNotificationsEnabled:(BOOL)enabled forCharacteristics:(id)characteristics completionHandler:(id)handler;
- (void)setPersonManager:(id)manager;
- (void)setPersonManagerSettings:(id)settings;
- (void)setPreferredPrimary:(id)primary oneTime:(BOOL)time triggerElection:(BOOL)election completionHandler:(id)handler;
- (void)setPrimary:(BOOL)primary;
- (void)setProtectionMode:(int64_t)mode;
- (void)setSoftwareUpdateController:(id)controller;
- (void)setSupportedFeatures:(id)features;
- (void)setSupportsResidentSelection:(BOOL)selection;
- (void)setTimeZone:(id)zone;
- (void)setUserSelectedPreferredResident:(id)resident;
- (void)shareWithHomeOwner:(id)owner container:(id)container completionHandler:(id)handler;
- (void)stageAddedMediaSystem:(id)system;
- (void)stageRemovedMediaSystemUUID:(id)d;
- (void)startDiscoveringSymptomsForNearbyDevices;
- (void)startHomeDataSyncWithCompletionHandler:(id)handler;
- (void)startPairingWithAccessoryDescription:(id)description progress:(id)progress completion:(id)completion;
- (void)startSearchForAccessoriesNeedingReprovisioning;
- (void)stopDiscoveringSymptomsForNearbyDevices;
- (void)switchBackToREV2FromResidentSelectionWithCompletion:(id)completion;
- (void)unblockAccessory:(HMAccessory *)accessory completionHandler:(void *)completion;
- (void)unconfigure;
- (void)uniqueIdentifierForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)unjoinThreadNetworkWithCompletion:(id)completion;
- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler;
- (void)updateAccessForUser:(id)user administrator:(BOOL)administrator completionHandler:(id)handler;
- (void)updateAccessForUser:(id)user announceAccess:(BOOL)access completionHandler:(id)handler;
- (void)updateAccessForUser:(id)user audioAnalysisUserDropinAccessLevel:(unint64_t)level completionHandler:(id)handler;
- (void)updateAccessForUser:(id)user camerasAccessLevel:(unint64_t)level completionHandler:(id)handler;
- (void)updateAccessForUser:(id)user remoteAccess:(BOOL)access completionHandler:(id)handler;
- (void)updateAccessoryNetworkProtectionGroup:(id)group protectionMode:(int64_t)mode completion:(id)completion;
- (void)updateApplicationData:(id)data forAppDataContainer:(id)container appDataContainerUUIDKeyName:(id)name completionHandler:(id)handler;
- (void)updateAudioAnalysisClassifierOptions:(unint64_t)options completion:(id)completion;
- (void)updateAutomaticSoftwareUpdateEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateDidOnboardAudioAnalysis:(BOOL)analysis completion:(id)completion;
- (void)updateDidOnboardLocationServices:(BOOL)services completion:(id)completion;
- (void)updateEventLogDuration:(unint64_t)duration completionHandler:(id)handler;
- (void)updateEventLogEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateForUser:(id)user presenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler;
- (void)updateLocationServicesEnabled:(BOOL)enabled completion:(id)completion;
- (void)updateMediaPassword:(id)password completionHandler:(id)handler;
- (void)updateMediaPeerToPeerEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateMinimumMediaUserPrivilege:(int64_t)privilege completionHandler:(id)handler;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
- (void)updateNetworkProtection:(int64_t)protection completionHandler:(id)handler;
- (void)updatePersonManagerSettings:(id)settings completion:(id)completion;
- (void)updateResidentSelectionVersion:(id)version completion:(id)completion;
- (void)updateSiriPhraseOptions:(unint64_t)options completion:(id)completion;
- (void)updateSoundCheckEnabled:(BOOL)enabled completion:(id)completion;
- (void)userDidConfirmExecution:(BOOL)execution ofTrigger:(id)trigger completionHandler:(id)handler;
- (void)userDidConfirmExecution:(BOOL)execution ofTriggerWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)userDidRespondToConsentRequestForSetupAccessoryDescription:(id)description withResponse:(int64_t)response;
@end

@implementation HMHome

- (HMUser)currentUser
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentUser;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)accessories
{
  currentAccessories = [(HMHome *)self currentAccessories];
  array = [currentAccessories array];

  return array;
}

- (int64_t)homeLocationStatus
{
  os_unfair_lock_lock_with_options();
  homeLocationStatus = self->_homeLocationStatus;
  os_unfair_lock_unlock(&self->_lock);
  return homeLocationStatus;
}

- (id)location
{
  homeLocation = [(HMHome *)self homeLocation];
  v3 = [homeLocation copy];

  return v3;
}

- (CLLocation)homeLocation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeLocation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configurePresenceSubscriptions
{
  selfCopy = self;
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    v3 = context;
    messageDispatcher = [(_HMContext *)context messageDispatcher];

    if (qword_1ED8FCBB0 != -1)
    {
      swift_once();
    }

    [(HMFMessageDispatcher *)messageDispatcher registerForMessage:qword_1ED8FCBC0 receiver:selfCopy selector:sel_handlePresenceUpdateMessage_];
  }
}

- (void)handlePresenceUpdateMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  flow = [messageCopy flow];
  sub_19BE0DFAC();
  sub_19BE0DEAC();
  sub_19BE0DEDC();
}

- (void)setHasOnboardedForAccessCodeWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (context)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = selfCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Client requested to onboard home for access code: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v13 = [v11 initWithTarget:uuid];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeSetHasOnboardedForAccessCodeMessage" destination:v13 payload:0];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __65__HMHome_AccessCode__setHasOnboardedForAccessCodeWithCompletion___block_invoke;
    v20 = &unk_1E754DE00;
    v21 = selfCopy;
    v22 = completionCopy;
    [v14 setResponseHandler:&v17];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v16;
    v25 = 2080;
    v26 = "[HMHome(AccessCode) setHasOnboardedForAccessCodeWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v13);
LABEL_9:
  }
}

void __65__HMHome_AccessCode__setHasOnboardedForAccessCodeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v22 = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to onboard home for access code %@:%@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setHasOnboardedForAccessCode:1];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully onboarded home for access code: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];
}

- (id)createAccessCodeManager
{
  v22 = *MEMORY[0x1E69E9840];
  accessCodeManager = [(HMHome *)self accessCodeManager];

  if (accessCodeManager)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Client requested to create access code manager, but one already exists for home.", &v16, 0xCu);
    }
  }

  else
  {
    v8 = [[HMAccessCodeManager alloc] initWithHome:self];
    [(HMHome *)self setAccessCodeManager:v8];

    accessCodeManager2 = [(HMHome *)self accessCodeManager];
    [accessCodeManager2 configure];

    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      accessCodeManager3 = [(HMHome *)selfCopy2 accessCodeManager];
      uuid = [(HMHome *)selfCopy2 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = accessCodeManager3;
      v20 = 2112;
      v21 = uuid;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Created new Access Code Manager %@ for home UUID %@", &v16, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v4);
  accessCodeManager4 = [(HMHome *)self accessCodeManager];

  return accessCodeManager4;
}

- (void)restoreMissingWalletKeys:(id)keys completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = keysCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Restoring missing wallet keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    v13 = [keysCopy na_map:&__block_literal_global_9137];
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v16 = [v14 initWithTarget:uuid];

    v17 = MEMORY[0x1E69A2A10];
    v40 = @"HMHomeWalletKeyManagerMessageKeyMissingWalletKeys";
    v18 = encodeRootObject(v13);
    v41 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v20 = [v17 messageWithName:@"HMHomeWalletKeyManagerRestoreMissingWalletKeysMessage" destination:v16 payload:v19];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_3;
    v31[3] = &unk_1E754B6C8;
    v21 = context;
    v32 = v21;
    v33 = selfCopy;
    v35 = keysCopy;
    v36 = completionCopy;
    v34 = v13;
    v22 = keysCopy;
    v23 = completionCopy;
    v24 = v13;
    [v20 setResponseHandler:v31];
    messageDispatcher = [v21 messageDispatcher];
    [messageDispatcher sendMessage:v20];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to restore missing wallet keys, context not specified", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    delegateCaller = [0 delegateCaller];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke;
    v37[3] = &unk_1E754E458;
    v38 = keysCopy;
    v39 = completionCopy;
    v20 = keysCopy;
    v16 = completionCopy;
    [delegateCaller invokeBlock:v37];

    v24 = v39;
  }
}

void __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, v2, v3);
}

void __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomeWalletKeyManagerMessageKeyMissingWalletKeys" ofClasses:v7];

  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_63;
    v17[3] = &unk_1E75471A0;
    v17[4] = *(a1 + 40);
    v9 = [v8 na_map:v17];
    v10 = [*(a1 + 32) delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_2_64;
    v14[3] = &unk_1E754E0F8;
    v14[4] = *(a1 + 40);
    v15 = v9;
    v16 = *(a1 + 64);
    v11 = v9;
    [v10 invokeBlock:v14];
  }

  else
  {
    v12 = [*(a1 + 32) delegateCaller];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_4;
    v18[3] = &unk_1E754D7A8;
    v13 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v19 = v13;
    v20 = v5;
    v22 = *(a1 + 64);
    v21 = *(a1 + 56);
    [v12 invokeBlock:v18];

    v11 = v19;
  }
}

uint64_t __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to restore missing wallet keys: %@ with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 64) + 16))();
}

uint64_t __54__HMHome_Wallet__restoreMissingWalletKeys_completion___block_invoke_2_64(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@After restored missing wallet keys, the remaining missing wallet keys are: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))();
}

- (void)fetchMissingWalletKeysForUser:(id)user completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  userCopy = user;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v11;
    v40 = 2112;
    v41 = userCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching missing wallet keys for user: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v15 = [v13 initWithTarget:uuid];

    v16 = MEMORY[0x1E69A2A10];
    v36 = @"HMHomeWalletKeyManagerMessageKeyUserUUIDString";
    uuid2 = [userCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v37 = uUIDString;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = [v16 messageWithName:@"HMHomeWalletKeyManagerFetchMissingWalletKeysMessage" destination:v15 payload:v19];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_2;
    v29[3] = &unk_1E754D030;
    v21 = context;
    v30 = v21;
    v31 = selfCopy;
    v32 = userCopy;
    v33 = completionCopy;
    v22 = completionCopy;
    [v20 setResponseHandler:v29];
    messageDispatcher = [v21 messageDispatcher];
    [messageDispatcher sendMessage:v20];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch missing wallet keys for user, context not specified, returning empty list", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    delegateCaller = [0 delegateCaller];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke;
    v34[3] = &unk_1E754E430;
    v35 = completionCopy;
    v15 = completionCopy;
    [delegateCaller invokeBlock:v34];

    v20 = v35;
  }
}

void __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, v2);
}

void __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomeWalletKeyManagerMessageKeyMissingWalletKeys" ofClasses:v7];

  if (!v8)
  {
    v9 = [*(a1 + 32) delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_3;
    v21[3] = &unk_1E754D208;
    v10 = *(a1 + 48);
    v21[4] = *(a1 + 40);
    v22 = v10;
    v23 = v5;
    v24 = *(a1 + 56);
    [v9 invokeBlock:v21];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_60;
  v20[3] = &unk_1E75471A0;
  v20[4] = *(a1 + 40);
  v11 = [v8 na_map:v20];
  v12 = [*(a1 + 32) delegateCaller];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_2_61;
  v16[3] = &unk_1E754D208;
  v16[4] = *(a1 + 40);
  v17 = v8;
  v13 = *(a1 + 56);
  v18 = v11;
  v19 = v13;
  v14 = v11;
  v15 = v8;
  [v12 invokeBlock:v16];
}

void __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) uuid];
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch missing wallet keys for user: %@ with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x1E695DFD8] set];
  (*(v8 + 16))(v8, v9);
}

uint64_t __59__HMHome_Wallet__fetchMissingWalletKeysForUser_completion___block_invoke_2_61(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched missing wallet keys: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 56) + 16))();
}

- (void)fetchMissingWalletKeysForAccessory:(id)accessory completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v11;
    v46 = 2112;
    v47 = accessoryCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching missing wallet keys for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    if ([accessoryCopy supportsCHIP] && (objc_msgSend(accessoryCopy, "supportsWalletKey") & 1) != 0)
    {
      v13 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)selfCopy uuid];
      v15 = [v13 initWithTarget:uuid];

      v16 = MEMORY[0x1E69A2A10];
      v42 = @"HMHomeWalletKeyManagerMessageKeyAccessoryUUIDString";
      uuid2 = [accessoryCopy uuid];
      uUIDString = [uuid2 UUIDString];
      v43 = uUIDString;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v20 = [v16 messageWithName:@"HMHomeWalletKeyManagerFetchMissingWalletKeysMessage" destination:v15 payload:v19];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_54;
      v35[3] = &unk_1E754D030;
      v21 = context;
      v36 = v21;
      v37 = selfCopy;
      v38 = accessoryCopy;
      v39 = completionCopy;
      [v20 setResponseHandler:v35];
      messageDispatcher = [v21 messageDispatcher];
      [messageDispatcher sendMessage:v20];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        uuid3 = [accessoryCopy uuid];
        [accessoryCopy supportsCHIP];
        v28 = HMFBooleanToString();
        [accessoryCopy supportsWalletKey];
        v29 = HMFBooleanToString();
        *buf = 138544130;
        v45 = v26;
        v46 = 2112;
        v47 = uuid3;
        v48 = 2112;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Not fetching missing wallet keys for accessory accessory: %@, supportsCHIP: %@, supportsWalletKey: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
      v15 = [MEMORY[0x1E695DFD8] set];
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v33;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch missing wallet keys for accessory, context not specified, returning empty list", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    delegateCaller = [0 delegateCaller];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke;
    v40[3] = &unk_1E754E430;
    v41 = completionCopy;
    [delegateCaller invokeBlock:v40];

    v15 = v41;
  }
}

void __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, v2);
}

void __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomeWalletKeyManagerMessageKeyMissingWalletKeys" ofClasses:v7];

  if (!v8)
  {
    v9 = [*(a1 + 32) delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_2;
    v21[3] = &unk_1E754D208;
    v10 = *(a1 + 48);
    v21[4] = *(a1 + 40);
    v22 = v10;
    v23 = v5;
    v24 = *(a1 + 56);
    [v9 invokeBlock:v21];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_56;
  v20[3] = &unk_1E75471A0;
  v20[4] = *(a1 + 40);
  v11 = [v8 na_map:v20];
  v12 = [*(a1 + 32) delegateCaller];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_2_59;
  v16[3] = &unk_1E754D208;
  v16[4] = *(a1 + 40);
  v17 = v8;
  v13 = *(a1 + 56);
  v18 = v11;
  v19 = v13;
  v14 = v11;
  v15 = v8;
  [v12 invokeBlock:v16];
}

void __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) uuid];
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch missing wallet keys for accessory: %@ with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x1E695DFD8] set];
  (*(v8 + 16))(v8, v9);
}

uint64_t __64__HMHome_Wallet__fetchMissingWalletKeysForAccessory_completion___block_invoke_2_59(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched missing wallet keys: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 56) + 16))();
}

- (void)fetchWalletKeyDeviceStateForPairedWatchesWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching wallet key device state for paired watches", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v12 = [v10 initWithTarget:uuid];

    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeWalletKeyManagerFetchDeviceStateForPairedWatchesMessage" destination:v12 payload:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__HMHome_Wallet__fetchWalletKeyDeviceStateForPairedWatchesWithCompletion___block_invoke;
    v20[3] = &unk_1E754E480;
    v20[4] = selfCopy;
    v14 = context;
    v21 = v14;
    v22 = completionCopy;
    [v13 setResponseHandler:v20];
    messageDispatcher = [v14 messageDispatcher];
    [messageDispatcher sendMessage:v13];

LABEL_9:
    goto LABEL_10;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v19;
    v25 = 2080;
    v26 = "[HMHome(Wallet) fetchWalletKeyDeviceStateForPairedWatchesWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (completionCopy)
  {
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_9;
  }

LABEL_10:
}

void __74__HMHome_Wallet__fetchWalletKeyDeviceStateForPairedWatchesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomeWalletKeyManagerMessageKeyDeviceStateForPairedWatches" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v8;
      v14 = "%{public}@Successfully fetched wallet key device state: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v18, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = 0;
    v14 = "%{public}@Failed to fetch wallet key device state: %@";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v9);
  v17 = [*(a1 + 40) delegateCaller];
  [v17 callCompletion:*(a1 + 48) obj:v8 error:v5];
}

- (void)fetchWalletKeyDeviceStateWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching wallet key device state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  if (context)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v12 = [v10 initWithTarget:uuid];

    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeWalletKeyManagerFetchDeviceStateMessage" destination:v12 payload:0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__HMHome_Wallet__fetchWalletKeyDeviceStateWithCompletion___block_invoke;
    v20[3] = &unk_1E754E480;
    v20[4] = selfCopy;
    v14 = context;
    v21 = v14;
    v22 = completionCopy;
    [v13 setResponseHandler:v20];
    messageDispatcher = [v14 messageDispatcher];
    [messageDispatcher sendMessage:v13];

LABEL_9:
    goto LABEL_10;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v19;
    v25 = 2080;
    v26 = "[HMHome(Wallet) fetchWalletKeyDeviceStateWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (completionCopy)
  {
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_9;
  }

LABEL_10:
}

void __58__HMHome_Wallet__fetchWalletKeyDeviceStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v22[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomeWalletKeyManagerMessageKeyDeviceState" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v8;
      v14 = "%{public}@Successfully fetched wallet key device state: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v18, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = 0;
    v14 = "%{public}@Failed to fetch wallet key device state: %@";
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v9);
  v17 = [*(a1 + 40) delegateCaller];
  [v17 callCompletion:*(a1 + 48) obj:v8 error:v5];
}

- (void)fetchIsWalletKeySupportedOnAnyPairedWatchWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching is wallet key supported for paired watches...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__HMHome_Wallet__fetchIsWalletKeySupportedOnAnyPairedWatchWithCompletion___block_invoke;
    v16[3] = &unk_1E7547178;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateForPairedWatchesWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchIsWalletKeySupportedOnAnyPairedWatchWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __74__HMHome_Wallet__fetchIsWalletKeySupportedOnAnyPairedWatchWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        v12 = [v11 canAddWalletKey];

        if (v12)
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [*(a1 + 32) delegateCaller];
  [v13 callCompletion:*(a1 + 40) value:v8 error:v6];
}

- (void)fetchIsWalletKeySupportedWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching is wallet key supported...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__HMHome_Wallet__fetchIsWalletKeySupportedWithCompletion___block_invoke;
    v16[3] = &unk_1E7547150;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchIsWalletKeySupportedWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __58__HMHome_Wallet__fetchIsWalletKeySupportedWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 delegateCaller];
  v8 = *(a1 + 40);
  v9 = [v7 canAddWalletKey];

  [v10 callCompletion:v8 value:v9 error:v6];
}

- (void)fetchExistingWalletKeyUUIDWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching wallet key uuid...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__HMHome_Wallet__fetchExistingWalletKeyUUIDWithCompletion___block_invoke;
    v16[3] = &unk_1E7547150;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchExistingWalletKeyUUIDWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __59__HMHome_Wallet__fetchExistingWalletKeyUUIDWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v11 = [v5 delegateCaller];
  v8 = *(a1 + 40);
  v9 = [v7 walletKey];

  v10 = [v9 UUID];
  [v11 callCompletion:v8 obj:v10 error:v6];
}

- (void)fetchWalletKeyColorWithCompletion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(Wallet) fetchWalletKeyColorWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v5 = completionCopy;
  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v9;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching wallet key color...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  context = [(HMHome *)selfCopy2 context];
  if (context)
  {
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy2 uuid];
    v13 = [v11 initWithTarget:uuid];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeFetchWalletKeyColorMessage" destination:v13 payload:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__HMHome_Wallet__fetchWalletKeyColorWithCompletion___block_invoke;
    v26[3] = &unk_1E754DE00;
    v26[4] = selfCopy2;
    v27 = v5;
    [v14 setResponseHandler:v26];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy2;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = @"SatinNickel";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch wallet key color, context not specified, returning default color %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v5[2](v5, 14341582);
  }
}

void __52__HMHome_Wallet__fetchWalletKeyColorWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMHomeFetchWalletKeyColorMessageKeyColor"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = @"SatinNickel";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched wallet key color: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v7 intValue];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v13;
      v16 = 2112;
      v17 = @"SatinNickel";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch wallet key color, returning default color %@:%@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchWalleKeyExpressEnablementConflictingPassDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching description of the conflicting pass...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__HMHome_Wallet__fetchWalleKeyExpressEnablementConflictingPassDescription___block_invoke;
    v16[3] = &unk_1E7547150;
    v17 = context;
    v18 = descriptionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchWalleKeyExpressEnablementConflictingPassDescription:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (descriptionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(descriptionCopy + 2))(descriptionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __75__HMHome_Wallet__fetchWalleKeyExpressEnablementConflictingPassDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 delegateCaller];
  v8 = *(a1 + 40);
  v9 = [v7 expressEnablementConflictingPassDescription];

  [v10 callCompletion:v8 obj:v9 error:v6];
}

- (void)fetchIsExpressEnabledForWalletKeyWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching express enabled for wallet key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__HMHome_Wallet__fetchIsExpressEnabledForWalletKeyWithCompletion___block_invoke;
    v16[3] = &unk_1E7547150;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchIsExpressEnabledForWalletKeyWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __66__HMHome_Wallet__fetchIsExpressEnabledForWalletKeyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 delegateCaller];
  v8 = *(a1 + 40);
  v9 = [v7 walletKey];

  [v10 callCompletion:v8 value:objc_msgSend(v9 error:{"isExpressEnabled"), v6}];
}

- (void)fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes:(id)codes completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  completionCopy = completion;
  if (!completionCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(Wallet) fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes:completion:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v29;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v8 = completionCopy;
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v12;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching encoded PKPass for available wallet key...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  context = [(HMHome *)selfCopy2 context];
  if (context)
  {
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy2 uuid];
    v16 = [v14 initWithTarget:uuid];

    v34 = @"HMHomeWalletKeyManagerMessageKeyIgnoredErrorCodes";
    v35 = codesCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v18 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeFetchAvailableWalletKeyEncodedPKPassMessage" destination:v16 payload:v17];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__HMHome_Wallet__fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes_completion___block_invoke;
    v31[3] = &unk_1E754E480;
    v31[4] = selfCopy2;
    v19 = context;
    v32 = v19;
    v33 = v8;
    [v18 setResponseHandler:v31];
    messageDispatcher = [v19 messageDispatcher];
    [messageDispatcher sendMessage:v18];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy2;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch encoded PK Pass: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (v8)[2](v8, 0, v16);
  }
}

void __78__HMHome_Wallet__fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_fileHandleForKey:@"HMHomeFetchAvailableWalletKeyEncodedPKPassMessageKeyFileHandle"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 availableData];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched encoded PK Pass", &v16, 0xCu);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch encoded PK pass: %@", &v16, 0x16u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(a1 + 40) delegateCaller];
  [v15 callCompletion:*(a1 + 48) obj:v9 error:v5];
}

- (void)fetchAvailableWalletKeyEncodedPKPass:(id)pass
{
  v4 = MEMORY[0x1E695DFD8];
  passCopy = pass;
  v6 = [v4 set];
  [(HMHome *)self fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes:v6 completion:passCopy];
}

- (void)fetchWalletKeyEncodedPKPass:(id)pass
{
  v4 = MEMORY[0x1E695DFD8];
  passCopy = pass;
  v6 = [v4 setWithArray:&unk_1F0EFDE28];
  [(HMHome *)self fetchWalletKeyEncodedPKPassWithIgnoredErrorCodes:v6 completion:passCopy];
}

- (void)fetchWalletKeyCustomURLWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching wallet key custom URL...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__HMHome_Wallet__fetchWalletKeyCustomURLWithCompletion___block_invoke;
    v16[3] = &unk_1E7547150;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchWalletKeyDeviceStateWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchWalletKeyCustomURLWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __56__HMHome_Wallet__fetchWalletKeyCustomURLWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v11 = [v5 delegateCaller];
  v8 = *(a1 + 40);
  v9 = [v7 walletKey];

  v10 = [v9 customURL];
  [v11 callCompletion:v8 obj:v10 error:v6];
}

- (void)setExpressSettingsAuthData:(id)data enableUWB:(BOOL)b enableNFCExpress:(BOOL)express completion:(id)completion
{
  expressCopy = express;
  bCopy = b;
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  context = [(HMHome *)self context];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (context)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v31 = completionCopy;
      v18 = v17 = dataCopy;
      v19 = HMFBooleanToString();
      v20 = HMFBooleanToString();
      *buf = 138543874;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting express settings. enableUWB: %@, enableNFCExpress: %@", buf, 0x20u);

      dataCopy = v17;
      completionCopy = v31;
    }

    objc_autoreleasePoolPop(v13);
    v36[0] = dataCopy;
    v35[0] = @"HMHomeMessageKeyAuthData";
    v35[1] = @"HMHomeMessageKeyEnableUWB";
    v21 = [MEMORY[0x1E696AD98] numberWithBool:bCopy];
    v36[1] = v21;
    v35[2] = @"HMHomeMessageKeyEnableNFCExpress";
    v22 = [MEMORY[0x1E696AD98] numberWithBool:expressCopy];
    v36[2] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

    v24 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v26 = [v24 initWithTarget:uuid];

    v27 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeSetHomeKeyExpressSettingsMessage" destination:v26 payload:v23];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __83__HMHome_Wallet__setExpressSettingsAuthData_enableUWB_enableNFCExpress_completion___block_invoke;
    v32[3] = &unk_1E754E480;
    v32[4] = selfCopy;
    v28 = context;
    v33 = v28;
    v34 = completionCopy;
    [v27 setResponseHandler:v32];
    messageDispatcher = [v28 messageDispatcher];
    [messageDispatcher sendMessage:v27];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v30;
      v39 = 2080;
      v40 = "[HMHome(Wallet) setExpressSettingsAuthData:enableUWB:enableNFCExpress:completion:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __83__HMHome_Wallet__setExpressSettingsAuthData_enableUWB_enableNFCExpress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@Successfully set express settings for wallet key";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v5;
    v12 = "%{public}@Failed to set express settings for wallet key %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)enableExpressForWalletKeyWithAuthData:(id)data completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  context = [(HMHome *)self context];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (context)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Enabling express for wallet key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v25 = @"HMHomeMessageKeyAuthData";
    v26 = dataCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v17 = [v15 initWithTarget:uuid];

    v18 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeEnableExpressForWalletKeyMessage" destination:v17 payload:v14];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__HMHome_Wallet__enableExpressForWalletKeyWithAuthData_completion___block_invoke;
    v22[3] = &unk_1E754E480;
    v22[4] = selfCopy;
    v19 = context;
    v23 = v19;
    v24 = completionCopy;
    [v18 setResponseHandler:v22];
    messageDispatcher = [v19 messageDispatcher];
    [messageDispatcher sendMessage:v18];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2080;
      v30 = "[HMHome(Wallet) enableExpressForWalletKeyWithAuthData:completion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __67__HMHome_Wallet__enableExpressForWalletKeyWithAuthData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@Successfully enabled express for wallet key";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v5;
    v12 = "%{public}@Failed to enable express for wallet key %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)addWalletKeyToPairedWatchesWithOptions:(int64_t)options completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (context)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMHomeAddWalletKeyOptionsDescription(options);
      *buf = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding wallet key to paired watches with options: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v16 = [v14 initWithTarget:uuid];

    v26 = @"HMHomeAddWalletKeyMessageKeyOptions";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:options];
    v27 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeAddWalletKeyToPairedWatchesMessage" destination:v16 payload:v18];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__HMHome_Wallet__addWalletKeyToPairedWatchesWithOptions_completion___block_invoke;
    v23[3] = &unk_1E754E480;
    v23[4] = selfCopy;
    v20 = context;
    v24 = v20;
    v25 = completionCopy;
    [v19 setResponseHandler:v23];
    messageDispatcher = [v20 messageDispatcher];
    [messageDispatcher sendMessage:v19];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2080;
      v31 = "[HMHome(Wallet) addWalletKeyToPairedWatchesWithOptions:completion:]";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __68__HMHome_Wallet__addWalletKeyToPairedWatchesWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully added wallet key to paired watches", &v14, 0xCu);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [HMHome errorByDeviceWithOverallError:v5];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to add wallet key to paired watches overall error %@, error by device: %@", &v14, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v13 = [*(a1 + 40) delegateCaller];
  [v13 callCompletion:*(a1 + 48) error:v5];
}

- (void)fetchHasWalletKeyWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching has wallet key...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  v10 = context;
  if (context)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__HMHome_Wallet__fetchHasWalletKeyWithCompletion___block_invoke;
    v16[3] = &unk_1E7547128;
    v17 = context;
    v18 = completionCopy;
    [(HMHome *)selfCopy fetchExistingWalletKeyUUIDWithCompletion:v16];

    v11 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v15;
    v21 = 2080;
    v22 = "[HMHome(Wallet) fetchHasWalletKeyWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v11);
    goto LABEL_9;
  }

LABEL_10:
}

void __50__HMHome_Wallet__fetchHasWalletKeyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 delegateCaller];
  [v7 callCompletion:*(a1 + 40) value:a2 != 0 error:v6];
}

- (void)addWalletKeyWithOptions:(int64_t)options completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (context)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMHomeAddWalletKeyOptionsDescription(options);
      *buf = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding wallet key with options: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v16 = [v14 initWithTarget:uuid];

    v26 = @"HMHomeAddWalletKeyMessageKeyOptions";
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:options];
    v27 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeAddWalletKeyMessage" destination:v16 payload:v18];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__HMHome_Wallet__addWalletKeyWithOptions_completionHandler___block_invoke;
    v23[3] = &unk_1E754E480;
    v23[4] = selfCopy;
    v20 = context;
    v24 = v20;
    v25 = handlerCopy;
    [v19 setResponseHandler:v23];
    messageDispatcher = [v20 messageDispatcher];
    [messageDispatcher sendMessage:v19];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v22;
    v30 = 2080;
    v31 = "[HMHome(Wallet) addWalletKeyWithOptions:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
LABEL_9:
  }
}

void __60__HMHome_Wallet__addWalletKeyWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_UUIDForKey:@"HMHomeWalletKeyManagerMessageKeyWalletKeyUUID"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      v13 = "%{public}@Successfully added wallet key: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v14, v15, v13, &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    v13 = "%{public}@Failed to add wallet key: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) obj:v7 error:v5];
}

- (void)addWalletKeyWithOptions:(int64_t)options completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  v8 = context;
  if (context)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__HMHome_Wallet__addWalletKeyWithOptions_completion___block_invoke;
    v14[3] = &unk_1E7547128;
    v15 = context;
    v16 = completionCopy;
    [(HMHome *)self addWalletKeyWithOptions:options completionHandler:v14];

    v9 = v15;
LABEL_7:

    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v13;
    v19 = 2080;
    v20 = "[HMHome(Wallet) addWalletKeyWithOptions:completion:]";
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (completionCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __53__HMHome_Wallet__addWalletKeyWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v5];
}

- (void)setHasOnboardedForWalletKeyWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (context)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = selfCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Client requested to onboard home for wallet key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v13 = [v11 initWithTarget:uuid];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeSetHasOnboardedForWalletKeyMessage" destination:v13 payload:0];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __60__HMHome_Wallet__setHasOnboardedForWalletKeyWithCompletion___block_invoke;
    v20 = &unk_1E754DE00;
    v21 = selfCopy;
    v22 = completionCopy;
    [v14 setResponseHandler:&v17];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v16;
    v25 = 2080;
    v26 = "[HMHome(Wallet) setHasOnboardedForWalletKeyWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v13);
LABEL_9:
  }
}

void __60__HMHome_Wallet__setHasOnboardedForWalletKeyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v22 = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to onboard home for wallet key %@:%@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setHasOnboardedForWalletKey:1];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully onboarded home for wallet key: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];
}

- (NSString)walletKeyPassSerialNumber
{
  uuid = [(HMHome *)self uuid];
  currentUser = [(HMHome *)self currentUser];
  uuid2 = [currentUser uuid];
  v6 = [HMHome passSerialNumberWithHomeUUID:uuid userUUID:uuid2];

  return v6;
}

+ (id)passSerialNumberWithHomeUUID:(id)d userUUID:(id)iD
{
  v5 = MEMORY[0x1E696AFB0];
  dCopy = d;
  uUIDString = [iD UUIDString];
  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v5 hmf_UUIDWithNamespace:dCopy data:v8];

  v10 = MEMORY[0x1E696AFB0];
  v11 = [@"F8ADC5C9-15AC-424D-AD82-6D43424B7461" dataUsingEncoding:4];
  v12 = [v10 hmf_UUIDWithNamespace:v9 data:v11];

  uUIDString2 = [v12 UUIDString];

  return uUIDString2;
}

+ (id)errorByDeviceWithOverallError:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo hmf_dataForKey:@"HMHomeWalletKeyErrorUserInfoKeyErrorByDevice"];

  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v8 = [v6 setWithArray:v7];

    v20 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:&v20];
    v10 = v20;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode error by device %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      userInfo2 = [errorCopy userInfo];
      *buf = 138543874;
      v23 = v14;
      v24 = 2112;
      v25 = userInfo2;
      v26 = 2112;
      v27 = @"HMHomeWalletKeyErrorUserInfoKeyErrorByDevice";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Missing error by device key in error userInfo %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v9 = 0;
  }

  return v9;
}

- (void)fetchSettingsForLightProfiles:(id)profiles withCompletion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  completionCopy = completion;
  if (!completionCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(Light) fetchSettingsForLightProfiles:withCompletion:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v30;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v8 = completionCopy;
  context = [(HMHome *)self context];
  if (context)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v12 = [v10 initWithTarget:uuid];

    v32 = profilesCopy;
    v13 = [profilesCopy na_map:&__block_literal_global_19374];
    v37 = @"HMHomeMessageKeyLightProfileUUIDs";
    v38 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeFetchLightProfilesSettingsMessage" destination:v12 payload:v14];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching settings...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __62__HMHome_Light__fetchSettingsForLightProfiles_withCompletion___block_invoke_10;
    v33[3] = &unk_1E754D030;
    v33[4] = selfCopy2;
    profilesCopy = v32;
    v34 = v32;
    v20 = context;
    v35 = v20;
    v36 = v8;
    [v15 setResponseHandler:v33];
    messageDispatcher = [v20 messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v25;
      v41 = 2080;
      v42 = "[HMHome(Light) fetchSettingsForLightProfiles:withCompletion:]";
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v8)[2](v8, 0, v12);
  }
}

void __62__HMHome_Light__fetchSettingsForLightProfiles_withCompletion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_dataForKey:@"HMHomeMessageKeySettingsByLightProfileUUIDs"];
    v9 = MEMORY[0x1E695DFD8];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v49[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
    v11 = [v9 setWithArray:v10];

    v47 = 0;
    v42 = v11;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v11 fromData:v8 error:&v47];
    v13 = v47;
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v12)
    {
      v41 = v7;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v18;
        v52 = 2112;
        v53 = v12;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = a1;
      v20 = *(a1 + 40);
      v21 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v37 = v13;
        v38 = v8;
        v39 = v5;
        v23 = *v44;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v43 + 1) + 8 * i);
            v26 = [v25 lightProfile];
            v27 = [v26 profileUniqueIdentifier];
            v28 = [v12 objectForKeyedSubscript:v27];

            [v19 setObject:v28 forKey:v25];
            v29 = [v28 settings];

            if (v29)
            {
              v30 = [v28 settings];
              [v25 updateSettings:v30 withReason:@"home fetch of light profile settings"];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v22);
        v5 = v39;
        a1 = v40;
        v7 = v41;
        v13 = v37;
        v8 = v38;
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode light profile settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = 0;
      v20 = v5;
      v5 = v13;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v34;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch the settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v19 = 0;
  }

  v36 = [*(a1 + 48) delegateCaller];
  [v36 callCompletion:*(a1 + 56) obj:v19 error:v5];
}

id __62__HMHome_Light__fetchSettingsForLightProfiles_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lightProfile];
  v3 = [v2 profileUniqueIdentifier];

  return v3;
}

- (void)unjoinThreadNetworkWithCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A10]);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 initWithName:@"HMH.unjoftn" destination:v9 payload:0];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __73__HMHome_ThreadResidentCommissioning__unjoinThreadNetworkWithCompletion___block_invoke;
    v24 = &unk_1E754DE00;
    v11 = context;
    v25 = v11;
    v26 = completionCopy;
    [v10 setResponseHandler:&v21];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Request to unjoin thread network using message %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2080;
      v30 = "[HMHome(ThreadResidentCommissioning) unjoinThreadNetworkWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __73__HMHome_ThreadResidentCommissioning__unjoinThreadNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)joinThreadNetwork:(id)network withCompletion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    v37 = @"HMHM.threadNetworkID";
    v38[0] = networkCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v13 = [v11 initWithTarget:uuid];
    v14 = [v10 initWithName:@"HMH.joftn" destination:v13 payload:v9];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __72__HMHome_ThreadResidentCommissioning__joinThreadNetwork_withCompletion___block_invoke;
    v28 = &unk_1E754DE00;
    v15 = context;
    v29 = v15;
    v30 = completionCopy;
    [v14 setResponseHandler:&v25];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v19;
      v33 = 2112;
      v34 = networkCopy;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Request to join thread network with UUID %@ using message %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2080;
      v34 = "[HMHome(ThreadResidentCommissioning) joinThreadNetwork:withCompletion:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

void __72__HMHome_ThreadResidentCommissioning__joinThreadNetwork_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)joinThreadNetworkWithCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A10]);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 initWithName:@"HMH.joftn" destination:v9 payload:0];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __71__HMHome_ThreadResidentCommissioning__joinThreadNetworkWithCompletion___block_invoke;
    v24 = &unk_1E754DE00;
    v11 = context;
    v25 = v11;
    v26 = completionCopy;
    [v10 setResponseHandler:&v21];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Request to join thread network using message %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2080;
      v30 = "[HMHome(ThreadResidentCommissioning) joinThreadNetworkWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __71__HMHome_ThreadResidentCommissioning__joinThreadNetworkWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)inviteUsers:(id)users completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(usersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = usersCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [HMUserInviteInformation alloc];
        v16 = [(HMUserInviteInformation *)v15 initWithUser:v14 administrator:0 remoteAccess:1, v17];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(HMHome *)self inviteUsersWithInviteInformation:v8 completionHandler:handlerCopy];
}

- (void)addUser:(id)user withCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome addUser:withCompletionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = context;
  if (context)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__HMHome_addUser_withCompletionHandler___block_invoke;
    v23[3] = &unk_1E754E430;
    v24 = handlerCopy;
    [delegateCaller invokeBlock:v23];

    v12 = v24;
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
      v26 = v16;
      v27 = 2080;
      v28 = "[HMHome addUser:withCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __40__HMHome_addUser_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(*(a1 + 32) + 16))();
}

- (void)addUserWithoutConfirmation:(id)confirmation privilege:(int64_t)privilege completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  confirmationCopy = confirmation;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome addUserWithoutConfirmation:privilege:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = context;
  if (context)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__HMHome_addUserWithoutConfirmation_privilege_completionHandler___block_invoke;
    v24[3] = &unk_1E754E430;
    v25 = handlerCopy;
    [delegateCaller invokeBlock:v24];

    v13 = v25;
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
      v27 = v17;
      v28 = 2080;
      v29 = "[HMHome addUserWithoutConfirmation:privilege:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __65__HMHome_addUserWithoutConfirmation_privilege_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(*(a1 + 32) + 16))();
}

- (void)switchBackToREV2FromResidentSelectionWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received command to switch the home back to REV2", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x1E69A29F8];
  messageDestination = [(HMHome *)selfCopy messageDestination];
  v11 = [v9 messageWithName:@"HM.switch.to.rev2" destination:messageDestination payload:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__HMHome_switchBackToREV2FromResidentSelectionWithCompletion___block_invoke;
  v15[3] = &unk_1E754C0F0;
  v16 = completionCopy;
  v12 = completionCopy;
  [v11 setResponseHandler:v15];
  context = [(HMHome *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

- (void)setAutoSelectedPreferredResidents:(id)residents
{
  residentsCopy = residents;
  os_unfair_lock_lock_with_options();
  autoSelectedPreferredResidents = self->_autoSelectedPreferredResidents;
  self->_autoSelectedPreferredResidents = residentsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUserSelectedPreferredResident:(id)resident
{
  residentCopy = resident;
  os_unfair_lock_lock_with_options();
  userSelectedPreferredResident = self->_userSelectedPreferredResident;
  self->_userSelectedPreferredResident = residentCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportsResidentSelection:(BOOL)selection
{
  os_unfair_lock_lock_with_options();
  self->_supportsResidentSelection = selection;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)autoSelectedPreferredResidents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_autoSelectedPreferredResidents;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMResidentDevice)userSelectedPreferredResident
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userSelectedPreferredResident;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)supportsResidentSelection
{
  os_unfair_lock_lock_with_options();
  supportsResidentSelection = self->_supportsResidentSelection;
  os_unfair_lock_unlock(&self->_lock);
  return supportsResidentSelection;
}

- (void)uniqueIdentifierForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v20 = @"appBundleIdentifier";
  v21[0] = identifier;
  v7 = MEMORY[0x1E695DF20];
  identifierCopy = identifier;
  v9 = [v7 dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v10 = MEMORY[0x1E69A2A10];
  v11 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHome *)self messageTargetUUID];
  v13 = [v11 initWithTarget:messageTargetUUID];
  v14 = [v10 messageWithName:@"HMHomeFetchUniqueIdentifierForBundleIdentifierMessage" destination:v13 payload:v9];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__HMHome_uniqueIdentifierForBundleIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E754DE00;
  v18[4] = self;
  v19 = handlerCopy;
  v15 = handlerCopy;
  [v14 setResponseHandler:v18];
  context = [(HMHome *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v14];
}

void __64__HMHome_uniqueIdentifierForBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_UUIDForKey:@"saltedUniqueIdentifier"];
    if (v8)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid unique identifier in payload: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = *(a1 + 40);
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      (*(v17 + 16))(v17, 0, v18);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch unique identifier for bundle identifier with error: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setPreferredPrimary:(id)primary oneTime:(BOOL)time triggerElection:(BOOL)election completionHandler:(id)handler
{
  electionCopy = election;
  timeCopy = time;
  handlerCopy = handler;
  v11 = MEMORY[0x1E695DF90];
  primaryCopy = primary;
  dictionary = [v11 dictionary];
  [dictionary setObject:primaryCopy forKeyedSubscript:@"preferred.primary.name"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:timeCopy];
  [dictionary setObject:v14 forKeyedSubscript:@"preferred.primary.one.time"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:electionCopy];
  [dictionary setObject:v15 forKeyedSubscript:@"preferred.primary.trigger.election"];

  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHome *)self messageTargetUUID];
  v18 = [v16 initWithTarget:messageTargetUUID];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HM.set.preferred.primary" destination:v18 payload:dictionary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__HMHome_setPreferredPrimary_oneTime_triggerElection_completionHandler___block_invoke;
  v23[3] = &unk_1E754C0F0;
  v24 = handlerCopy;
  v20 = handlerCopy;
  [v19 setResponseHandler:v23];
  context = [(HMHome *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19];
}

- (id)accessoryUUIDForIdentifier:(id)identifier
{
  v3 = [(HMHome *)self accessoryWithUniqueIdentifier:identifier];
  uuid = [v3 uuid];

  return uuid;
}

- (void)fetchLastModifiedServiceOfType:(id)type completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome fetchLastModifiedServiceOfType:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = context;
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (!v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v16;
      v30 = 2080;
      v31 = "[HMHome fetchLastModifiedServiceOfType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, 0, context2);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v14;
    v30 = 2112;
    v31 = typeCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Fetching last modified service of type for serviceType: %@ from biome", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (([typeCopy isEqualToString:@"00000041-0000-1000-8000-0026BB765291"] & 1) == 0)
  {
    context2 = [(HMHome *)selfCopy2 context];
    delegateCaller = [context2 delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:5 userInfo:0];
    [delegateCaller callCompletion:handlerCopy service:0 error:v19];

LABEL_11:
    goto LABEL_12;
  }

  uniqueIdentifier = [(HMHome *)selfCopy2 uniqueIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__HMHome_fetchLastModifiedServiceOfType_completionHandler___block_invoke;
  v26[3] = &unk_1E7549DD8;
  v26[4] = selfCopy2;
  v27 = handlerCopy;
  [(HMHome *)selfCopy2 fetchMostRecentEventWithCharacteristicType:@"00000032-0000-1000-8000-0026BB765291" serviceType:typeCopy homeSPIClientIdentifier:uniqueIdentifier completion:v26];

LABEL_12:
}

void __59__HMHome_fetchLastModifiedServiceOfType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 context];
  v8 = [v9 delegateCaller];
  [v8 callCompletion:*(a1 + 40) service:v7 error:v6];
}

- (id)logIdentifier
{
  uniqueIdentifier = [(HMHome *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)setSoftwareUpdateController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock_with_options();
  softwareUpdateController = self->_softwareUpdateController;
  self->_softwareUpdateController = controllerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySoftwareUpdateControllerV2)softwareUpdateController
{
  os_unfair_lock_lock_with_options();
  softwareUpdateController = self->_softwareUpdateController;
  if (!softwareUpdateController)
  {
    homeManager = [(HMHome *)self homeManager];
    softwareUpdateDocumentationManager = [homeManager softwareUpdateDocumentationManager];
    eventRouter = [homeManager eventRouter];
    v7 = eventRouter;
    if (softwareUpdateDocumentationManager && eventRouter)
    {
      v8 = [HMAccessorySoftwareUpdateControllerV2 alloc];
      context = [(HMHome *)self context];
      v10 = [(HMAccessorySoftwareUpdateControllerV2 *)v8 initWithContext:context home:self subscriptionProvider:v7 documentationManager:softwareUpdateDocumentationManager];
      v11 = self->_softwareUpdateController;
      self->_softwareUpdateController = v10;
    }

    softwareUpdateController = self->_softwareUpdateController;
  }

  v12 = softwareUpdateController;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)mediaDestinationsWithHomeTheaterSupportedOptions
{
  array = [MEMORY[0x1E695DF70] array];
  accessories = [(HMHome *)self accessories];
  v5 = [accessories na_filter:&__block_literal_global_1223];

  [array addObjectsFromArray:v5];
  mediaSystems = [(HMHome *)self mediaSystems];
  v7 = [mediaSystems na_filter:&__block_literal_global_1225];

  [array addObjectsFromArray:v7];

  return array;
}

uint64_t __58__HMHome_mediaDestinationsWithHomeTheaterSupportedOptions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestination];
  v3 = [v2 containsHomeTheaterSupportedOptions];

  return v3;
}

uint64_t __58__HMHome_mediaDestinationsWithHomeTheaterSupportedOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestination];
  v3 = [v2 containsHomeTheaterSupportedOptions];

  return v3;
}

- (id)mediaDestinationsWithSupportedOptions:(unint64_t)options
{
  accessories = [(HMHome *)self accessories];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__HMHome_mediaDestinationsWithSupportedOptions___block_invoke;
  v12[3] = &__block_descriptor_40_e21_B16__0__HMAccessory_8l;
  v12[4] = options;
  v6 = [accessories na_filter:v12];

  mediaSystems = [(HMHome *)self mediaSystems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__HMHome_mediaDestinationsWithSupportedOptions___block_invoke_2;
  v11[3] = &__block_descriptor_40_e23_B16__0__HMMediaSystem_8l;
  v11[4] = options;
  v8 = [mediaSystems na_filter:v11];

  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

uint64_t __48__HMHome_mediaDestinationsWithSupportedOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 audioDestination];
  v4 = [v3 containsSupportedOptions:*(a1 + 32)];

  return v4;
}

uint64_t __48__HMHome_mediaDestinationsWithSupportedOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 audioDestination];
  v4 = [v3 containsSupportedOptions:*(a1 + 32)];

  return v4;
}

- (HMPersonSettingsManager)personSettingsManager
{
  os_unfair_lock_lock_with_options();
  personSettingsManager = self->_personSettingsManager;
  if (!personSettingsManager)
  {
    v4 = [[HMPersonSettingsManager alloc] initWithHome:self];
    v5 = self->_personSettingsManager;
    self->_personSettingsManager = v4;

    personSettingsManager = self->_personSettingsManager;
  }

  v6 = personSettingsManager;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setPersonManagerSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  personManagerSettings = self->_personManagerSettings;
  self->_personManagerSettings = settingsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHomePersonManagerSettings)personManagerSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_personManagerSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPersonManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_lock_with_options();
  personManager = self->_personManager;
  self->_personManager = managerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHomePersonManager)personManager
{
  os_unfair_lock_lock_with_options();
  v3 = self->_personManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateApplicationData:(id)data forAppDataContainer:(id)container appDataContainerUUIDKeyName:(id)name completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  containerCopy = container;
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!containerCopy)
    {
      _HMFPreconditionFailure();
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (dataCopy)
    {
      dictionary2 = [dataCopy dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"kAppDataInformationKey"];
    }

    if (nameCopy)
    {
      applicationDataIdentifier = [containerCopy applicationDataIdentifier];
      uUIDString = [applicationDataIdentifier UUIDString];
      [dictionary setObject:uUIDString forKey:nameCopy];
    }

    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMHome *)self messageTargetUUID];
    v19 = [v17 initWithTarget:messageTargetUUID];

    v20 = MEMORY[0x1E69A2A10];
    v21 = [dictionary copy];
    v22 = [v20 messageWithName:@"kSetAppDataRequestKey" destination:v19 payload:v21];

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__HMHome_updateApplicationData_forAppDataContainer_appDataContainerUUIDKeyName_completionHandler___block_invoke;
    aBlock[3] = &unk_1E754D960;
    objc_copyWeak(&v46, location);
    v43 = containerCopy;
    v44 = dataCopy;
    v45 = handlerCopy;
    v23 = _Block_copy(aBlock);
    context2 = [(HMHome *)self context];
    pendingRequests = [context2 pendingRequests];

    identifier = [v22 identifier];
    v27 = _Block_copy(v23);
    [pendingRequests addCompletionBlock:v27 forIdentifier:identifier];

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __98__HMHome_updateApplicationData_forAppDataContainer_appDataContainerUUIDKeyName_completionHandler___block_invoke_2;
    v38[3] = &unk_1E754E480;
    v28 = pendingRequests;
    v39 = v28;
    v29 = identifier;
    v40 = v29;
    v30 = v23;
    v41 = v30;
    [v22 setResponseHandler:v38];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v22 completionHandler:0];

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v35;
      v48 = 2080;
      v49 = "[HMHome updateApplicationData:forAppDataContainer:appDataContainerUUIDKeyName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }
}

void __98__HMHome_updateApplicationData_forAppDataContainer_appDataContainerUUIDKeyName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (!v3)
  {
    [*(a1 + 32) setApplicationData:*(a1 + 40)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 48) error:v3];
}

void __98__HMHome_updateApplicationData_forAppDataContainer_appDataContainerUUIDKeyName_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (HMFMessageDestination)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHome *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (HMHome)initWithCoder:(id)coder
{
  v258[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy hm_decodeAndCacheStringForKey:@"homeName"];
  v6 = [coderCopy hm_decodeAndCacheUUIDFromStringForKey:@"homeUUID"];
  v7 = MEMORY[0x1E695DFD8];
  v258[0] = objc_opt_class();
  v258[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v258 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:kMediaSystemsCodingKey];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v12 = v10;
  }

  v217 = v12;

  if (v6)
  {
    v13 = MEMORY[0x1E695DFD8];
    v257[0] = objc_opt_class();
    v257[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v257 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"accessories"];

    v17 = MEMORY[0x1E695DFD8];
    v256[0] = objc_opt_class();
    v256[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v256 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"accessories.airplay"];

    v21 = v20;
    if ([v20 count])
    {
      v22 = [v16 arrayByAddingObjectsFromArray:v20];

      v16 = v22;
    }

    v23 = [(HMHome *)self initWithName:v5 uuid:v6 accessories:v16 mediaSystems:v217];
    if (!v23)
    {
      goto LABEL_87;
    }

    v211 = v20;
    v214 = v5;
    v24 = objc_autoreleasePoolPush();
    v210 = v23;
    v25 = v23;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      *buf = 138543874;
      v251 = v27;
      v252 = 2112;
      v253 = v28;
      v254 = 2112;
      v255 = v16;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_DEBUG, "%{public}@decoded accessories: %@, %@", buf, 0x20u);
    }

    v212 = v16;

    objc_autoreleasePoolPop(v24);
    v25->_homeLocationStatus = [coderCopy decodeIntegerForKey:@"HMHomeLocationStatusValueCodingKey"];
    v29 = MEMORY[0x1E695DFD8];
    v249[0] = objc_opt_class();
    v249[1] = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v249 count:2];
    v31 = [v29 setWithArray:v30];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"rooms"];

    v209 = v32;
    [(HMMutableArray *)v25->_currentRooms setArray:v32];
    v33 = MEMORY[0x1E695DFD8];
    v248[0] = objc_opt_class();
    v248[1] = objc_opt_class();
    v248[2] = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:3];
    v35 = [v33 setWithArray:v34];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"zones"];

    v208 = v36;
    [(HMMutableArray *)v25->_currentZones setArray:v36];
    v37 = MEMORY[0x1E695DFD8];
    v247[0] = objc_opt_class();
    v247[1] = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v247 count:2];
    v39 = [v37 setWithArray:v38];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"serviceGroups"];

    v207 = v40;
    [(HMMutableArray *)v25->_currentServiceGroups setArray:v40];
    v41 = MEMORY[0x1E695DFD8];
    v246[0] = objc_opt_class();
    v246[1] = objc_opt_class();
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v246 count:2];
    v43 = [v41 setWithArray:v42];

    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"actionSets"];
    [(HMMutableArray *)v25->_currentActionSets setArray:v44];
    v25->_homeHubState = [coderCopy decodeIntegerForKey:@"HM.homeHubState"];
    v45 = [coderCopy decodeObjectOfClasses:v43 forKey:@"builtinActionSets"];

    [(HMMutableArray *)v25->_currentActionSets addObjectsFromArray:v45];
    v206 = v43;
    v46 = [coderCopy decodeObjectOfClasses:v43 forKey:@"HM.triggerOwnedActionSets"];

    v205 = v46;
    [(HMMutableArray *)v25->_currentTriggerOwnedActionSets setArray:v46];
    v47 = MEMORY[0x1E695DFD8];
    v245[0] = objc_opt_class();
    v245[1] = objc_opt_class();
    v245[2] = objc_opt_class();
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:3];
    v49 = [v47 setWithArray:v48];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"triggers"];

    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v231 objects:v244 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v232;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v232 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v231 + 1) + 8 * i);
          if ([v56 compatibleWithApp])
          {
            [(HMMutableArray *)v25->_currentTriggers addObject:v56];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v231 objects:v244 count:16];
      }

      while (v53);
    }

    v213 = v6;

    v204 = v51;
    if ([coderCopy containsValueForKey:@"HM.userAccessAllowed"])
    {
      v57 = [coderCopy decodeBoolForKey:@"HM.userAccessAllowed"];
    }

    else
    {
      v57 = 1;
    }

    v25->_ownerUser = [coderCopy decodeBoolForKey:@"HM.isOwnerUser"];
    v25->_adminUser = [coderCopy decodeBoolForKey:@"isAdminUser"];
    v25->_supportsResidentActionSetStateEvaluation = [coderCopy decodeBoolForKey:@"HMHomeSupportsResidentActionSetStateEvaluationCodingKey"];
    v63 = MEMORY[0x1E695DF70];
    v64 = MEMORY[0x1E695DFD8];
    v243[0] = objc_opt_class();
    v243[1] = objc_opt_class();
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v243 count:2];
    v66 = [v64 setWithArray:v65];
    v67 = [coderCopy decodeObjectOfClasses:v66 forKey:@"users"];
    v68 = [v63 arrayWithArray:v67];

    v229 = 0u;
    v230 = 0u;
    v227 = 0u;
    v228 = 0u;
    v69 = v68;
    v70 = [v69 countByEnumeratingWithState:&v227 objects:v242 count:16];
    obj = v69;
    if (v70)
    {
      v71 = v70;
      v72 = *v228;
      while (2)
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v228 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v227 + 1) + 8 * j);
          if ([v74 isCurrentUser])
          {
            objc_storeStrong(&v25->_currentUser, v74);
            v69 = obj;
            goto LABEL_34;
          }
        }

        v69 = obj;
        v71 = [obj countByEnumeratingWithState:&v227 objects:v242 count:16];
        if (v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:

    v220 = v25;
    if (v25->_currentUser)
    {
      [v69 removeObject:?];
      v75 = 0x1E695D000;
    }

    else
    {
      ownerUser = v25->_ownerUser;
      v77 = 1;
      if (v25->_ownerUser)
      {
        v78 = 2;
      }

      else
      {
        v78 = 1;
      }

      v79 = [HMUserCameraAccess accessWithValue:v78];
      if ([coderCopy containsValueForKey:@"HMHomeAccessControlOverrideCodingKey"])
      {
        v80 = v79;
        v81 = [coderCopy decodeIntegerForKey:@"HMHomeAccessControlOverrideCodingKey"];
        v82 = objc_autoreleasePoolPush();
        v83 = v25;
        v84 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          v85 = HMFGetLogIdentifier();
          *buf = 138543618;
          v251 = v85;
          v252 = 2048;
          v253 = v81;
          _os_log_impl(&dword_19BB39000, v84, OS_LOG_TYPE_INFO, "%{public}@Overriding Home Access Control for current user to 0x%08lx", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v82);
        v25 = v220;
        v220->_ownerUser = (v81 & 4) != 0;
        v220->_adminUser = (v81 & 2) != 0;
        v57 = v81 & 1;
        v86 = (v81 >> 4) & 1;
        v77 = (v81 >> 3) & 1;
        v79 = v80;
      }

      else
      {
        LOBYTE(v86) = ownerUser;
      }

      LOBYTE(v203) = 0;
      v87 = v79;
      LOBYTE(v202) = v86;
      v204 = [[HMHomeAccessControl alloc] initWithUser:0 allowAccess:v57 owner:ownerUser administratorPrivilege:v25->_adminUser remoteAccess:v77 presenceAuthStatus:0 presenceComputeStatus:0 announceAccess:v202 camerasAccess:v79 audioAnalysisUserDropInAccessLevel:0 restrictedGuest:v203 restrictedGuestAccessSettings:0, v204];
      if ((v57 & 1) == 0)
      {
        if ([coderCopy containsValueForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"])
        {
          v89 = [coderCopy decodeIntegerForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"];
        }

        else
        {
          v89 = 1;
        }

        v90 = objc_autoreleasePoolPush();
        v91 = v25;
        v92 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
        {
          v93 = HMFGetLogIdentifier();
          v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v89];
          *buf = 138543618;
          v251 = v93;
          v252 = 2112;
          v253 = v94;
          _os_log_impl(&dword_19BB39000, v92, OS_LOG_TYPE_INFO, "%{public}@Access to the home is not allowed due to : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v90);
        [(HMHomeAccessControl *)v204 setAccessNotAllowedReasonCode:v89];
        v25 = v220;
      }

      v95 = [HMUser alloc];
      v96 = +[HMLocalization sharedManager];
      v97 = [v96 getLocalizedString:@"CURRENT_USER"];
      v98 = MEMORY[0x1E696AFB0];
      uniqueIdentifier = [(HMHome *)v25 uniqueIdentifier];
      v100 = [v98 hm_deriveUUIDFromBaseUUID:uniqueIdentifier];
      v101 = [(HMUser *)v95 initWithUserID:0 name:v97 uuid:v100 home:v25 homeAccessControl:v204];
      currentUser = v25->_currentUser;
      v25->_currentUser = v101;

      v103 = objc_autoreleasePoolPush();
      v104 = v25;
      v105 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        v106 = HMFGetLogIdentifier();
        v107 = v25->_currentUser;
        uuid = [(HMUser *)v107 uuid];
        *buf = 138543874;
        v251 = v106;
        v252 = 2112;
        v253 = v107;
        v254 = 2112;
        v255 = uuid;
        _os_log_impl(&dword_19BB39000, v105, OS_LOG_TYPE_INFO, "%{public}@Created a random user in framework: %@ / %@", buf, 0x20u);

        v25 = v220;
      }

      objc_autoreleasePoolPop(v103);
      [(HMUser *)v25->_currentUser setCurrentUser:1];

      v75 = 0x1E695D000uLL;
      v69 = obj;
    }

    [(HMMutableArray *)v25->_currentUsers setArray:v69];
    v109 = *(v75 + 4056);
    v241[0] = objc_opt_class();
    v241[1] = objc_opt_class();
    v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v241 count:2];
    v111 = [v109 setWithArray:v110];
    v112 = [coderCopy decodeObjectOfClasses:v111 forKey:@"residentDevices"];

    v216 = v112;
    [(HMMutableArray *)v25->_currentResidentDevices setArray:v112];
    v113 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomForEntireHome"];
    roomForEntireHome = v25->_roomForEntireHome;
    v25->_roomForEntireHome = v113;

    v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeLocation"];
    homeLocation = v25->_homeLocation;
    v25->_homeLocation = v115;

    currentOutgoingInvitations = v25->_currentOutgoingInvitations;
    v118 = *(v75 + 4056);
    v240[0] = objc_opt_class();
    v240[1] = objc_opt_class();
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v240 count:2];
    v120 = [v118 setWithArray:v119];
    v215 = coderCopy;
    v121 = [coderCopy decodeObjectOfClasses:v120 forKey:@"HM.invitations"];
    [(HMMutableArray *)currentOutgoingInvitations setArray:v121];

    v219 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[HMMutableArray count](v25->_currentOutgoingInvitations, "count")}];
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    array = [(HMMutableArray *)v25->_currentOutgoingInvitations array];
    v123 = [array countByEnumeratingWithState:&v223 objects:v239 count:16];
    if (v123)
    {
      v124 = v123;
      v125 = *v224;
      do
      {
        for (k = 0; k != v124; ++k)
        {
          if (*v224 != v125)
          {
            objc_enumerationMutation(array);
          }

          v127 = *(*(&v223 + 1) + 8 * k);
          invitee = [v127 invitee];
          if (invitee)
          {
            array2 = [(HMMutableArray *)v220->_currentUsers array];
            userID = [invitee userID];
            v131 = [array2 hmf_firstObjectWithValue:userID forKeyPath:@"userID"];

            if (v131)
            {
              [v131 setPendingAccessoryInvitationsWithOutgoingInvitation:v127];
              [v219 addObject:v127];
            }
          }
        }

        v124 = [array countByEnumeratingWithState:&v223 objects:v239 count:16];
      }

      while (v124);
    }

    v132 = v220;
    [(HMMutableArray *)v220->_currentOutgoingInvitations removeObjectsInArray:v219];
    coderCopy = v215;
    v133 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HM.matterFabricID"];
    matterFabricID = v220->_matterFabricID;
    v220->_matterFabricID = v133;

    v135 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v215 key:@"HM.appData"];
    applicationData = v220->_applicationData;
    v220->_applicationData = v135;

    v220->_automaticSoftwareUpdateEnabled = [v215 decodeBoolForKey:@"HM.automaticSoftwareUpdateEnabled"];
    v220->_automaticThirdPartyAccessorySoftwareUpdateEnabled = [v215 decodeBoolForKey:@"HM.automaticThirdPartyAccessorySoftwareUpdateEnabled"];
    v220->_minimumMediaUserPrivilege = [v215 decodeIntegerForKey:@"HM.mediaMinimumUserPrivilege"];
    v220->_mediaPeerToPeerEnabled = [v215 decodeBoolForKey:@"HM.mediaPeerToPeerEnabled"];
    v137 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HM.mediaPassword"];
    mediaPassword = v220->_mediaPassword;
    v220->_mediaPassword = v137;

    v220->_protectionMode = [v215 decodeIntegerForKey:@"HMHM.networkProtectionMode"];
    v139 = [v215 decodeIntegerForKey:@"HMHM.networkRouterSupportDisableReason"];
    v140 = ((v139 << 60) >> 63) & 3;
    if ((v139 & 7) != 0)
    {
      v140 = 7;
    }

    v220->_networkRouterSupport = v140 | (v139 >> 3) & 2;
    v220->_networkRouterSupportDisableReason = v139;
    v220->_multiUserEnabled = [v215 decodeBoolForKey:@"HMHomeMultiUserEnabledValueCodingKey"];
    v141 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeAudioAnalysisClassifierOptionsCodingKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v142 = v141;
    }

    else
    {
      v142 = 0;
    }

    v143 = v142;

    unsignedIntegerValue = [v143 unsignedIntegerValue];
    v220->_audioAnalysisClassifierOptions = unsignedIntegerValue;
    v220->_didOnboardAudioAnalysis = [v215 decodeBoolForKey:@"HMHomeAudioAnalysisHomeOnboardingCodingKey"];
    v145 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeSiriPhraseOptionsCodingKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v146 = v145;
    }

    else
    {
      v146 = 0;
    }

    v147 = v146;

    unsignedIntegerValue2 = [v147 unsignedIntegerValue];
    v220->_siriPhraseOptions = unsignedIntegerValue2;
    v220->_soundCheckEnabled = [v215 decodeBoolForKey:@"HMHomeSoundCheckCodingKey"];
    v220->_locationServicesEnabled = [v215 decodeBoolForKey:@"HMHomeLocationServicesEnabledCodingKey"];
    v220->_didOnboardLocationServices = [v215 decodeBoolForKey:@"HMHomeDidOnboardLocationServicesCodingKey"];
    v220->_hasAnyUserAcknowledgedCameraRecordingOnboarding = [v215 decodeBoolForKey:@"HMHomeHasAnyUserAcknowledgedCameraRecordingOnboardingValueCodingKey"];
    v220->_hasOnboardedForAccessCode = [v215 decodeBoolForKey:@"HMHomeHasOnboardedForAccessCodeCodingKey"];
    v220->_hasOnboardedForWalletKey = [v215 decodeBoolForKey:@"HMHomeHasOnboardedForWalletKeyCodingKey"];
    v220->_dismissedWalletKeyUWBUnlockOnboarding = [v215 decodeBoolForKey:@"HMHomeDismissedWalletKeyUWBUnlockOnboardingCodingKey"];
    v149 = [MEMORY[0x1E695DFA8] set];
    if ([v215 decodeBoolForKey:@"HMHM.addNetworkRouterEnabled"])
    {
      [v149 addObject:&unk_1F0EFD088];
    }

    v150 = [v149 copy];
    supportedFeatures = v220->_supportedFeatures;
    v220->_supportedFeatures = v150;

    v152 = MEMORY[0x1E695DFD8];
    v238[0] = objc_opt_class();
    v238[1] = objc_opt_class();
    v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v238 count:2];
    v154 = [v152 setWithArray:v153];
    v155 = [v215 decodeObjectOfClasses:v154 forKey:@"HMHomeAccessoryNetworkProtectionGroupsCodingKey"];

    currentAccessoryProtectionGroups = v220->_currentAccessoryProtectionGroups;
    allObjects = [v155 allObjects];
    [(HMMutableArray *)currentAccessoryProtectionGroups setArray:allObjects];

    v220->_isFeatureHomeTheaterQFAEnabled = [v215 decodeBoolForKey:@"HMHomeTheaterQFAEnabledCodingKey"];
    v158 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeSiriEndpointSupportedCodingKey"];
    supportedSiriEndPointVersion = v220->_supportedSiriEndPointVersion;
    v220->_supportedSiriEndPointVersion = v158;

    v160 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHM.threadNetworkID"];
    threadNetworkID = v220->_threadNetworkID;
    v220->_threadNetworkID = v160;

    v162 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomePersonManagerSettingsCodingKey"];
    v163 = v162;
    if (v162)
    {
      v164 = v162;
    }

    else
    {
      v164 = objc_alloc_init(HMHomePersonManagerSettings);
    }

    personManagerSettings = v220->_personManagerSettings;
    v220->_personManagerSettings = v164;

    v166 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHM.personManagerZoneUUID"];
    personManagerZoneUUID = v220->_personManagerZoneUUID;
    v220->_personManagerZoneUUID = v166;

    v220->_bulletinNotificationsSupported = [v215 decodeBoolForKey:@"HMHomeBulletinNotificationsSupportedCodingKey"];
    v168 = 0x1E695D000uLL;
    v169 = MEMORY[0x1E695DFD8];
    v237[0] = objc_opt_class();
    v237[1] = objc_opt_class();
    v170 = [MEMORY[0x1E695DEC8] arrayWithObjects:v237 count:2];
    v171 = [v169 setWithArray:v170];
    v172 = [v215 decodeObjectOfClasses:v171 forKey:@"HMHomePrimaryResidentNetworkInfoCodingKey"];
    primaryResidentNetworkInfo = v220->_primaryResidentNetworkInfo;
    v220->_primaryResidentNetworkInfo = v172;

    v220->_didOnboardEventLog = [v215 decodeBoolForKey:@"HM.EL.onboarded"];
    v220->_eventLogEnabled = [v215 decodeBoolForKey:@"HM.EL.enabled"];
    v220->_eventLogDuration = [v215 decodeIntegerForKey:@"HM.EL.duration"];
    v220->_isAllowedToEnableAdaptiveTemperatureAutomations = [v215 decodeBoolForKey:@"HM.AllowedToEnable.ATA.CodingKey"];
    v174 = MEMORY[0x1E695DFD8];
    v236[0] = objc_opt_class();
    v236[1] = objc_opt_class();
    v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:v236 count:2];
    v176 = [v174 setWithArray:v175];
    v177 = [v215 decodeObjectOfClasses:v176 forKey:@"HMHomeActivityStateSchedulesCodingKey"];
    homeActivityStateSchedules = v220->_homeActivityStateSchedules;
    v220->_homeActivityStateSchedules = v177;

    v179 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeTimeZoneCodingKey"];
    timeZone = v220->_timeZone;
    v220->_timeZone = v179;

    v181 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeNumberOfCamerasCodingKey"];
    numberOfCameras = v220->_numberOfCameras;
    v220->_numberOfCameras = v181;

    homeAccessControl = [(HMUser *)v220->_currentUser homeAccessControl];
    if ([homeAccessControl isRestrictedGuest])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      if ([bundleIdentifier isEqualToString:@"com.apple.rapportd"])
      {

        v132 = v220;
      }

      else
      {
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier2 = [mainBundle2 bundleIdentifier];

        v168 = 0x1E695D000;
        v132 = v220;
        if (bundleIdentifier2)
        {
LABEL_86:
          v132->_supportsResidentSelection = [v215 decodeBoolForKey:@"HMHomeResidentSelectionSupported"];
          v194 = [v215 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeUserSelectedPreferredResident"];
          userSelectedPreferredResident = v132->_userSelectedPreferredResident;
          v132->_userSelectedPreferredResident = v194;

          v196 = *(v168 + 4056);
          v235[0] = objc_opt_class();
          v235[1] = objc_opt_class();
          v197 = [MEMORY[0x1E695DEC8] arrayWithObjects:v235 count:2];
          v198 = [v196 setWithArray:v197];
          v199 = [v215 decodeObjectOfClasses:v198 forKey:@"HMHomeAutoSelectedPreferredResidents"];
          autoSelectedPreferredResidents = v132->_autoSelectedPreferredResidents;
          v132->_autoSelectedPreferredResidents = v199;

          v6 = v213;
          v5 = v214;
          v21 = v211;
          v16 = v212;
          v23 = v210;
LABEL_87:
          selfCopy = v23;

          v62 = selfCopy;
          goto LABEL_88;
        }
      }

      v188 = objc_autoreleasePoolPush();
      v189 = v132;
      v190 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
      {
        v191 = HMFGetLogIdentifier();
        mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier3 = [mainBundle3 bundleIdentifier];
        *buf = 138543618;
        v251 = v191;
        v252 = 2112;
        v253 = bundleIdentifier3;
        _os_log_impl(&dword_19BB39000, v190, OS_LOG_TYPE_INFO, "%{public}@Creating dummy accessories for Rapport: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v188);
      v221[0] = MEMORY[0x1E69E9820];
      v221[1] = 3221225472;
      v221[2] = __24__HMHome_initWithCoder___block_invoke;
      v221[3] = &unk_1E7549D30;
      v222 = v189;
      [v216 na_each:v221];
      homeAccessControl = v222;
      v168 = 0x1E695D000uLL;
      v132 = v220;
    }

    goto LABEL_86;
  }

  v58 = objc_autoreleasePoolPush();
  selfCopy = self;
  v60 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v61 = HMFGetLogIdentifier();
    *buf = 138543362;
    v251 = v61;
    _os_log_impl(&dword_19BB39000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode home due to no uuid", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v58);
  v62 = 0;
LABEL_88:

  return v62;
}

void __24__HMHome_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 IDSIdentifier];
  v5 = [v3 IDSDestination];
  v6 = [v3 deviceIRKData];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v4 && v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v22 = 138544130;
      v23 = v11;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Creating dummy accessory for resident: %@, with IDSIdentifier: %@, deviceIRKData: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [[HMAccessory alloc] initWithUUID:v4];
    [(HMAccessory *)v12 setDeviceIRKData:v6];
    v13 = [HMDevice alloc];
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [(HMDevice *)v13 initWithUUID:v14 name:@"Dummy Device" isCurrentDevice:0];
    [(HMAccessory *)v12 setDevice:v15];

    v16 = objc_alloc(MEMORY[0x1E69A29E0]);
    v17 = [v16 initWithType:*MEMORY[0x1E69A2990] size:*MEMORY[0x1E69A2988] data:v6];
    v18 = [(HMAccessory *)v12 device];
    [v18 setRapportIRK:v17];

    v19 = [(HMAccessory *)v12 device];
    [v19 setIdsIdentifier:v4];

    v20 = [(HMAccessory *)v12 device];
    [v20 setIdsDestination:v5];

    [*(*(a1 + 32) + 440) addObject:v12];
  }

  else
  {
    if (v10)
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138544130;
      v23 = v21;
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Not creating dummy accessory for resident with missing data. Resident: %@, IDSIdentifier: %@, deviceIRKData: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_notifyDelegateOfBulletinNotificationsSupportedUpdate
{
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__HMHome__notifyDelegateOfBulletinNotificationsSupportedUpdate__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

uint64_t __63__HMHome__notifyDelegateOfBulletinNotificationsSupportedUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 areBulletinNotificationsSupported];

  return [v1 home:v2 didUpdateAreBulletinNotificationsSupported:v3];
}

- (void)_notifyDelegateOfUpdatedHomeLocationStatus
{
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__HMHome__notifyDelegateOfUpdatedHomeLocationStatus__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

- (void)_removeIncompatibleTrigger:(id)trigger
{
  triggerCopy = trigger;
  [triggerCopy _unconfigure];
  currentTriggers = [(HMHome *)self currentTriggers];
  [currentTriggers removeObject:triggerCopy];

  [(HMHome *)self _notifyDelegateOfTriggerRemoved:triggerCopy];
}

- (void)_notifyDelegateOfHomeHubStateUpdate
{
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F5CBF8])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__HMHome__notifyDelegateOfHomeHubStateUpdate__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

uint64_t __45__HMHome__notifyDelegateOfHomeHubStateUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 homeHubState];

  return [v1 home:v2 didUpdateHomeHubState:v3];
}

- (void)_notifyDelegateOfTriggerUpdated:(id)updated
{
  v21 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if ([updatedCopy compatibleWithApp])
  {
    delegate = [(HMHome *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__HMHome__notifyDelegateOfTriggerUpdated___block_invoke;
      v13[3] = &unk_1E754E5E8;
      v14 = delegate;
      selfCopy = self;
      v16 = updatedCopy;
      [delegateCaller invokeBlock:v13];
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
      name = [updatedCopy name];
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = name;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updated trigger %@ is no longer compatible", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMHome *)selfCopy2 _removeIncompatibleTrigger:updatedCopy];
  }
}

- (void)_notifyDelegateOfTriggerRemoved:(id)removed
{
  removedCopy = removed;
  delegate = [(HMHome *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__HMHome__notifyDelegateOfTriggerRemoved___block_invoke;
    v8[3] = &unk_1E754E5E8;
    v8[4] = self;
    v9 = removedCopy;
    v10 = delegate;
    [delegateCaller invokeBlock:v8];
  }
}

uint64_t __42__HMHome__notifyDelegateOfTriggerRemoved___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveTrigger with trigger: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveTrigger:*(a1 + 40)];
}

- (void)_notifyDelegateOfTriggerAdded:(id)added
{
  addedCopy = added;
  delegate = [(HMHome *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__HMHome__notifyDelegateOfTriggerAdded___block_invoke;
    v8[3] = &unk_1E754E5E8;
    v8[4] = self;
    v9 = addedCopy;
    v10 = delegate;
    [delegateCaller invokeBlock:v8];
  }
}

uint64_t __40__HMHome__notifyDelegateOfTriggerAdded___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddTrigger with trigger: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddTrigger:*(a1 + 40)];
}

- (void)_notifyDelegateOfAccesoryInvitationsUpdateForUser:(id)user
{
  userCopy = user;
  if (userCopy)
  {
    delegate = [(HMHome *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(HMHome *)self delegate];
      if ([delegate2 conformsToProtocol:&unk_1F0F63B38])
      {
        v8 = delegate2;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__HMHome__notifyDelegateOfAccesoryInvitationsUpdateForUser___block_invoke;
      v13[3] = &unk_1E754E5E8;
      v14 = v9;
      selfCopy = self;
      v16 = userCopy;
      v12 = v9;
      [delegateCaller invokeBlock:v13];
    }
  }
}

- (void)notifyDelegateOfAccesoryInvitationsUpdateForUser:(id)user
{
  v18 = *MEMORY[0x1E69E9840];
  userCopy = user;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__HMHome_notifyDelegateOfAccesoryInvitationsUpdateForUser___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = userCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome notifyDelegateOfAccesoryInvitationsUpdateForUser:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_notifyDelegateOfAccessControlUpdateForUser:(id)user
{
  userCopy = user;
  delegate = [(HMHome *)self delegate];
  if (userCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = delegate;
    if ([v6 conformsToProtocol:&unk_1F0F63B38])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__HMHome__notifyDelegateOfAccessControlUpdateForUser___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v17[4] = self;
    v18 = userCopy;
    v19 = v8;
    v11 = v8;
    [delegateCaller invokeBlock:v17];
  }

  if ([userCopy isCurrentUser] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context2 = [(HMHome *)self context];
    delegateCaller2 = [context2 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__HMHome__notifyDelegateOfAccessControlUpdateForUser___block_invoke_1178;
    v14[3] = &unk_1E754E5C0;
    v15 = delegate;
    selfCopy = self;
    [delegateCaller2 invokeBlock:v14];
  }
}

uint64_t __54__HMHome__notifyDelegateOfAccessControlUpdateForUser___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] homeAccessControl];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client for didUpdateAccessControlForUser : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [a1[6] home:a1[4] didUpdateAccessControlForUser:a1[5]];
}

- (void)notifyDelegateOfAccessControlUpdateForUser:(id)user
{
  v18 = *MEMORY[0x1E69E9840];
  userCopy = user;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__HMHome_notifyDelegateOfAccessControlUpdateForUser___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = userCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome notifyDelegateOfAccessControlUpdateForUser:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_invokeDelegateForAppData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy uuidForKey:@"kRoomUUID"];
  if (v4)
  {
    v5 = [(HMHome *)self roomWithUUID:v4];
    [(HMHome *)self _notifyDelegateOfAppDataUpdateForRoom:v5];
  }

  else
  {
    v5 = [dataCopy uuidForKey:@"kServiceGroupUUID"];
    if (v5)
    {
      v6 = [(HMHome *)self serviceGroupWithUUID:v5];
      [(HMHome *)self _notifyDelegateOfAppDataUpdateForServiceGroup:v6];
    }

    else
    {
      v6 = [dataCopy uuidForKey:@"kActionSetUUID"];
      if (v6)
      {
        v7 = [(HMHome *)self actionSetWithUUID:v6];
        [(HMHome *)self _notifyDelegateOfAppDataUpdateForActionSet:v7];
      }

      else
      {
        [(HMHome *)self _notifyDelegateOfAppDataUpdate];
      }
    }
  }
}

- (void)_notifyDelegateOfAppDataUpdate
{
  delegate = [(HMHome *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__HMHome__notifyDelegateOfAppDataUpdate__block_invoke;
    v7[3] = &unk_1E754E2A8;
    v7[4] = self;
    [delegateCaller invokeBlock:v7];
  }
}

void __40__HMHome__notifyDelegateOfAppDataUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _privateDelegate];
  [v2 homeDidUpdateApplicationData:*(a1 + 32)];
}

- (void)_notifyDelegateOfAppDataUpdateForActionSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    delegate = [(HMHome *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      _privateDelegate = [(HMHome *)self _privateDelegate];
      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53__HMHome__notifyDelegateOfAppDataUpdateForActionSet___block_invoke;
      v11[3] = &unk_1E754E5E8;
      v12 = _privateDelegate;
      selfCopy = self;
      v14 = setCopy;
      v10 = _privateDelegate;
      [delegateCaller invokeBlock:v11];
    }
  }
}

- (void)notifyDelegateOfAppDataUpdateForActionSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  setCopy = set;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__HMHome_notifyDelegateOfAppDataUpdateForActionSet___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = setCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome notifyDelegateOfAppDataUpdateForActionSet:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_notifyDelegateOfAppDataUpdateForServiceGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    delegate = [(HMHome *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      _privateDelegate = [(HMHome *)self _privateDelegate];
      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__HMHome__notifyDelegateOfAppDataUpdateForServiceGroup___block_invoke;
      v11[3] = &unk_1E754E5E8;
      v12 = _privateDelegate;
      selfCopy = self;
      v14 = groupCopy;
      v10 = _privateDelegate;
      [delegateCaller invokeBlock:v11];
    }
  }
}

- (void)notifyDelegateOfAppDataUpdateForServiceGroup:(id)group
{
  v18 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__HMHome_notifyDelegateOfAppDataUpdateForServiceGroup___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = groupCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome notifyDelegateOfAppDataUpdateForServiceGroup:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_notifyDelegateOfAppDataUpdateForRoom:(id)room
{
  roomCopy = room;
  if (roomCopy)
  {
    delegate = [(HMHome *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      _privateDelegate = [(HMHome *)self _privateDelegate];
      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __48__HMHome__notifyDelegateOfAppDataUpdateForRoom___block_invoke;
      v11[3] = &unk_1E754E5E8;
      v12 = _privateDelegate;
      selfCopy = self;
      v14 = roomCopy;
      v10 = _privateDelegate;
      [delegateCaller invokeBlock:v11];
    }
  }
}

- (void)notifyDelegateOfAppDataUpdateForRoom:(id)room
{
  v18 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__HMHome_notifyDelegateOfAppDataUpdateForRoom___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = roomCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome notifyDelegateOfAppDataUpdateForRoom:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)_getContainerForAppData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy uuidForKey:@"kRoomUUID"];
  if (v5)
  {
    v6 = [(HMHome *)self roomWithUUID:v5];
  }

  else
  {
    v7 = [dataCopy uuidForKey:@"kServiceGroupUUID"];
    if (v7)
    {
      v6 = [(HMHome *)self serviceGroupWithUUID:v7];
    }

    else
    {
      v8 = [dataCopy uuidForKey:@"kActionSetUUID"];
      if (v8)
      {
        selfCopy = [(HMHome *)self actionSetWithUUID:v8];
      }

      else
      {
        selfCopy = self;
      }

      v6 = selfCopy;
    }
  }

  return v6;
}

- (void)_handleHomeHubStateUpdatedNotification:(id)notification
{
  v4 = [notification numberForKey:@"homeHubState"];
  if (v4)
  {
    v7 = v4;
    integerValue = [v4 integerValue];
    v6 = [(HMHome *)self homeHubState]== integerValue;
    v4 = v7;
    if (!v6)
    {
      self->_homeHubState = integerValue;
      [(HMHome *)self _notifyDelegateOfHomeHubStateUpdate];
      v4 = v7;
    }
  }
}

- (void)_handleHomeLocationStatusUpdateNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [(HMHome *)selfCopy name];
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = name;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Start handling home location status update notification in home %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v13 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v14 = [notificationCopy numberForKey:@"HMHomeLocationStatusValueKey"];
  v15 = v14;
  if (v14)
  {
    -[HMHome setHomeLocationStatus:](selfCopy, "setHomeLocationStatus:", [v14 integerValue]);
    if (v13)
    {
      context2 = [(HMHome *)selfCopy context];
      delegateCaller = [context2 delegateCaller];
      [delegateCaller callCompletion:v13 error:0];
    }

    else
    {
      [(HMHome *)selfCopy _notifyDelegateOfUpdatedHomeLocationStatus];
    }
  }
}

- (void)_handleAccessorySetupCodeFailureMessage:(id)message
{
  v4 = [message stringForKey:@"kAccessorySetupCodeReasonKey"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__HMHome__handleAccessorySetupCodeFailureMessage___block_invoke;
  v6[3] = &unk_1E7549CF8;
  v7 = v4;
  v5 = v4;
  [(HMHome *)self _notifySetupFailedIfInHomeUIService:v6];
}

id __50__HMHome__handleAccessorySetupCodeFailureMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"HMSetupCodeProviderReasonBadPassword"])
  {
    v2 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2002];
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"HMSetupCodeProviderReasontTimeoutRetry"])
    {
      v3 = 8;
    }

    else
    {
      v3 = 48;
    }

    v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v3];
  }

  return v2;
}

- (void)_handleRuntimeStateUpdate:(id)update reason:(id)reason
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  reasonCopy = reason;
  v8 = [updateCopy hmf_dictionaryForKey:@"kAccessoriesListKey"];
  v22 = reasonCopy;
  v20 = [@"Home-" stringByAppendingString:reasonCopy];
  v21 = v8;
  __handleAccessoryRuntimeStateUpdate(self, v8, v20);
  v23 = updateCopy;
  v9 = [updateCopy hmf_dictionaryForKey:@"residentDevicesList"];
  residentDevices = [(HMHome *)self residentDevices];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [v9 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{v16, v20, v21}];
        v18 = [residentDevices hmf_firstObjectWithUUID:v17];
        v19 = [v9 hmf_dictionaryForKey:v16];
        [v18 handleRuntimeStateUpdate:v19];

        ++v15;
      }

      while (v13 != v15);
      v13 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)handleRuntimeStateUpdate:(id)update reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  reasonCopy = reason;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__HMHome_handleRuntimeStateUpdate_reason___block_invoke;
    block[3] = &unk_1E754E5E8;
    block[4] = self;
    v16 = updateCopy;
    v17 = reasonCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMHome handleRuntimeStateUpdate:reason:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)_handleAccessoryInfoUpdatedNotification:(id)notification
{
  v39 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  messagePayload = [notificationCopy messagePayload];
  if (messagePayload)
  {
    v24 = notificationCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [messagePayload allKeys];
    v5 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      v8 = 0x1E696A000uLL;
      v25 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [objc_alloc(*(v8 + 4016)) initWithUUIDString:v10];
          v12 = [(HMHome *)self accessoryWithUUID:v11];

          v13 = [messagePayload hmf_dictionaryForKey:v10];
          v14 = v13;
          if (v12)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            v16 = v8;
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v20 = v19 = self;
              *buf = 138543874;
              v33 = v20;
              v34 = 2112;
              v35 = v10;
              v36 = 2112;
              v37 = v14;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Couldn't find the accessory for UUID %@ or dict (%@) is nil.", buf, 0x20u);

              self = v19;
              v7 = v25;
            }

            objc_autoreleasePoolPop(v17);
            v8 = v16;
          }

          else
          {
            [v12 updateAccessoryInfo:v13];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v6);
    }

    notificationCopy = v24;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Received invalid accessory information payload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (void)updateResidentSelectionVersion:(id)version completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateResidentSelectionVersion:completion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = context;
  if (context)
  {
    v10 = MEMORY[0x1E69A29F8];
    messageDestination = [(HMHome *)self messageDestination];
    v29 = @"HM.v";
    v30 = versionCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v13 = [v10 messageWithName:@"HM.SetResidentSelectionVersion" qualityOfService:25 destination:messageDestination payload:v12];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__HMHome_updateResidentSelectionVersion_completion___block_invoke;
    v26[3] = &unk_1E754DE00;
    v28 = completionCopy;
    v14 = v9;
    v27 = v14;
    [v13 setResponseHandler:v26];
    messageDispatcher = [v14 messageDispatcher];
    [messageDispatcher sendMessage:v13 completionHandler:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v19;
      v33 = 2080;
      v34 = "[HMHome updateResidentSelectionVersion:completion:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

void __52__HMHome_updateResidentSelectionVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) delegateCaller];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__HMHome_updateResidentSelectionVersion_completion___block_invoke_2;
    v5[3] = &unk_1E754E458;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 invokeBlock:v5];
  }
}

- (void)confirmResidentWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HMHome_confirmResidentWithCompletion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v14 = completionCopy;
    v13 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2080;
      v18 = "[HMHome confirmResidentWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __40__HMHome_confirmResidentWithCompletion___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69A2A10];
  v3 = [a1[4] messageDestination];
  v4 = [v2 messageWithName:@"HMRM.confirm" qualityOfService:25 destination:v3 payload:0];

  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__HMHome_confirmResidentWithCompletion___block_invoke_2;
  v9 = &unk_1E754DE00;
  v11 = a1[6];
  v10 = a1[5];
  [v4 setResponseHandler:&v6];
  v5 = [a1[5] messageDispatcher];
  [v5 sendMessage:v4 completionHandler:0];
}

void __40__HMHome_confirmResidentWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) delegateCaller];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__HMHome_confirmResidentWithCompletion___block_invoke_3;
    v5[3] = &unk_1E754E458;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 invokeBlock:v5];
  }
}

- (void)_setNotificationsEnabled:(BOOL)enabled forCharacteristics:(id)characteristics completionHandler:(id)handler
{
  enabledCopy = enabled;
  v81 = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v11 = context;
  if (context)
  {
    selfCopy = self;
    v59 = context;
    v60 = handlerCopy;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v13 = characteristicsCopy;
    v14 = [v13 countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v14)
    {
      v15 = v14;
      obj = v13;
      v57 = enabledCopy;
      v58 = characteristicsCopy;
      v62 = 0;
      v16 = *v69;
      selfCopy3 = self;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v69 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v68 + 1) + 8 * i);
          service = [v19 service];
          accessory = [service accessory];
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          if (uUIDString)
          {
            v24 = [v12 objectForKeyedSubscript:uUIDString];
            if (!v24)
            {
              v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
              [v12 setObject:v24 forKeyedSubscript:uUIDString];
            }

            instanceID = [v19 instanceID];
            [v24 addObject:instanceID];

            v62 = 1;
          }

          else
          {
            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy3;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v30 = v29 = v12;
              instanceID2 = [v19 instanceID];
              *buf = 138543618;
              v78 = v30;
              v79 = 2112;
              v80 = instanceID2;
              _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping enabling notification for characteristic %@", buf, 0x16u);

              v12 = v29;
              selfCopy3 = selfCopy;
            }

            objc_autoreleasePoolPop(v26);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
      }

      while (v15);

      characteristicsCopy = v58;
      if (v62)
      {
        v11 = v59;
        if (v57)
        {
          v74 = @"kNotificationEnablePayloadKey";
          v75 = v12;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v75;
          v34 = &v74;
        }

        else
        {
          v72 = @"kNotificationDisablePayloadKey";
          v73 = v12;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v73;
          v34 = &v72;
        }

        delegateCaller = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
        handlerCopy = v60;
        v46 = objc_alloc(MEMORY[0x1E69A2A10]);
        v47 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid2 = [(HMHome *)selfCopy uuid];
        v49 = [v47 initWithTarget:uuid2];
        v45 = [v46 initWithName:@"kCharacteristicEnableNotificationRequestKey" destination:v49 payload:delegateCaller];

        pendingRequests = [v59 pendingRequests];
        identifier = [v45 identifier];
        v52 = _Block_copy(v60);
        [pendingRequests addCompletionBlock:v52 forIdentifier:identifier];

        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __72__HMHome__setNotificationsEnabled_forCharacteristics_completionHandler___block_invoke;
        v64[3] = &unk_1E754E0A8;
        v65 = pendingRequests;
        v66 = identifier;
        v53 = v59;
        v67 = v53;
        v54 = identifier;
        v55 = pendingRequests;
        [v45 setResponseHandler:v64];
        messageDispatcher = [v53 messageDispatcher];
        [messageDispatcher sendMessage:v45];

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {

      selfCopy3 = self;
    }

    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy3;
    v42 = HMFGetOSLogHandle();
    v11 = v59;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v43;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@No valid characteristics to enable notifications", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    delegateCaller = [v59 delegateCaller];
    v45 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    handlerCopy = v60;
    [delegateCaller callCompletion:v60 error:v45];
    goto LABEL_28;
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v39 = v38 = characteristicsCopy;
    *buf = 138543618;
    v78 = v39;
    v79 = 2080;
    v80 = "[HMHome _setNotificationsEnabled:forCharacteristics:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);

    characteristicsCopy = v38;
  }

  objc_autoreleasePoolPop(v35);
LABEL_29:
}

void __72__HMHome__setNotificationsEnabled_forCharacteristics_completionHandler___block_invoke(uint64_t a1, void *a2)
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

- (void)setNotificationsEnabled:(BOOL)enabled forCharacteristics:(id)characteristics completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome setNotificationsEnabled:forCharacteristics:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v11 = context;
  if (!context)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2080;
      v33 = "[HMHome setNotificationsEnabled:forCharacteristics:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, context2);
    goto LABEL_9;
  }

  if (![characteristicsCopy count])
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v19];

LABEL_9:
    goto LABEL_10;
  }

  queue = [v11 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__HMHome_setNotificationsEnabled_forCharacteristics_completionHandler___block_invoke;
  block[3] = &unk_1E754A040;
  block[4] = self;
  enabledCopy = enabled;
  v27 = characteristicsCopy;
  v28 = handlerCopy;
  dispatch_async(queue, block);

LABEL_10:
}

- (void)reenableNotifications
{
  v38 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [(HMHome *)self accessories];
  v21 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v21)
  {
    v20 = *v32;
    do
    {
      v4 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v31 + 1) + 8 * v4);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        services = [v5 services];
        v7 = [services countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v28;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v28 != v9)
              {
                objc_enumerationMutation(services);
              }

              v11 = *(*(&v27 + 1) + 8 * i);
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              characteristics = [v11 characteristics];
              v13 = [characteristics countByEnumeratingWithState:&v23 objects:v35 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v24;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v24 != v15)
                    {
                      objc_enumerationMutation(characteristics);
                    }

                    v17 = *(*(&v23 + 1) + 8 * j);
                    if ([v17 notificationEnabledByThisClient])
                    {
                      [array addObject:v17];
                    }
                  }

                  v14 = [characteristics countByEnumeratingWithState:&v23 objects:v35 count:16];
                }

                while (v14);
              }
            }

            v8 = [services countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v8);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v21);
  }

  [(HMHome *)selfCopy _setNotificationsEnabled:1 forCharacteristics:array completionHandler:0];
  if ([(HMHome *)selfCopy notificationEnableRequested])
  {
    [(HMHome *)selfCopy _setAllNotificationsEnabled:1 includeAppleMediaAccessories:[(HMHome *)selfCopy notificationEnableRequestedForAppleMediaAccessories] completionHandler:0];
  }
}

- (void)_setAllNotificationsEnabled:(BOOL)enabled includeAppleMediaAccessories:(BOOL)accessories completionHandler:(id)handler
{
  accessoriesCopy = accessories;
  enabledCopy = enabled;
  *&v40[5] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (context)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v14;
      v39 = 1024;
      *v40 = enabledCopy;
      v40[2] = 1024;
      *&v40[3] = accessoriesCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting notifications enabled to %{BOOL}d, includeAppleMediaAccessories: %{BOOL}d", buf, 0x18u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMHome *)selfCopy setNotificationEnableRequested:enabledCopy];
    [(HMHome *)selfCopy setNotificationEnableRequestedForAppleMediaAccessories:accessoriesCopy];
    v35[0] = @"kCharacteristicNotificationEnableKey";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v35[1] = @"HMHomeEnableHomeAppleMediaNotificationsKey";
    v36[0] = v15;
    accessoriesCopy = [MEMORY[0x1E696AD98] numberWithInt:enabledCopy & accessoriesCopy];
    v36[1] = accessoriesCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

    v18 = objc_alloc(MEMORY[0x1E69A2A10]);
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v21 = [v19 initWithTarget:uuid];
    v22 = [v18 initWithName:@"HM.notificationEnable" destination:v21 payload:v17];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __85__HMHome__setAllNotificationsEnabled_includeAppleMediaAccessories_completionHandler___block_invoke;
    v29 = &unk_1E7549CD0;
    v30 = selfCopy;
    v33 = enabledCopy;
    v34 = accessoriesCopy;
    v23 = context;
    v31 = v23;
    v32 = handlerCopy;
    [v22 setResponseHandler:&v26];
    messageDispatcher = [v23 messageDispatcher];
    [messageDispatcher sendMessage:v22];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v25;
      v39 = 2080;
      *v40 = "[HMHome _setAllNotificationsEnabled:includeAppleMediaAccessories:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __85__HMHome__setAllNotificationsEnabled_includeAppleMediaAccessories_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = *(a1 + 56);
      v13 = *(a1 + 57);
      v21 = 138543874;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set notifications enabled to %{BOOL}d, includeAppleMediaAccessories: %{BOOL}d", &v21, 0x18u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [*(a1 + 40) delegateCaller];
    v15 = v14;
    v16 = *(a1 + 48);
    v17 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 56);
      v20 = *(a1 + 57);
      v21 = 138543874;
      v22 = v18;
      v23 = 1024;
      v24 = v19;
      v25 = 1024;
      v26 = v20;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set notifications enabled to %{BOOL}d, includeAppleMediaAccessories: %{BOOL}d", &v21, 0x18u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [*(a1 + 40) delegateCaller];
    v15 = v14;
    v16 = *(a1 + 48);
    v17 = 0;
  }

  [v14 callCompletion:v16 error:v17];
}

- (void)setAllNotificationsEnabled:(BOOL)enabled includeAppleMediaAccessories:(BOOL)accessories completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome setAllNotificationsEnabled:includeAppleMediaAccessories:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v10 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__HMHome_setAllNotificationsEnabled_includeAppleMediaAccessories_completionHandler___block_invoke;
    block[3] = &unk_1E7549CA8;
    block[4] = self;
    enabledCopy = enabled;
    accessoriesCopy = accessories;
    v24 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMHome setAllNotificationsEnabled:includeAppleMediaAccessories:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

- (void)_updateInvitation:(id)invitation invitationState:(int64_t)state completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    v32[0] = @"kInvitationIdentifierKey";
    identifier = [invitationCopy identifier];
    uUIDString = [identifier UUIDString];
    v32[1] = @"kInvitationStateKey";
    v33[0] = uUIDString;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v33[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v15 = objc_alloc(MEMORY[0x1E69A2A10]);
    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v18 = [v16 initWithTarget:uuid];
    v19 = [v15 initWithName:@"kUpdateInvitationStateRequestKey" destination:v18 payload:v14];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __62__HMHome__updateInvitation_invitationState_completionHandler___block_invoke;
    v29 = &unk_1E754DE00;
    v20 = context;
    v30 = v20;
    v31 = handlerCopy;
    [v19 setResponseHandler:&v26];
    messageDispatcher = [v20 messageDispatcher];
    [messageDispatcher sendMessage:v19];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2080;
      v37 = "[HMHome _updateInvitation:invitationState:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __62__HMHome__updateInvitation_invitationState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)_handleLocationAuthorizationUpdatedNotification:(id)notification
{
  v24 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
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

  homeManager = [(HMHome *)self homeManager];
  configuration = [homeManager configuration];
  locationAuthorization = [configuration locationAuthorization];

  if (v7 == locationAuthorization)
  {
    context = [(HMHome *)self context];
    if (context)
    {
      isAuthorized = [v7 isAuthorized];
      queue = [context queue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__HMHome__handleLocationAuthorizationUpdatedNotification___block_invoke;
      v18[3] = &unk_1E7549C80;
      v19 = isAuthorized;
      v18[4] = self;
      dispatch_async(queue, v18);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v17;
        v22 = 2080;
        v23 = "[HMHome _handleLocationAuthorizationUpdatedNotification:]";
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

void __58__HMHome__handleLocationAuthorizationUpdatedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if ([*(a1 + 32) locationAuthorization] != v3)
  {
    [*(a1 + 32) setLocationAuthorization:v3];
    v4 = *(a1 + 32);
    if (v2)
    {
      v5 = [*(a1 + 32) homeLocation];

      if (!v5)
      {
        v7 = *(a1 + 32);

        [v7 _retrieveLocation];
      }
    }

    else
    {
      v6 = [*(a1 + 32) homeLocationStatus];

      [v4 __updateLocation:0 locationStatus:v6];
    }
  }
}

- (void)__updateLocation:(id)location locationStatus:(int64_t)status
{
  v46 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  context = [(HMHome *)self context];
  queue = [context queue];

  if (queue)
  {
    context2 = [(HMHome *)self context];
    queue2 = [context2 queue];
    dispatch_assert_queue_V2(queue2);

    if ([(HMHome *)self locationAuthorization]== 2)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Treating updated location as nil because location authorization is not allowed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      locationCopy = 0;
    }

    homeLocation = [(HMHome *)self homeLocation];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        homeLocation2 = [(HMHome *)selfCopy2 homeLocation];
        *buf = 138543874;
        v41 = v20;
        v42 = 2112;
        v43 = homeLocation2;
        v44 = 2112;
        v45 = locationCopy;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating home location from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMHome *)selfCopy2 setHomeLocation:locationCopy];
      _privateDelegate = [(HMHome *)selfCopy2 _privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        context3 = [(HMHome *)selfCopy2 context];
        delegateCaller = [context3 delegateCaller];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __42__HMHome___updateLocation_locationStatus___block_invoke;
        v36[3] = &unk_1E754E5E8;
        v37 = _privateDelegate;
        v38 = selfCopy2;
        v39 = locationCopy;
        [delegateCaller invokeBlock:v36];
      }
    }

    if ([(HMHome *)self homeLocationStatus]!= status)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        homeLocationStatus = [(HMHome *)selfCopy3 homeLocationStatus];
        if (homeLocationStatus > 3)
        {
          v30 = @"HMHomeLocationAway";
        }

        else
        {
          v30 = off_1E754A260[homeLocationStatus];
        }

        if (status > 3)
        {
          v35 = @"HMHomeLocationAway";
        }

        else
        {
          v35 = off_1E754A260[status];
        }

        *buf = 138543874;
        v41 = v28;
        v42 = 2112;
        v43 = v30;
        v44 = 2112;
        v45 = v35;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating home location status from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      [(HMHome *)selfCopy3 setHomeLocationStatus:status];
      [(HMHome *)selfCopy3 _notifyDelegateOfUpdatedHomeLocationStatus];
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v34;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot update location as HMContext is invalid.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }
}

- (void)_retrieveLocation
{
  v19 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A10]);
    v5 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v7 = [v5 initWithTarget:uuid];
    v8 = [v4 initWithName:@"kRetrieveHomeLocationRequestKey" destination:v7 payload:0];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __27__HMHome__retrieveLocation__block_invoke;
    v14[3] = &unk_1E754CD98;
    v14[4] = self;
    [v8 setResponseHandler:v14];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v13;
      v17 = 2080;
      v18 = "[HMHome _retrieveLocation]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __27__HMHome__retrieveLocation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
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
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Retrieving location failed with error %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [*(a1 + 32) _handleHomeLocationUpdate:v6];
  }
}

- (void)updateAccessForUser:(id)user audioAnalysisUserDropinAccessLevel:(unint64_t)level completionHandler:(id)handler
{
  v46[2] = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAccessForUser:audioAnalysisUserDropinAccessLevel:completionHandler:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v33;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v11 = context;
  if (context)
  {
    if (userCopy)
    {
      v46[0] = userCopy;
      v45[0] = @"kUserIDKey";
      v45[1] = @"HMHomeAudioAnalysisDropInAccessLevelInformationKey";
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:level];
      v46[1] = v12;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:level];
        *buf = 138543874;
        v40 = v17;
        v41 = 2112;
        v42 = v18;
        v43 = 2112;
        v44 = userCopy;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis drop in access: %@ for userID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      uuid = [(HMHome *)selfCopy2 uuid];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __83__HMHome_updateAccessForUser_audioAnalysisUserDropinAccessLevel_completionHandler___block_invoke;
      v35[3] = &unk_1E754D030;
      v35[4] = selfCopy2;
      v36 = v11;
      v38 = handlerCopy;
      v37 = userCopy;
      [(_HMContext *)v36 sendMessage:uuid target:delegateCaller payload:v35 responseHandler:?];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v27;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@nil user UUID for audio analysis drop in access update request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      delegateCaller = [v11 delegateCaller];
      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v28];
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
      *buf = 138543618;
      v40 = v23;
      v41 = 2080;
      v42 = "[HMHome updateAccessForUser:audioAnalysisUserDropinAccessLevel:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __83__HMHome_updateAccessForUser_audioAnalysisUserDropinAccessLevel_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio analysis drop in access with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 56);
    v14 = v5;
  }

  else
  {
    [*(a1 + 32) __updateHomeAccessControlFromResponsePayload:v6 forUser:*(a1 + 48)];
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 56);
    v14 = 0;
  }

  [v11 callCompletion:v13 error:v14];
}

- (void)updateAccessForUser:(id)user announceAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v38 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAccessForUser:announceAccess:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v11 = context;
  if (!context)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v18;
      v36 = 2080;
      v37 = "[HMHome updateAccessForUser:announceAccess:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_9;
  }

  if (!userCopy)
  {
    delegateCaller = [context delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v20];

LABEL_9:
    goto LABEL_10;
  }

  v32[0] = @"kUserIDKey";
  v32[1] = @"HMHomeUserAnnounceAccessInformationKey";
  v33[0] = userCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:accessCopy];
  v33[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  uuid = [(HMHome *)self uuid];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__HMHome_updateAccessForUser_announceAccess_completionHandler___block_invoke;
  v27[3] = &unk_1E754D030;
  v28 = v11;
  v31 = handlerCopy;
  selfCopy3 = self;
  v30 = userCopy;
  [(_HMContext *)v28 sendMessage:uuid target:v13 payload:v27 responseHandler:?];

LABEL_10:
}

void __63__HMHome_updateAccessForUser_announceAccess_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) __updateHomeAccessControlFromResponsePayload:a3 forUser:*(a1 + 48)];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)updateAccessForUser:(id)user camerasAccessLevel:(unint64_t)level completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAccessForUser:camerasAccessLevel:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v28;
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v11 = context;
  if (context)
  {
    if (userCopy)
    {
      v35[0] = @"kUserIDKey";
      v35[1] = @"kUserCamerasAccessLevelInformationKey";
      v36[0] = userCopy;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:level];
      v36[1] = v12;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

      uuid = [(HMHome *)self uuid];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__HMHome_updateAccessForUser_camerasAccessLevel_completionHandler___block_invoke;
      v30[3] = &unk_1E754D030;
      v31 = v11;
      v34 = handlerCopy;
      selfCopy2 = self;
      v33 = userCopy;
      [(_HMContext *)v31 sendMessage:uuid target:delegateCaller payload:v30 responseHandler:?];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@User id not present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      delegateCaller = [v11 delegateCaller];
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v23];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v18;
      v39 = 2080;
      v40 = "[HMHome updateAccessForUser:camerasAccessLevel:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __67__HMHome_updateAccessForUser_camerasAccessLevel_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) __updateHomeAccessControlFromResponsePayload:a3 forUser:*(a1 + 48)];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)updateForUser:(id)user presenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateForUser:presenceAuthorizationStatus:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v26;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v11 = context;
  if (!context)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v18;
      v37 = 2080;
      v38 = "[HMHome updateForUser:presenceAuthorizationStatus:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, context2);
    goto LABEL_9;
  }

  if (!userCopy)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v21];

LABEL_9:
    goto LABEL_10;
  }

  v33[0] = @"kUserIDKey";
  v33[1] = @"kUserPresenceAuthorizationStatusKey";
  v34[0] = userCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
  v34[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  uuid = [(HMHome *)self uuid];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __70__HMHome_updateForUser_presenceAuthorizationStatus_completionHandler___block_invoke;
  v28[3] = &unk_1E754D030;
  v29 = v11;
  v32 = handlerCopy;
  selfCopy3 = self;
  v31 = userCopy;
  [(_HMContext *)v29 sendMessage:uuid target:v13 payload:v28 responseHandler:?];

LABEL_10:
}

void __70__HMHome_updateForUser_presenceAuthorizationStatus_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 56) error:v12];
  }

  else
  {
    v6 = [*(a1 + 40) _findUserWithID:*(a1 + 48)];
    v7 = [v5 objectForKeyedSubscript:@"kUserPresenceAuthorizationStatusKey"];
    v8 = [HMUserPresenceAuthorization authWithNumber:v7];
    v9 = v8;
    if (v6 && v8)
    {
      v10 = [v6 homeAccessControl];
      [v10 setPresenceAuthStatus:v9];
    }

    v11 = [*(a1 + 32) delegateCaller];
    [v11 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)updateAccessForUser:(id)user remoteAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v39 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAccessForUser:remoteAccess:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v26;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v11 = context;
  context2 = [(HMHome *)self context];

  if (!context2)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v19;
      v37 = 2080;
      v38 = "[HMHome updateAccessForUser:remoteAccess:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_9;
  }

  if (!userCopy)
  {
    delegateCaller = [v11 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:handlerCopy error:v21];

LABEL_9:
    goto LABEL_10;
  }

  v33[0] = @"kUserIDKey";
  v33[1] = @"kUserRemoteAccessInformationKey";
  v34[0] = userCopy;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:accessCopy];
  v34[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  uuid = [(HMHome *)self uuid];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__HMHome_updateAccessForUser_remoteAccess_completionHandler___block_invoke;
  v28[3] = &unk_1E754D030;
  v29 = v11;
  v32 = handlerCopy;
  selfCopy3 = self;
  v31 = userCopy;
  [(_HMContext *)v29 sendMessage:uuid target:v14 payload:v28 responseHandler:?];

LABEL_10:
}

void __61__HMHome_updateAccessForUser_remoteAccess_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) __updateHomeAccessControlFromResponsePayload:a3 forUser:*(a1 + 48)];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)updateAccessForUser:(id)user administrator:(BOOL)administrator completionHandler:(id)handler
{
  administratorCopy = administrator;
  v39 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAccessForUser:administrator:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v26;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v11 = context;
  context2 = [(HMHome *)self context];

  if (!context2)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v19;
      v37 = 2080;
      v38 = "[HMHome updateAccessForUser:administrator:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_9;
  }

  if (!userCopy)
  {
    delegateCaller = [v11 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:handlerCopy error:v21];

LABEL_9:
    goto LABEL_10;
  }

  v33[0] = @"kUserIDKey";
  v33[1] = @"kUserAdministratorInformationKey";
  v34[0] = userCopy;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:administratorCopy];
  v34[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  uuid = [(HMHome *)self uuid];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__HMHome_updateAccessForUser_administrator_completionHandler___block_invoke;
  v28[3] = &unk_1E754D030;
  v29 = v11;
  v32 = handlerCopy;
  selfCopy3 = self;
  v31 = userCopy;
  [(_HMContext *)v29 sendMessage:uuid target:v14 payload:v28 responseHandler:?];

LABEL_10:
}

void __62__HMHome_updateAccessForUser_administrator_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) __updateHomeAccessControlFromResponsePayload:a3 forUser:*(a1 + 48)];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 56);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)__updateHomeAccessControlFromResponsePayload:(id)payload forUser:(id)user
{
  v32 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  userCopy = user;
  v8 = [(HMHome *)self _findUserWithID:userCopy];
  v9 = v8;
  if (payloadCopy && v8)
  {
    v10 = [payloadCopy hmf_numberForKey:@"kUserAdministratorInformationKey"];
    if (v10)
    {
      homeAccessControl = [v9 homeAccessControl];
      [homeAccessControl setAdministrator:{objc_msgSend(v10, "BOOLValue")}];
    }

    v12 = [payloadCopy hmf_numberForKey:@"kUserRemoteAccessInformationKey"];

    if (v12)
    {
      homeAccessControl2 = [v9 homeAccessControl];
      [homeAccessControl2 setRemoteAccessAllowed:{objc_msgSend(v12, "BOOLValue")}];
    }

    v14 = [payloadCopy hmf_numberForKey:@"kUserCamerasAccessLevelInformationKey"];

    if (v14)
    {
      homeAccessControl3 = [v9 homeAccessControl];
      v16 = [HMUserCameraAccess accessWithNumber:v14];
      [homeAccessControl3 setCamerasAccess:v16];
    }

    v17 = [payloadCopy hmf_numberForKey:@"HMHomeUserAnnounceAccessInformationKey"];

    if (v17)
    {
      homeAccessControl4 = [v9 homeAccessControl];
      [homeAccessControl4 setAnnounceAccessAllowed:{objc_msgSend(v17, "BOOLValue")}];
    }

    v19 = [payloadCopy hmf_numberForKey:@"HMHomeAudioAnalysisDropInAccessLevelInformationKey"];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        uuid = [v9 uuid];
        v26 = 138543874;
        v27 = v23;
        v28 = 2112;
        v29 = v19;
        v30 = 2112;
        v31 = uuid;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Updated audio analysis drop in access: %@ for userID: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      homeAccessControl5 = [v9 homeAccessControl];
      [homeAccessControl5 setAudioAnalysisUserDropInAccessLevel:{objc_msgSend(v19, "unsignedIntegerValue")}];
    }
  }
}

- (void)_updateLastSeenStatusWithPayload:(id)payload
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__HMHome__updateLastSeenStatusWithPayload___block_invoke;
  v3[3] = &unk_1E7549C58;
  v3[4] = self;
  [payload enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__HMHome__updateLastSeenStatusWithPayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v9 = [v7 accessoryWithUUID:v8];

  if (v9)
  {
    v10 = [v6 hmf_numberForKey:@"kAccessoryLowBatteryStatusKey"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 unsignedIntValue];
    }

    else
    {
      v12 = 0;
    }

    v17 = [v6 hmf_dateForKey:@"kAccessoryLastSeenDateKey"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF00] distantPast];
    }

    v20 = v19;

    v21 = [[HMAccessoryLastSeenStatus alloc] initWithLastSeenDate:v20 batteryStatus:v12];
    [v9 setLastSeenStatus:v21];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v9 lastSeenStatus];
      [v26 lastSeenDate];
      v27 = v31 = v5;
      [v9 lastSeenStatus];
      v30 = v22;
      v29 = v28 = v6;
      *buf = 138544130;
      v33 = v25;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v27;
      v38 = 2048;
      v39 = [v29 lowBatteryStatus];
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Updated lastSeenStatus for accessory: %@, lastSeenDate: %@, lastSeenBatteryStatus: %lu", buf, 0x2Au);

      v6 = v28;
      v22 = v30;

      v5 = v31;
    }

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessory for UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)_handleMultipleCharacteristicValuesUpdated:(id)updated
{
  v73 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  context = [(HMHome *)self context];
  pendingRequests = [context pendingRequests];

  v66 = 0;
  v7 = [updatedCopy BOOLForKey:@"kMultiPartResponseKey" keyPresent:&v66];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    shortDescription = [updatedCopy shortDescription];
    *buf = 138543618;
    v70 = v11;
    v71 = 2112;
    v72 = shortDescription;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling multiple characteristic values updated message: %@", buf, 0x16u);
  }

  v53 = selfCopy;
  objc_autoreleasePoolPop(v8);
  v51 = pendingRequests;
  v48 = v7;
  if (v7)
  {
    identifier = [updatedCopy identifier];
    v14 = [pendingRequests retrieveCompletionBlockForIdentifier:identifier];

    v15 = 0;
  }

  else
  {
    v16 = v66;
    identifier2 = [updatedCopy identifier];
    v18 = [pendingRequests removeCompletionBlockForIdentifier:identifier2];

    v19 = v16 == 0;
    if (v16)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    if (v19)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  v49 = v15;
  v50 = v14;
  v54 = (v15 | v14) == 0;
  v20 = [updatedCopy dictionaryForKey:@"kAccessoryLastSeenStatusKey"];
  v21 = selfCopy;
  [(HMHome *)selfCopy _updateLastSeenStatusWithPayload:v20];

  v22 = [updatedCopy dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
  array = [MEMORY[0x1E695DF70] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = v22;
  v52 = updatedCopy;
  v56 = [v23 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v56)
  {
    v24 = *v63;
    v25 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v62 + 1) + 8 * i);
        v28 = [v23 hmf_dictionaryForKey:v27];
        v29 = [objc_alloc(*(v25 + 4016)) initWithUUIDString:v27];
        v30 = [(HMHome *)v21 accessoryWithUUID:v29];

        if (v30)
        {
          v31 = [v30 _handleMultipleCharacteristicsUpdated:v28 message:updatedCopy informDelegate:v54];
          [array addObjectsFromArray:v31];
        }

        else
        {
          v32 = v24;
          v33 = v23;
          v34 = objc_autoreleasePoolPush();
          v35 = v21;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v70 = v37;
            v71 = 2112;
            v72 = v27;
            _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessory for characteristic updated accessory UUID: %@", buf, 0x16u);

            updatedCopy = v52;
          }

          objc_autoreleasePoolPop(v34);
          v21 = v53;
          v23 = v33;
          v24 = v32;
          v25 = 0x1E696A000;
        }
      }

      v56 = [v23 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v56);
  }

  if (!v54)
  {
    v57 = v23;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v38 = array;
    v39 = [v38 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v39)
    {
      v40 = 0;
      v41 = *v59;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(v38);
          }

          error = [*(*(&v58 + 1) + 8 * j) error];

          if (error)
          {
            ++v40;
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v39);

      v44 = v48;
      if (v40)
      {
        if (v40 >= [v38 count])
        {
          v45 = 74;
        }

        else
        {
          v45 = 73;
        }

        v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:v45 userInfo:0];
        if (v49)
        {
          goto LABEL_43;
        }

LABEL_39:
        if (v50)
        {
          (v50)[2](v50, v39, v44, v38);
        }

        goto LABEL_44;
      }

      v39 = 0;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {

      v44 = v48;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    context2 = [(HMHome *)v21 context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v49 error:v39 array:v38];

LABEL_44:
    updatedCopy = v52;
    v23 = v57;
  }
}

- (void)_handleDidUpdateHomeActivityStateMessage:(id)message
{
  v58 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v49 = v8;
    v50 = 2112;
    v51 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling new DidUpdateHomeActivityStateMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v11 = [messagePayload hmf_numberForKey:@"HM.HAS.State.Key"];

  if (v11)
  {
    unsignedIntegerValue = [v11 unsignedIntegerValue];
    messagePayload2 = [messageCopy messagePayload];
    v14 = [messagePayload2 hmf_BOOLForKey:@"HM.HAS.IsActivityStateHoldActive.Key"];

    messagePayload3 = [messageCopy messagePayload];
    v16 = [messagePayload3 hmf_dateForKey:@"HM.HAS.ActivityStateHoldEndDate.Key"];

    if (v14 == (v16 != 0))
    {
      messagePayload4 = [messageCopy messagePayload];
      v27 = [messagePayload4 hmf_dateForKey:@"HM.HAS.TransitionalStateEndDate.Key"];

      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v32 = v31 = v27;
        HMHomeActivityStateToString(unsignedIntegerValue);
        v33 = v40 = unsignedIntegerValue;
        HMFBooleanToString();
        v34 = v39 = v28;
        *buf = 138544386;
        v49 = v32;
        v50 = 2112;
        v51 = v33;
        v52 = 2112;
        v53 = v34;
        v54 = 2112;
        v55 = v16;
        v56 = 2112;
        v57 = v31;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@Received DidUpdateHomeActivityStateMessage with valid contents -- calling didUpdateHomeActivityState with new state: %@, isStateHoldActive: %@, stateHoldEndDate: %@, transitionalStateEndDate: %@", buf, 0x34u);

        v28 = v39;
        unsignedIntegerValue = v40;

        v27 = v31;
      }

      objc_autoreleasePoolPop(v28);
      _privateDelegate = [(HMHome *)v29 _privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMHome *)v29 context];
        [context delegateCaller];
        v38 = v37 = unsignedIntegerValue;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __51__HMHome__handleDidUpdateHomeActivityStateMessage___block_invoke;
        v41[3] = &unk_1E7549C30;
        v42 = _privateDelegate;
        v43 = v29;
        v46 = v37;
        v47 = v14;
        v44 = v16;
        v45 = v27;
        [v38 invokeBlock:v41];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMFBooleanToString();
        *buf = 138543874;
        v49 = v20;
        v50 = 2112;
        v51 = v21;
        v52 = 2112;
        v53 = v16;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Ignoring DidUpdateHomeActivityStateMessage due to invalid state hold info: isActivityStateHoldActive %@ with activityStateHoldEndDate: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
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
      *buf = 138543362;
      v49 = v25;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Ignoring DidUpdateHomeActivityStateMessage missing activity state number", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)_handleAccessoryErrorNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [notificationCopy uuidForKey:@"kAccessoryUUID"];
  currentAccessories = [(HMHome *)self currentAccessories];
  v7 = [currentAccessories firstItemWithUUID:v5];

  if (v7)
  {
    v8 = [notificationCopy errorForKey:@"error"];
    if (v8)
    {
      delegate = [(HMHome *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMHome *)self context];
        delegateCaller = [context delegateCaller];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __44__HMHome__handleAccessoryErrorNotification___block_invoke;
        v12[3] = &unk_1E754DE30;
        v13 = delegate;
        selfCopy = self;
        v15 = v8;
        v16 = v7;
        [delegateCaller invokeBlock:v12];
      }
    }
  }
}

- (id)_findUserWithID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  currentUsers = [(HMHome *)self currentUsers];
  currentUser2 = [currentUsers firstItemWithValue:dCopy forKey:@"userID"];

  if (!currentUser2)
  {
    currentUser = [(HMHome *)self currentUser];
    userID = [currentUser userID];
    v9 = [userID isEqualToString:dCopy];

    if (v9)
    {
      currentUser2 = [(HMHome *)self currentUser];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = dCopy;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the user with ID %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      currentUser2 = 0;
    }
  }

  return currentUser2;
}

- (void)_handleUserAddedNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = [(HMHome *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v8 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v9 = [notificationCopy uuidForKey:@"kUserUUIDKey"];
  v10 = [notificationCopy stringForKey:@"kUserIDKey"];
  v11 = [notificationCopy stringForKey:@"kUserDisplayNameKey"];
  if (v11 && v9)
  {
    v26 = v10;
    currentUsers = [(HMHome *)self currentUsers];
    v13 = [currentUsers firstItemWithUUID:v9];

    v14 = v13;
    if (v13)
    {
      if (v8)
      {
LABEL_5:
        context2 = [(HMHome *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:v8 user:v14 error:0];

LABEL_12:
        v10 = v26;
        goto LABEL_13;
      }
    }

    else
    {
      v14 = [[HMUser alloc] initWithUserID:v26 name:v11 uuid:v9 home:self];
      context3 = [(HMHome *)self context];
      [(HMUser *)v14 __configureWithContext:context3 home:self];

      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v24;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding user via notification", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      currentUsers2 = [(HMHome *)selfCopy currentUsers];
      [currentUsers2 addObject:v14];

      if (v8)
      {
        goto LABEL_5;
      }
    }

    context2 = [(HMHome *)self delegate];
    v21 = objc_opt_respondsToSelector();
    if (!v13 && (v21 & 1) != 0)
    {
      context4 = [(HMHome *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __39__HMHome__handleUserAddedNotification___block_invoke;
      v27[3] = &unk_1E754E5E8;
      v27[4] = self;
      v28 = v14;
      context2 = context2;
      v29 = context2;
      [delegateCaller2 invokeBlock:v27];
    }

    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __39__HMHome__handleUserAddedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddUser on notification : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddUser:*(a1 + 40)];
}

- (void)_handleUserInvitationsUpdatedNotification:(id)notification
{
  v118 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = [(HMHome *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v75 = pendingRequests;
  v78 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v77 = notificationCopy;
  v74 = [notificationCopy dataForKey:@"kInvitationsDataKey"];
  selfCopy = self;
  v8 = [HMOutgoingHomeInvitation homeInvitationsFromEncodedData:"homeInvitationsFromEncodedData:home:" home:?];
  v9 = [v8 mutableCopy];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v80 = v9;
  v10 = [v9 copy];
  v11 = [v10 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v106;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v106 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v105 + 1) + 8 * i);
        invitationState = [v15 invitationState];
        currentOutgoingInvitations = [(HMHome *)selfCopy currentOutgoingInvitations];
        identifier2 = [v15 identifier];
        v19 = [currentOutgoingInvitations firstItemWithValue:identifier2 forKey:@"identifier"];

        if (v19)
        {
          if ((invitationState & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            currentOutgoingInvitations2 = [(HMHome *)selfCopy currentOutgoingInvitations];
            [currentOutgoingInvitations2 removeObject:v19];
          }

          [v19 _updateInvitationState:invitationState];
          [v9 removeObject:v15];
          [v9 addObject:v19];
        }

        else if (invitationState == 2)
        {
          context2 = [(HMHome *)selfCopy context];
          [v15 __configureWithContext:context2 home:selfCopy];

          currentOutgoingInvitations3 = [(HMHome *)selfCopy currentOutgoingInvitations];
          [currentOutgoingInvitations3 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v12);
  }

  v23 = [v77 dataForKey:@"kAccessoryInvitationsDataKey"];
  v24 = MEMORY[0x1E696ACD0];
  v25 = MEMORY[0x1E695DFD8];
  v116[0] = objc_opt_class();
  v116[1] = objc_opt_class();
  v116[2] = objc_opt_class();
  v116[3] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];
  v27 = [v25 setWithArray:v26];
  v104 = 0;
  v73 = v23;
  v28 = [v24 unarchivedObjectOfClasses:v27 fromData:v23 error:&v104];
  v76 = v104;

  if (!v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v113 = v32;
      v114 = 2112;
      v115 = v76;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory invitations data from encoded accessory invitation data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v33 = v28;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v72 = v33;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v35;
  v82 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (v82)
  {
    v81 = *v101;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v101 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v100 + 1) + 8 * j);
        v38 = [v37 hmf_UUIDForKey:{@"kInvitationIdentifierKey", v72}];
        outgoingInvitations = [(HMHome *)selfCopy outgoingInvitations];
        v40 = [outgoingInvitations hmf_firstObjectWithValue:v38 forKeyPath:@"identifier"];

        if (v40)
        {
          v83 = v40;
          v84 = v38;
          v85 = j;
          v41 = [v37 hmf_arrayForKey:@"kAccessoryInvitationsKey"];
          v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v41, "count")}];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v43 = v41;
          v44 = [v43 countByEnumeratingWithState:&v96 objects:v110 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v97;
            do
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v97 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v96 + 1) + 8 * k);
                v49 = [v48 hmf_UUIDForKey:@"HM.accessoryInvitationIdentifier"];
                v50 = [v48 hmf_numberForKey:@"HM.accessoryInvitationState"];
                v51 = [v48 hmf_UUIDForKey:@"HM.accessoryInvitationAccessoryUUID"];
                accessories = [(HMHome *)selfCopy accessories];
                v53 = [accessories hmf_firstObjectWithUUID:v51];

                if (v53)
                {
                  v54 = -[HMAccessoryInvitation initWithAccessory:identifier:state:]([HMAccessoryInvitation alloc], "initWithAccessory:identifier:state:", v53, v49, [v50 integerValue]);
                  if (v54)
                  {
                    [v42 addObject:v54];
                  }
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v96 objects:v110 count:16];
            }

            while (v45);
          }

          v40 = v83;
          [v83 _mergeWithNewAccessoryInvitations:v42];

          v38 = v84;
          j = v85;
        }
      }

      v82 = [obj countByEnumeratingWithState:&v100 objects:v111 count:16];
    }

    while (v82);
  }

  if (v78)
  {
    if (v80)
    {
      v55 = 0;
    }

    else
    {
      v55 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:52 userInfo:0];
    }

    v68 = v74;
    v67 = v75;
    context3 = [(HMHome *)selfCopy context];
    delegateCaller = [context3 delegateCaller];
    [delegateCaller callCompletion:v78 invitations:v80 error:v55];
    goto LABEL_60;
  }

  v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v80, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v56 = v80;
  v57 = [v56 countByEnumeratingWithState:&v92 objects:v109 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v93;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v93 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v92 + 1) + 8 * m);
        invitee = [v61 invitee];
        users = [(HMHome *)selfCopy users];
        userID = [invitee userID];
        v65 = [users hmf_firstObjectWithValue:userID forKeyPath:@"userID"];

        if (v65)
        {
          [v65 mergePendingAccessoryInvitationsWithOutgoingInvitation:v61];
        }

        else
        {
          [v86 addObject:v61];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v92 objects:v109 count:16];
    }

    while (v58);
  }

  v55 = v86;
  if (![v86 count])
  {
    v68 = v74;
    v67 = v75;
    goto LABEL_62;
  }

  context3 = [(HMHome *)selfCopy _privateDelegate];
  v68 = v74;
  v67 = v75;
  if ([v56 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context4 = [(HMHome *)selfCopy context];
    delegateCaller2 = [context4 delegateCaller];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __52__HMHome__handleUserInvitationsUpdatedNotification___block_invoke;
    v88[3] = &unk_1E754E5E8;
    context3 = context3;
    v89 = context3;
    v90 = selfCopy;
    v91 = v56;
    [delegateCaller2 invokeBlock:v88];

    delegateCaller = v89;
LABEL_60:
  }

LABEL_62:
}

- (id)outgoingInvitations
{
  currentOutgoingInvitations = [(HMHome *)self currentOutgoingInvitations];
  array = [currentOutgoingInvitations array];

  return array;
}

- (void)_notifyUpdatedSupportedFeatures
{
  delegate = [(HMHome *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__HMHome__notifyUpdatedSupportedFeatures__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_handleAccessoryReprovisionedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [notificationCopy uuidForKey:@"kAccessoryUUID"];
  currentAccessories = [(HMHome *)self currentAccessories];
  v7 = [currentAccessories firstItemWithUUID:v5];

  if (v7)
  {
    [v7 setAccessoryReprovisionState:0];
    v8 = [notificationCopy errorForKey:@"kPairedAccessoryErrorDataKey"];
    context = [(HMHome *)self context];
    pendingRequests = [context pendingRequests];

    identifier = [notificationCopy identifier];
    v12 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

    if (v12)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      [delegateCaller callCompletion:v12 error:v8];
    }

    delegate = [(HMHome *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63B38])
    {
      v16 = delegate;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (objc_opt_respondsToSelector())
    {
      context3 = [(HMHome *)self context];
      delegateCaller2 = [context3 delegateCaller];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __52__HMHome__handleAccessoryReprovisionedNotification___block_invoke;
      v20[3] = &unk_1E754E5E8;
      v21 = v17;
      selfCopy = self;
      v23 = v7;
      [delegateCaller2 invokeBlock:v20];
    }
  }
}

- (void)_reprovisionAccessory:(id)accessory completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (accessoryCopy)
    {
      v38 = @"kAccessoryUUID";
      uuid = [accessoryCopy uuid];
      uUIDString = [uuid UUIDString];
      v39 = uUIDString;
      context3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

      v12 = objc_alloc(MEMORY[0x1E69A2A10]);
      v13 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid2 = [(HMHome *)self uuid];
      v15 = [v13 initWithTarget:uuid2];
      v16 = [v12 initWithName:@"kReprovisionAccessoryRequestKey" destination:v15 payload:context3];

      context2 = [(HMHome *)self context];
      pendingRequests = [context2 pendingRequests];

      identifier = [v16 identifier];
      v20 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v20 forIdentifier:identifier];

      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __50__HMHome__reprovisionAccessory_completionHandler___block_invoke;
      v33 = &unk_1E754D030;
      v34 = pendingRequests;
      v35 = identifier;
      selfCopy = self;
      v37 = handlerCopy;
      v21 = identifier;
      v22 = pendingRequests;
      [v16 setResponseHandler:&v30];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v16];
    }

    else
    {
      context3 = [(HMHome *)self context];
      delegateCaller = [context3 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [delegateCaller callCompletion:handlerCopy error:v29];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v27;
      v42 = 2080;
      v43 = "[HMHome _reprovisionAccessory:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

void __50__HMHome__reprovisionAccessory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
    if (v4)
    {
      v5 = [*(a1 + 48) context];
      v6 = [v5 delegateCaller];
      [v6 callCompletion:*(a1 + 56) error:v7];
    }

    v3 = v7;
  }
}

- (void)reprovisionAccessory:(id)accessory completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome reprovisionAccessory:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__HMHome_reprovisionAccessory_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = accessoryCopy;
    v24 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome reprovisionAccessory:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)_handleAccessoryReprovisionStateUpdate:(id)update
{
  v30 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v5 = [updateCopy uuidForKey:@"kAccessoryUUID"];
  currentAccessories = [(HMHome *)self currentAccessories];
  v7 = [currentAccessories firstItemWithUUID:v5];

  if (v7)
  {
    v8 = [updateCopy numberForKey:@"kAccessoryReprovisonStateKey"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      integerValue = [v8 integerValue];
      name = [v7 name];
      *buf = 138543874;
      v25 = v12;
      v26 = 2048;
      v27 = integerValue;
      v28 = 2112;
      v29 = name;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the reprovision state to: %lu for accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v7 setAccessoryReprovisionState:{objc_msgSend(v8, "integerValue")}];
    delegate = [(HMHome *)selfCopy delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63B38])
    {
      v16 = delegate;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMHome *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49__HMHome__handleAccessoryReprovisionStateUpdate___block_invoke;
      v20[3] = &unk_1E754E5E8;
      v21 = v17;
      v22 = selfCopy;
      v23 = v7;
      [delegateCaller invokeBlock:v20];
    }
  }
}

- (void)startSearchForAccessoriesNeedingReprovisioning
{
  v21 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (context)
  {
    v4 = MEMORY[0x1E69A29F8];
    v5 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v7 = [v5 initWithTarget:uuid];
    v15 = @"kStartSearch";
    v16 = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v4 messageWithName:@"kSearchForAccessoriesNeedingReprovisioningRequestKey" destination:v7 payload:v8];

    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2080;
      v20 = "[HMHome startSearchForAccessoriesNeedingReprovisioning]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (id)_findCharacteristic:(id)characteristic forService:(id)service accessoryUUID:(id)d
{
  v5 = 0;
  if (characteristic && service && d)
  {
    characteristicCopy = characteristic;
    v10 = [(HMHome *)self _findService:service accessoryUUID:d];
    v5 = [v10 _findCharacteristic:characteristicCopy];
  }

  return v5;
}

- (id)_findService:(id)service accessoryUUID:(id)d
{
  v40 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  dCopy = d;
  v8 = dCopy;
  v9 = 0;
  if (serviceCopy && dCopy)
  {
    v10 = [(HMHome *)self accessoryWithUUID:dCopy];
    v11 = v10;
    if (v10)
    {
      v9 = [v10 _findService:serviceCopy];
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      accessories = [(HMHome *)self accessories];
      v27 = [accessories countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v27)
      {
        v13 = *v35;
        v29 = accessories;
        v26 = *v35;
        do
        {
          v14 = 0;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(accessories);
            }

            v28 = v14;
            v15 = *(*(&v34 + 1) + 8 * v14);
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            services = [v15 services];
            v17 = [services countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(services);
                  }

                  v21 = *(*(&v30 + 1) + 8 * i);
                  instanceID = [v21 instanceID];
                  if ([serviceCopy isEqualToNumber:instanceID])
                  {
                    targetAccessoryUUID = [v21 targetAccessoryUUID];
                    v24 = [v8 isEqual:targetAccessoryUUID];

                    if (v24)
                    {
                      v9 = v21;

                      v11 = 0;
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                  }
                }

                v18 = [services countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v18);
            }

            v14 = v28 + 1;
            accessories = v29;
            v11 = 0;
            v13 = v26;
          }

          while (v28 + 1 != v27);
          v27 = [v29 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v27);
      }

      v9 = 0;
    }

LABEL_24:
  }

  return v9;
}

- (void)_removeServices:(id)services
{
  v15 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  serviceGroups = [(HMHome *)self serviceGroups];
  v6 = [serviceGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(serviceGroups);
        }

        [*(*(&v10 + 1) + 8 * v9++) _removeServices:servicesCopy];
      }

      while (v7 != v9);
      v7 = [serviceGroups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeServices:(id)services
{
  v18 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  context = [(HMHome *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __25__HMHome_removeServices___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = servicesCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMHome removeServices:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_removeResidentDevicesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  device = [accessoryCopy device];

  if (device)
  {
    autoSelectedPreferredResidents = [(HMHome *)self autoSelectedPreferredResidents];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__HMHome__removeResidentDevicesForAccessory___block_invoke;
    v11[3] = &unk_1E7549C08;
    v12 = accessoryCopy;
    v7 = [autoSelectedPreferredResidents indexesOfObjectsPassingTest:v11];

    if ([v7 count])
    {
      autoSelectedPreferredResidents2 = [(HMHome *)self autoSelectedPreferredResidents];
      v9 = [autoSelectedPreferredResidents2 mutableCopy];

      [v9 removeObjectsAtIndexes:v7];
      v10 = [v9 copy];
      [(HMHome *)self setAutoSelectedPreferredResidents:v10];
    }
  }
}

uint64_t __45__HMHome__removeResidentDevicesForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 device];
  v5 = [*(a1 + 32) device];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v3 _unconfigure];
  }

  return v6;
}

- (void)_removeEventsForAccessory:(id)accessory
{
  v19 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentTriggers = [(HMHome *)self currentTriggers];
  array = [currentTriggers array];

  v7 = [array countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(array);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
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
          [v13 _removeEventsForAccessory:accessoryCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [array countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_removeActionSetsForAccessory:(id)accessory
{
  v16 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentActionSets = [(HMHome *)self currentActionSets];
  array = [currentActionSets array];

  v7 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(array);
        }

        [*(*(&v11 + 1) + 8 * v10++) _removeActionsForAccessory:accessoryCopy];
      }

      while (v8 != v10);
      v8 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_handleAccessoryRemovedResponse:(id)response
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  [responseCopy hmf_arrayForKey:@"kAccessoriesListKey"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = @"kAccessoryUUID";
    selfCopy = self;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) hmf_UUIDForKey:v7];
        currentAccessories = [(HMHome *)self currentAccessories];
        v11 = [currentAccessories firstItemWithUUID:v9];

        if (v11)
        {
          v12 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v15 = v5;
            v16 = v6;
            v18 = v17 = v7;
            *buf = 138543618;
            v29 = v18;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory: %@", buf, 0x16u);

            v7 = v17;
            v6 = v16;
            v5 = v15;
            self = selfCopy;
          }

          objc_autoreleasePoolPop(v12);
          services = [v11 services];
          [(HMHome *)selfCopy2 _removeServices:services];

          [(HMHome *)selfCopy2 _removeActionSetsForAccessory:v11];
          [(HMHome *)selfCopy2 _removeEventsForAccessory:v11];
          [(HMHome *)selfCopy2 _removeResidentDevicesForAccessory:v11];
          currentAccessories2 = [(HMHome *)selfCopy2 currentAccessories];
          [currentAccessories2 removeObject:v11];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)_handleAddAccessoryProgressNotification:(id)notification
{
  v35 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = [(HMHome *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v8 = [pendingRequests retrieveAccessoryDescriptionForIdentifier:identifier];

  if (v8)
  {
    identifier2 = [notificationCopy identifier];
    v10 = [pendingRequests retrieveProgressBlockForIdentifier:identifier2];

LABEL_4:
    if (v10)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Invoking progress handler block for add accessory progress notification with accessoryDescription %@", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMHome *)selfCopy _callProgressHandler:v10 updatingAccessoryDescription:v8 fromMessage:notificationCopy];
    }

    else
    {
      v10 = [notificationCopy numberForKey:@"kAccessorySetupProgressKey"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = HMSetupAccessoryProgressAsString(unsignedIntegerValue);
        v31 = 138543618;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@No progress handler block for add accessory progress notification with progress '%@'", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    v10 = v8;
    goto LABEL_12;
  }

  messagePayload = [notificationCopy messagePayload];
  v12 = [messagePayload hmf_UUIDForKey:@"kAccessoryUUID"];

  context2 = [(HMHome *)self context];
  pendingRequests2 = [context2 pendingRequests];
  v8 = [pendingRequests2 retrieveAccessoryDescriptionForIdentifier:v12];

  context3 = [(HMHome *)self context];
  pendingRequests3 = [context3 pendingRequests];
  v10 = [pendingRequests3 retrieveProgressBlockForIdentifier:v12];

  if (v8)
  {
    goto LABEL_4;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v30;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@No accessory description for add accessory progress notification", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
LABEL_12:
}

- (void)_callProgressHandler:(id)handler updatingAccessoryDescription:(id)description fromMessage:(id)message
{
  v81[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  descriptionCopy = description;
  messageCopy = message;
  v11 = [messageCopy stringForKey:@"kAccessoryName"];
  if (v11)
  {
    [descriptionCopy setAccessoryName:v11];
  }

  messagePayload = [messageCopy messagePayload];
  v13 = [messagePayload hmf_UUIDForKey:@"kAccessoryUUID"];

  accessoryUUID = [descriptionCopy accessoryUUID];

  if (!accessoryUUID && v13)
  {
    [descriptionCopy setAccessoryUUID:v13];
  }

  messagePayload2 = [messageCopy messagePayload];
  v16 = [messagePayload2 hmf_UUIDForKey:@"HMHomeAccessorySystemCommissionerUUIDKey"];

  v69 = v16;
  if (v16)
  {
    matterSystemCommissionerPairingUUID = [descriptionCopy matterSystemCommissionerPairingUUID];

    if (!matterSystemCommissionerPairingUUID)
    {
      [descriptionCopy setMatterSystemCommissionerPairingUUID:v16];
    }
  }

  v67 = v11;
  v18 = [messageCopy stringForKey:@"kAccessoryInfoManufacturerKey"];
  if (v18)
  {
    [descriptionCopy setManufacturerName:v18];
  }

  v66 = v18;
  v19 = [messageCopy dataForKey:@"kAccessoryCategory"];
  v65 = v19;
  if (v19)
  {
    v74 = 0;
    v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:&v74];
    v21 = v74;
    if (v20)
    {
      [descriptionCopy setCategory:v20];
    }

    else
    {
      v22 = handlerCopy;
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v26 = v55 = self;
        *buf = 138543618;
        v76 = v26;
        v77 = 2112;
        v78 = v21;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory category from category data: %@", buf, 0x16u);

        self = v55;
      }

      objc_autoreleasePoolPop(v23);
      handlerCopy = v22;
    }
  }

  messagePayload3 = [messageCopy messagePayload];
  v28 = [messagePayload3 hmf_numberForKey:@"kAccessoryCertificationStatusKey"];

  if (v28)
  {
    [descriptionCopy setCertificationStatus:{objc_msgSend(v28, "unsignedIntegerValue")}];
  }

  v64 = v28;
  messagePayload4 = [messageCopy messagePayload];
  v81[0] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
  v31 = [messagePayload4 hmf_unarchivedObjectForKey:@"HMHomeAccessoryCommissioneeInfoKey" ofClasses:v30];

  if (v31)
  {
    [descriptionCopy setMatterCommissioneeInfo:v31];
  }

  v32 = [messageCopy stringForKey:@"kAccessoryVendorInfoStoreIDKey"];
  v33 = [messageCopy stringForKey:@"kAccessoryVendorInfoBundleIDKey"];
  v34 = v33;
  if (v32 && v33)
  {
    [descriptionCopy setStoreID:v32];
    [descriptionCopy setBundleID:v34];
  }

  v63 = v34;
  v35 = [messageCopy uuidForKey:@"HMHomeReplacedAccessoryUUIDMessageKey"];
  v68 = v13;
  if (v35)
  {
    v36 = [(HMHome *)self accessoryWithUUID:v35];
    if (v36)
    {
      [descriptionCopy setAccessoryBeingReplaced:v36];
    }

    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    selfCopy3 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v40 = v61 = handlerCopy;
      [v36 name];
      v41 = v59 = v31;
      [v35 UUIDString];
      v42 = v57 = v32;
      *buf = 138543874;
      v76 = v40;
      v77 = 2112;
      v78 = v41;
      v79 = 2112;
      v80 = v42;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_INFO, "%{public}@Progress handler to request user consent for replacing accessory %@/%@", buf, 0x20u);

      v31 = v59;
      v32 = v57;

      handlerCopy = v61;
    }

    objc_autoreleasePoolPop(v37);
    v13 = v68;
    self = selfCopy2;
  }

  v43 = [messageCopy numberForKey:@"kAccessorySetupProgressKey"];
  unsignedIntegerValue = [v43 unsignedIntegerValue];
  v45 = unsignedIntegerValue;
  if (v43 && unsignedIntegerValue == 20)
  {
    [descriptionCopy setMatterSystemCommissionerPairingIsNew:1];
  }

  if (handlerCopy && v43)
  {
    v58 = v32;
    v60 = v31;
    v62 = handlerCopy;
    v46 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v48 = v46;
    v49 = selfCopy4;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      v52 = HMSetupAccessoryProgressAsString(v45);
      *buf = 138543874;
      v76 = v51;
      v77 = 2112;
      v78 = v52;
      v79 = 2112;
      v80 = descriptionCopy;
      _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_INFO, "%{public}@Calling Progress handler with progress '%@' with description: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    context = [(HMHome *)v49 context];
    delegateCaller = [context delegateCaller];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __72__HMHome__callProgressHandler_updatingAccessoryDescription_fromMessage___block_invoke;
    v70[3] = &unk_1E754DB20;
    handlerCopy = v62;
    v72 = v62;
    v71 = descriptionCopy;
    v73 = v45;
    [delegateCaller invokeBlock:v70];

    v13 = v68;
    v32 = v58;
    v31 = v60;
  }
}

- (void)_handleAccessoryAddedNotification:(id)notification
{
  v172 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [notificationCopy shortDescription];
    *buf = 138543618;
    v162 = v8;
    v163 = 2112;
    v164 = shortDescription;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory added message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v13 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  identifier2 = [notificationCopy identifier];
  v139 = [pendingRequests removeAccessoryForIdentifier:identifier2];

  identifier3 = [notificationCopy identifier];
  v129 = [pendingRequests removeAccessoryDescriptionForIdentifier:identifier3];

  identifier4 = [notificationCopy identifier];
  v126 = pendingRequests;
  v17 = [pendingRequests removeProgressBlockForIdentifier:identifier4];

  v18 = [notificationCopy arrayForKey:@"kAccessoriesListKey"];
  if (v18)
  {
    v133 = v13;
    v125 = notificationCopy;
    array = [MEMORY[0x1E695DF70] array];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v124 = v18;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v157 objects:v171 count:16];
    v144 = selfCopy;
    if (!v19)
    {
      goto LABEL_53;
    }

    v20 = v19;
    if (v139 | v129)
    {
      v21 = v13 == 0;
    }

    else
    {
      v21 = 1;
    }

    v138 = *v158;
    v135 = *MEMORY[0x1E696A508];
    v22 = !v21;
    v130 = v22;
    while (1)
    {
      v23 = 0;
      v134 = v20;
      do
      {
        if (*v158 != v138)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v157 + 1) + 8 * v23);
        v25 = [v24 hmf_UUIDForKey:{@"kAccessoryUUID", v124}];
        v26 = [v24 hmf_dataForKey:@"kAccessoryDataKey"];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v142 = [(HMHome *)selfCopy accessoryWithUUID:v25];
          v33 = objc_alloc(MEMORY[0x1E696ACD0]);
          v156 = 0;
          v34 = [v33 initForReadingFromData:v27 error:&v156];
          v35 = v156;
          [v34 _allowDecodingCyclesInSecureMode];
          v36 = objc_opt_class();
          v155 = v35;
          v37 = [v34 decodeTopLevelObjectOfClass:v36 forKey:v135 error:&v155];
          v140 = v155;

          if (v37)
          {
            v38 = v37;
            uuid = [v139 uuid];
            uuid2 = [v38 uuid];
            v41 = [uuid isEqual:uuid2];

            if (v41)
            {
              v42 = objc_autoreleasePoolPush();
              v43 = v144;
              v44 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = HMFGetLogIdentifier();
                *buf = 138543618;
                v162 = v45;
                v163 = 2112;
                v164 = v139;
                _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_INFO, "%{public}@Adding queued accessory: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v42);
              context2 = [(HMHome *)v43 context];
              [v139 __configureWithContext:context2 home:v43];

              currentAccessories = [(HMHome *)v43 currentAccessories];
              [currentAccessories addObject:v139];

              [v139 mergeFromNewObject:v38];
              v48 = v38;
              v38 = v139;
              goto LABEL_28;
            }

            if (v142)
            {
              v56 = objc_autoreleasePoolPush();
              v57 = v144;
              v58 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = HMFGetLogIdentifier();
                *buf = 138543874;
                v162 = v59;
                v163 = 2112;
                v164 = v38;
                v165 = 2112;
                v166 = v142;
                _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_INFO, "%{public}@Skipping adding unarchived accessory %@ because the home already has an existing matching accessory: %@", buf, 0x20u);

                v20 = v134;
              }

              objc_autoreleasePoolPop(v56);
              [v142 mergeFromNewObject:v38];
              v48 = v38;
              v38 = v142;
              goto LABEL_38;
            }

            room = [v38 room];
            uuid3 = [room uuid];
            v48 = [(HMHome *)v144 roomWithUUID:uuid3];

            if (v48)
            {
              [v38 setRoom:v48];
              v62 = objc_autoreleasePoolPush();
              v63 = v144;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v65 = v127 = v62;
                *buf = 138543618;
                v162 = v65;
                v163 = 2112;
                v164 = v38;
                _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_INFO, "%{public}@Adding unarchived accessory: %@", buf, 0x16u);

                v62 = v127;
              }

              objc_autoreleasePoolPop(v62);
              context3 = [(HMHome *)v63 context];
              [v38 __configureWithContext:context3 home:v63];

              currentAccessories2 = [(HMHome *)v63 currentAccessories];
              [currentAccessories2 addObject:v38];

LABEL_28:
              v20 = v134;
LABEL_38:

              [v38 postConfigure];
              [array addObject:v38];
LABEL_39:
              selfCopy = v144;
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              v69 = v144;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v71 = v128 = v68;
                uuid4 = [0 uuid];
                *buf = 138543618;
                v162 = v71;
                v163 = 2112;
                v164 = uuid4;
                _os_log_impl(&dword_19BB39000, v70, OS_LOG_TYPE_ERROR, "%{public}@Could not find room with UUID %@ for added accessory", buf, 0x16u);

                v68 = v128;
              }

              objc_autoreleasePoolPop(v68);
              selfCopy = v144;
              v20 = v134;
            }
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
              v162 = v52;
              v163 = 2112;
              v164 = v140;
              _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory from accessory data: %@", buf, 0x16u);

              v20 = v134;
            }

            objc_autoreleasePoolPop(v49);
            if (v130)
            {
              v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:79];
              context4 = [(HMHome *)v50 context];
              delegateCaller = [context4 delegateCaller];
              v55 = delegateCaller;
              if (v129)
              {
                [delegateCaller callCompletion:v133 array:0 additionalAccessoryInfo:0 error:v38];
              }

              else
              {
                [delegateCaller callCompletion:v133 error:v38];

                [(HMHome *)v50 removeAccessory:v139 completionHandler:&__block_literal_global_1139];
              }

              goto LABEL_39;
            }
          }

          goto LABEL_42;
        }

        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543874;
          v162 = v32;
          v163 = 2112;
          v164 = v25;
          v165 = 2112;
          v166 = v27;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Received added accessory info with invalid accessoryUUID: %@, accessoryData: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
LABEL_42:

        ++v23;
      }

      while (v20 != v23);
      v73 = [obj countByEnumeratingWithState:&v157 objects:v171 count:16];
      v20 = v73;
      if (!v73)
      {
LABEL_53:

        v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v75 = array;
        v76 = [v75 countByEnumeratingWithState:&v151 objects:v170 count:16];
        v143 = v75;
        if (v76)
        {
          v77 = v76;
          v78 = *v152;
          do
          {
            for (i = 0; i != v77; ++i)
            {
              if (*v152 != v78)
              {
                objc_enumerationMutation(v143);
              }

              v80 = *(*(&v151 + 1) + 8 * i);
              uuid5 = [v80 uuid];
              uUIDString = [uuid5 UUIDString];
              [v74 addObject:uUIDString];

              v83 = objc_autoreleasePoolPush();
              v84 = selfCopy;
              v85 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                v86 = HMFGetLogIdentifier();
                *buf = 138543618;
                v162 = v86;
                v163 = 2112;
                v164 = v80;
                _os_log_impl(&dword_19BB39000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@Added accessory: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v83);
              selfCopy = v144;
            }

            v75 = v143;
            v77 = [v143 countByEnumeratingWithState:&v151 objects:v170 count:16];
          }

          while (v77);
        }

        v13 = v133;
        if (v139 || !v133)
        {
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v91 = v75;
          v100 = [(HMAccessorySetupCompletedInfo *)v91 countByEnumeratingWithState:&v147 objects:v169 count:16];
          v90 = v74;
          if (v100)
          {
            v101 = v100;
            v132 = v74;
            v141 = *v148;
            obja = v91;
            do
            {
              for (j = 0; j != v101; ++j)
              {
                if (*v148 != v141)
                {
                  objc_enumerationMutation(v91);
                }

                v103 = *(*(&v147 + 1) + 8 * j);
                uuid6 = [v139 uuid];
                uuid7 = [v103 uuid];
                v106 = [uuid6 isEqual:uuid7];

                if (v106)
                {
                  v107 = v13 == 0;
                }

                else
                {
                  v107 = 1;
                }

                if (v107)
                {
                  delegate = [(HMHome *)selfCopy delegate];
                  v108 = objc_autoreleasePoolPush();
                  v109 = selfCopy;
                  v110 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                  {
                    v111 = HMFGetLogIdentifier();
                    v112 = [v103 debugDescription];
                    v113 = [(HMHome *)v109 debugDescription];
                    *buf = 138544130;
                    v162 = v111;
                    v163 = 2112;
                    v164 = v112;
                    v165 = 2112;
                    v166 = delegate;
                    v167 = 2112;
                    v168 = v113;
                    _os_log_impl(&dword_19BB39000, v110, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did add accessory: %@ delegate: %@, home: %@", buf, 0x2Au);

                    v91 = obja;
                    selfCopy = v144;
                  }

                  objc_autoreleasePoolPop(v108);
                  if (objc_opt_respondsToSelector())
                  {
                    v114 = objc_autoreleasePoolPush();
                    v115 = v109;
                    v116 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
                    {
                      v117 = HMFGetLogIdentifier();
                      v118 = [v103 debugDescription];
                      v119 = [(HMHome *)v115 debugDescription];
                      *buf = 138543874;
                      v162 = v117;
                      v163 = 2112;
                      v164 = v118;
                      v165 = 2112;
                      v166 = v119;
                      _os_log_impl(&dword_19BB39000, v116, OS_LOG_TYPE_INFO, "%{public}@Client has registered for didAddAccessory delegate callback : %@, home: %@", buf, 0x20u);

                      selfCopy = v144;
                    }

                    objc_autoreleasePoolPop(v114);
                    context5 = [(HMHome *)v115 context];
                    delegateCaller2 = [context5 delegateCaller];
                    v145[0] = MEMORY[0x1E69E9820];
                    v145[1] = 3221225472;
                    v145[2] = __44__HMHome__handleAccessoryAddedNotification___block_invoke_1141;
                    v145[3] = &unk_1E754E5E8;
                    v145[4] = v115;
                    v145[5] = v103;
                    delegate = delegate;
                    v146 = delegate;
                    [delegateCaller2 invokeBlock:v145];

                    v13 = v133;
                    v91 = obja;
                  }

                  else
                  {
                    v13 = v133;
                  }
                }

                else
                {
                  delegate = [(HMHome *)selfCopy context];
                  delegateCaller3 = [delegate delegateCaller];
                  [delegateCaller3 callCompletion:v13 error:0];
                }
              }

              v101 = [(HMAccessorySetupCompletedInfo *)v91 countByEnumeratingWithState:&v147 objects:v169 count:16];
            }

            while (v101);
            v75 = v143;
            v90 = v132;
          }

          else
          {
            v75 = v143;
          }
        }

        else
        {
          v87 = [HMAccessorySetupCompletedInfo alloc];
          uuid8 = [(HMHome *)selfCopy uuid];
          uUIDString2 = [uuid8 UUIDString];
          v90 = v74;
          v91 = [(HMAccessorySetupCompletedInfo *)v87 initWithHomeUUID:uUIDString2 addedAccessoryUUIDs:v74];

          context6 = [(HMHome *)selfCopy context];
          delegateCaller4 = [context6 delegateCaller];
          [delegateCaller4 callCompletion:v133 array:v75 additionalAccessoryInfo:v91 error:0];
        }

        v94 = v124;
        notificationCopy = v125;
        goto LABEL_90;
      }
    }
  }

  v94 = 0;
  v95 = objc_autoreleasePoolPush();
  v96 = selfCopy;
  v97 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    v98 = HMFGetLogIdentifier();
    shortDescription2 = [notificationCopy shortDescription];
    *buf = 138543618;
    v162 = v98;
    v163 = 2112;
    v164 = shortDescription2;
    _os_log_impl(&dword_19BB39000, v97, OS_LOG_TYPE_ERROR, "%{public}@Received accessory added message with no accessories list: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v95);
LABEL_90:
}

uint64_t __44__HMHome__handleAccessoryAddedNotification___block_invoke_1141(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138544130;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to dispatch didAddAccessory on client queue: %@, home: %@, %p", &v9, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddAccessory:*(a1 + 40)];
}

void __44__HMHome__handleAccessoryAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 code] != 2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Cleanup adding accessory completed with error: %@", &v6, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (BOOL)_removeTriggerFromResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  v7 = [response hmf_UUIDForKey:@"kTriggerUUID"];
  if (v7)
  {
    v8 = [(HMHome *)self triggerWithUUID:v7];
    v9 = v8 == 0;
    if (v8)
    {
      currentTriggers = [(HMHome *)self currentTriggers];
      [currentTriggers removeObject:v8];

      [v8 _unconfigure];
      if (completionCopy)
      {
        context = [(HMHome *)self context];
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:completionCopy error:0];
      }

      else
      {
        [(HMHome *)self _notifyDelegateOfTriggerRemoved:v8];
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_addTrigger:(id)trigger triggerUUID:(id)d completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  dCopy = d;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v14;
    v29 = 2112;
    v30 = triggerCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding a new trigger: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [triggerCopy setUuid:dCopy];
  context = [(HMHome *)selfCopy context];
  [triggerCopy __configureWithContext:context home:selfCopy];

  currentTriggers = [(HMHome *)selfCopy currentTriggers];
  [currentTriggers addObject:triggerCopy];

  v17 = objc_autoreleasePoolPush();
  if (completionCopy)
  {
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = _Block_copy(completionCopy);
      v27 = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@_addTrigger : Calling completion : %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    context2 = [(HMHome *)v18 context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:completionCopy error:0];
  }

  else
  {
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v25;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@_addTrigger : Calling delegate", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMHome *)selfCopy _notifyDelegateOfTriggerAdded:triggerCopy];
  }

  return 0;
}

- (BOOL)_addTimerTriggerFromResponse:(id)response withTimerTrigger:(id)trigger completion:(id)completion
{
  responseCopy = response;
  triggerCopy = trigger;
  completionCopy = completion;
  v10 = [responseCopy hmf_stringForKey:@"kTriggerName"];
  v11 = [responseCopy hmf_UUIDForKey:@"kTriggerUUID"];
  v12 = [responseCopy hmf_dateForKey:@"kTimerTriggerInitialFireDateKey"];
  v29 = [responseCopy hmf_timeZoneForKey:@"kTimerTriggerTimeZoneDataKey"];
  v28 = [responseCopy dateComponentsForKey:@"kTimerTriggerRecurrenceDataKey"];
  v27 = [responseCopy arrayOfDateComponentsFromDataForKey:@"kTimerTriggerRecurrencesKey"];
  v26 = [responseCopy dateComponentsForKey:@"kTimerTriggerSignificantEventOffsetKey"];
  v13 = [responseCopy hmf_stringForKey:@"kTimerTriggerSignificantEventKey"];
  v14 = triggerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = 1;
  if (v11 && v10 && v12 | v13)
  {
    v23 = completionCopy;
    v18 = v14;
    if (v16)
    {
LABEL_15:
      v21 = [responseCopy hmf_stringForKey:{@"HMT.triggerConfiguredNameKey", v23}];
      [(HMTrigger *)v18 setConfiguredName:v21];
      v17 = [(HMHome *)self _addTrigger:v18 triggerUUID:v11 completion:v24];

      v16 = v18;
      completionCopy = v24;
      goto LABEL_16;
    }

    if (v12)
    {
      v19 = [HMTimerTrigger alloc];
      if (v28)
      {
        v20 = [(HMTimerTrigger *)v19 initWithName:v10 fireDate:v12 timeZone:v29 recurrence:v28 recurrenceCalendar:0];
      }

      else
      {
        v20 = [(HMTimerTrigger *)v19 initWithName:v10 fireDate:v12 timeZone:v29 recurrences:v27];
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      v20 = [[HMTimerTrigger alloc] initWithName:v10 significantEvent:v13 significantEventOffset:v26 recurrences:0];
    }

    v18 = v20;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = 0;
    completionCopy = v23;
  }

LABEL_16:

  return v17;
}

- (BOOL)_addEventTriggerFromResponse:(id)response withEventTrigger:(id)trigger completion:(id)completion
{
  v63 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  triggerCopy = trigger;
  completionCopy = completion;
  v11 = [responseCopy hmf_stringForKey:@"kTriggerName"];
  v12 = [responseCopy hmf_UUIDForKey:@"kTriggerUUID"];
  v13 = triggerCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    selfCopy = self;
    v19 = v12;
    v20 = v11;
    v22 = v21 = completionCopy;
    *buf = 138543618;
    v58 = v22;
    v59 = 2112;
    v60 = responseCopy;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Received a new trigger added with message %@", buf, 0x16u);

    completionCopy = v21;
    v11 = v20;
    v12 = v19;
    self = selfCopy;
  }

  objc_autoreleasePoolPop(v16);
  if (!v12 || !v11)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v38;
      v59 = 2112;
      v60 = v12;
      v61 = 2112;
      v62 = v11;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Received a new trigger without uuid %@ or name %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    goto LABEL_18;
  }

  if (v15)
  {
    v50 = completionCopy;
    v23 = [responseCopy hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
    [v15 setUuid:v12];
    [v15 setConfiguredName:v23];
    context = [(HMHome *)self context];
    [v15 __configureWithContext:context home:self];

    currentTriggers = [(HMHome *)self currentTriggers];
    [currentTriggers addObject:v15];

    v26 = dispatch_group_create();
    events = [v15 events];
    v28 = [events count];

    if (v28)
    {
      dispatch_group_enter(v26);
      events2 = [v15 events];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __67__HMHome__addEventTriggerFromResponse_withEventTrigger_completion___block_invoke;
      v55[3] = &unk_1E754E148;
      v56 = v26;
      [v15 updateEvents:events2 completionHandler:v55];
    }

    endEvents = [v15 endEvents];
    v31 = [endEvents count];

    if (v31)
    {
      dispatch_group_enter(v26);
      endEvents2 = [v15 endEvents];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __67__HMHome__addEventTriggerFromResponse_withEventTrigger_completion___block_invoke_2;
      v53[3] = &unk_1E754E148;
      v54 = v26;
      [v15 updateEndEvents:endEvents2 completionHandler:v53];
    }

    context2 = [(HMHome *)self context];
    if (context2)
    {
      v34 = context2;
      queue = [context2 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__HMHome__addEventTriggerFromResponse_withEventTrigger_completion___block_invoke_1134;
      block[3] = &unk_1E754E458;
      block[4] = self;
      completionCopy = v50;
      v52 = v50;
      dispatch_group_notify(v26, queue, block);
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      v47 = HMFGetOSLogHandle();
      completionCopy = v50;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v48;
        v59 = 2080;
        v60 = "[HMHome _addEventTriggerFromResponse:withEventTrigger:completion:]";
        _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
    }

    v39 = 0;
    v15 = v13;
    goto LABEL_27;
  }

  v15 = [HMEventTrigger createWithDictionary:responseCopy home:self];
  [v15 setUuid:v12];
  context3 = [(HMHome *)self context];
  [v15 __configureWithContext:context3 home:self];

  if (![v15 compatibleWithApp])
  {
LABEL_18:
    v39 = 1;
    goto LABEL_27;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v44 = v43 = completionCopy;
    *buf = 138543874;
    v58 = v44;
    v59 = 2112;
    v60 = v15;
    v61 = 2112;
    v62 = responseCopy;
    _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Created new event trigger %@ from response Payload %@", buf, 0x20u);

    completionCopy = v43;
  }

  objc_autoreleasePoolPop(v41);
  currentTriggers2 = [(HMHome *)self currentTriggers];
  [currentTriggers2 addObject:v15];

  [(HMHome *)self _notifyDelegateOfTriggerAdded:v15];
  v39 = 0;
LABEL_27:

  return v39;
}

void __67__HMHome__addEventTriggerFromResponse_withEventTrigger_completion___block_invoke_1134(uint64_t a1)
{
  v3 = [*(a1 + 32) context];
  v2 = [v3 delegateCaller];
  [v2 callCompletion:*(a1 + 40) error:0];
}

- (void)notifyDelegatesOfExecutionForActionSet:(id)set atDate:(id)date
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  dateCopy = date;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__HMHome_notifyDelegatesOfExecutionForActionSet_atDate___block_invoke;
    v15[3] = &unk_1E754E5C0;
    v15[4] = self;
    v16 = setCopy;
    dispatch_async(queue, v15);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2080;
      v20 = "[HMHome notifyDelegatesOfExecutionForActionSet:atDate:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __56__HMHome_notifyDelegatesOfExecutionForActionSet_atDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _privateDelegate];
  if (*(a1 + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [*(a1 + 32) context];
    v4 = [v3 delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__HMHome_notifyDelegatesOfExecutionForActionSet_atDate___block_invoke_2;
    v8[3] = &unk_1E754E5E8;
    v5 = v2;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [v4 invokeBlock:v8];
  }
}

- (BOOL)_handleActionSetRemovedFromResponse:(id)response responsePayload:(id)payload
{
  v30 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  payloadCopy = payload;
  v8 = _Block_copy(responseCopy);
  v9 = [payloadCopy hmf_UUIDForKey:@"kActionSetUUID"];
  if (v9)
  {
    v10 = [(HMHome *)self actionSetWithUUID:v9];
    if (v10)
    {
      currentActionSets = [(HMHome *)self currentActionSets];
      [currentActionSets removeObject:v10];

      [v10 _unconfigure];
      if (v8)
      {
        context = [(HMHome *)self context];
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:v8 error:0];

        v14 = 0;
      }

      else
      {
        delegate = [(HMHome *)self delegate];
        v20 = objc_opt_respondsToSelector();
        if (v20)
        {
          context2 = [(HMHome *)self context];
          delegateCaller2 = [context2 delegateCaller];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __62__HMHome__handleActionSetRemovedFromResponse_responsePayload___block_invoke;
          v24[3] = &unk_1E754E5E8;
          v25 = delegate;
          selfCopy = self;
          v27 = v10;
          [delegateCaller2 invokeBlock:v24];
        }

        v14 = v20 ^ 1;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Response for API removeActionSet does not contain UUID.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 1;
  }

  return v14 & 1;
}

- (BOOL)_addActionSetFromResponse:(id)response completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  completionCopy = completion;
  v8 = [responseCopy hmf_UUIDForKey:@"kActionSetUUID"];
  v9 = [responseCopy hmf_stringForKey:@"kActionSetName"];
  v10 = [responseCopy hmf_stringForKey:@"kActionSetType"];
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [(HMHome *)self createActionSetWithName:v9 type:v10 uuid:v8];
    currentActionSets = [(HMHome *)self currentActionSets];
    [currentActionSets addObject:v12];

    if (completionCopy)
    {
      context = [(HMHome *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:completionCopy actionSet:v12 error:0];

      v16 = 0;
    }

    else
    {
      delegate = [(HMHome *)self delegate];
      v22 = objc_opt_respondsToSelector();
      if (v22)
      {
        context2 = [(HMHome *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __47__HMHome__addActionSetFromResponse_completion___block_invoke;
        v26[3] = &unk_1E754E5E8;
        v27 = delegate;
        selfCopy = self;
        v29 = v12;
        [delegateCaller2 invokeBlock:v26];
      }

      v16 = v22 ^ 1;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v31 = v20;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received a new actionSet without uuid %@ or name %@ or type %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 1;
  }

  return v16 & 1;
}

- (void)_handleHomeLocationUpdateNotification:(id)notification
{
  messagePayload = [notification messagePayload];
  [(HMHome *)self _handleHomeLocationUpdate:messagePayload];
}

- (void)_handleHomeLocationUpdate:(id)update
{
  v4 = [update hm_locationFromDataForKey:@"kHomeLocationKey"];
  [(HMHome *)self __updateLocation:v4 locationStatus:[(HMHome *)self homeLocationStatus]];
}

- (id)lightProfileWithProfileUUID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  accessories = [(HMHome *)self accessories];
  v20 = [accessories countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        lightProfiles = [*(*(&v25 + 1) + 8 * i) lightProfiles];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = lightProfiles;
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              profileUniqueIdentifier = [v14 profileUniqueIdentifier];
              v16 = [profileUniqueIdentifier isEqual:dCopy];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [accessories countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)profileWithUniqueIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  accessories = [(HMHome *)self accessories];
  v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v6 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        accessoryProfiles = [v8 accessoryProfiles];
        array = [accessoryProfiles array];

        v11 = [array countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(array);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              uniqueIdentifier = [v15 uniqueIdentifier];
              v17 = [uniqueIdentifier isEqual:identifierCopy];

              if (v17)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [array countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v18 = 0;
      v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (id)mediaProfileWithProfileUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accessories = [(HMHome *)self accessories];
  v6 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(accessories);
      }

      mediaProfile = [*(*(&v14 + 1) + 8 * v9) mediaProfile];
      profileUniqueIdentifier = [mediaProfile profileUniqueIdentifier];
      v12 = [profileUniqueIdentifier isEqual:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
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
    mediaProfile = 0;
  }

  return mediaProfile;
}

- (id)mediaProfileWithUUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accessories = [(HMHome *)self accessories];
  v6 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(accessories);
      }

      mediaProfile = [*(*(&v14 + 1) + 8 * v9) mediaProfile];
      uniqueIdentifier = [mediaProfile uniqueIdentifier];
      v12 = [uniqueIdentifier isEqual:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
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
    mediaProfile = 0;
  }

  return mediaProfile;
}

- (void)_notifySetupFailedIfInHomeUIService:(id)service
{
  v22 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = serviceCopy[2](serviceCopy);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Notifying HomeUIService of failed accessory setup with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    context = [(HMHome *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__HMHome__notifySetupFailedIfInHomeUIService___block_invoke;
    v14[3] = &unk_1E754E5E8;
    v15 = _privateDelegate;
    v16 = selfCopy;
    v17 = v6;
    v13 = v6;
    [delegateCaller invokeBlock:v14];
  }
}

- (id)mediaSystemWithUUID:(id)d
{
  dCopy = d;
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  v6 = [mediaSystemStageManager mediaSystemWithUUID:dCopy];

  return v6;
}

- (id)mediaSystemWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  v6 = [mediaSystemStageManager mediaSystemWithUniqueIdentifier:identifierCopy];

  return v6;
}

- (id)accessoryWithUniqueIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accessories = [(HMHome *)self accessories];
  v6 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uniqueIdentifier = [v9 uniqueIdentifier];
        v11 = [uniqueIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)userWithUUID:(id)d
{
  dCopy = d;
  users = [(HMHome *)self users];
  currentUser2 = [users hmf_firstObjectWithUUID:dCopy];

  if (!currentUser2)
  {
    currentUser = [(HMHome *)self currentUser];
    uuid = [currentUser uuid];
    v9 = [uuid isEqual:dCopy];

    if (v9)
    {
      currentUser2 = [(HMHome *)self currentUser];
    }

    else
    {
      currentUser2 = 0;
    }
  }

  return currentUser2;
}

- (id)accessoryWithUUID:(id)d
{
  dCopy = d;
  currentAccessories = [(HMHome *)self currentAccessories];
  v6 = [currentAccessories firstItemWithUUID:dCopy];

  return v6;
}

- (id)triggerWithName:(id)name
{
  nameCopy = name;
  currentTriggers = [(HMHome *)self currentTriggers];
  v6 = [currentTriggers firstItemWithName:nameCopy];

  return v6;
}

- (id)triggerWithUUID:(id)d
{
  dCopy = d;
  currentTriggers = [(HMHome *)self currentTriggers];
  v6 = [currentTriggers firstItemWithUUID:dCopy];

  return v6;
}

- (id)actionSetWithName:(id)name
{
  nameCopy = name;
  currentActionSets = [(HMHome *)self currentActionSets];
  v6 = [currentActionSets firstItemWithName:nameCopy];

  return v6;
}

- (id)triggerOwnedActionSetWithUUID:(id)d
{
  dCopy = d;
  currentTriggerOwnedActionSets = [(HMHome *)self currentTriggerOwnedActionSets];
  v6 = [currentTriggerOwnedActionSets firstItemWithUUID:dCopy];

  return v6;
}

- (id)actionSetWithUUID:(id)d
{
  dCopy = d;
  currentActionSets = [(HMHome *)self currentActionSets];
  v6 = [currentActionSets firstItemWithUUID:dCopy];

  return v6;
}

- (id)serviceGroupWithName:(id)name
{
  nameCopy = name;
  currentServiceGroups = [(HMHome *)self currentServiceGroups];
  v6 = [currentServiceGroups firstItemWithName:nameCopy];

  return v6;
}

- (id)serviceGroupWithUUID:(id)d
{
  dCopy = d;
  currentServiceGroups = [(HMHome *)self currentServiceGroups];
  v6 = [currentServiceGroups firstItemWithUUID:dCopy];

  return v6;
}

- (id)zoneWithName:(id)name
{
  nameCopy = name;
  currentZones = [(HMHome *)self currentZones];
  v6 = [currentZones firstItemWithName:nameCopy];

  return v6;
}

- (id)zoneWithUUID:(id)d
{
  dCopy = d;
  currentZones = [(HMHome *)self currentZones];
  v6 = [currentZones firstItemWithUUID:dCopy];

  return v6;
}

- (id)roomWithName:(id)name
{
  nameCopy = name;
  currentRooms = [(HMHome *)self currentRooms];
  v6 = [currentRooms firstItemWithName:nameCopy];

  return v6;
}

- (id)roomWithUUID:(id)d
{
  dCopy = d;
  roomForEntireHome = [(HMHome(HMRoom) *)self roomForEntireHome];
  uuid = [roomForEntireHome uuid];
  v7 = [uuid isEqual:dCopy];

  if (v7)
  {
    roomForEntireHome2 = [(HMHome(HMRoom) *)self roomForEntireHome];
  }

  else
  {
    currentRooms = [(HMHome *)self currentRooms];
    roomForEntireHome2 = [currentRooms firstItemWithUUID:dCopy];
  }

  return roomForEntireHome2;
}

- (void)_registerNotificationHandlers
{
  context = [(HMHome *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kHomeLocationUpdatedNotificationKey" receiver:self selector:sel__handleHomeLocationUpdateNotification_];

  context2 = [(HMHome *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HM.accessoryAdded" receiver:self selector:sel__handleAccessoryAddedNotification_];

  context3 = [(HMHome *)self context];
  messageDispatcher3 = [context3 messageDispatcher];
  [messageDispatcher3 registerForMessage:@"kAddAccessoryProgressNotificationKey" receiver:self selector:sel__handleAddAccessoryProgressNotification_];

  context4 = [(HMHome *)self context];
  messageDispatcher4 = [context4 messageDispatcher];
  [messageDispatcher4 registerForMessage:@"kUserAddedNotificationKey" receiver:self selector:sel__handleUserAddedNotification_];

  context5 = [(HMHome *)self context];
  messageDispatcher5 = [context5 messageDispatcher];
  [messageDispatcher5 registerForMessage:@"kUserInvitationsUpdatedNotificationKey" receiver:self selector:sel__handleUserInvitationsUpdatedNotification_];

  context6 = [(HMHome *)self context];
  messageDispatcher6 = [context6 messageDispatcher];
  [messageDispatcher6 registerForMessage:@"HM.ae" receiver:self selector:sel__handleAccessoryErrorNotification_];

  context7 = [(HMHome *)self context];
  messageDispatcher7 = [context7 messageDispatcher];
  [messageDispatcher7 registerForMessage:@"HMDidUpdateHomeActivityStateMessage" receiver:self selector:sel__handleDidUpdateHomeActivityStateMessage_];

  context8 = [(HMHome *)self context];
  messageDispatcher8 = [context8 messageDispatcher];
  [messageDispatcher8 registerForMessage:@"kMultipleCharacteristicValuesUpdatedNotificationKey" receiver:self selector:sel__handleMultipleCharacteristicValuesUpdated_];

  context9 = [(HMHome *)self context];
  messageDispatcher9 = [context9 messageDispatcher];
  [messageDispatcher9 registerForMessage:@"HMHomeAccessorySetupCodeFailureMessage" receiver:self selector:sel__handleAccessorySetupCodeFailureMessage_];

  context10 = [(HMHome *)self context];
  messageDispatcher10 = [context10 messageDispatcher];
  [messageDispatcher10 registerForMessage:@"kAccessoryInfoUpdatedNotificationKey" receiver:self selector:sel__handleAccessoryInfoUpdatedNotification_];

  context11 = [(HMHome *)self context];
  messageDispatcher11 = [context11 messageDispatcher];
  [messageDispatcher11 registerForMessage:@"kAccessoryReprovisionedNotificationKey" receiver:self selector:sel__handleAccessoryReprovisionedNotification_];

  context12 = [(HMHome *)self context];
  messageDispatcher12 = [context12 messageDispatcher];
  [messageDispatcher12 registerForMessage:@"kAccessoryReprovisionStateUpdateNotificationKey" receiver:self selector:sel__handleAccessoryReprovisionStateUpdate_];

  context13 = [(HMHome *)self context];
  messageDispatcher13 = [context13 messageDispatcher];
  [messageDispatcher13 registerForMessage:@"HM.homeHubStateUpdated" receiver:self selector:sel__handleHomeHubStateUpdatedNotification_];

  context14 = [(HMHome *)self context];
  messageDispatcher14 = [context14 messageDispatcher];
  [messageDispatcher14 registerForMessage:@"HM.nsdrUpdated" receiver:self selector:sel__handleHomeNetworkRouterSupportUpdated_];

  context15 = [(HMHome *)self context];
  messageDispatcher15 = [context15 messageDispatcher];
  [messageDispatcher15 registerForMessage:@"HMAccessoryNetworkProtectionGroupAddedNotification" receiver:self selector:sel__handleAccessoryNetworkProtectionGroupAddedNotification_];

  context16 = [(HMHome *)self context];
  messageDispatcher16 = [context16 messageDispatcher];
  [messageDispatcher16 registerForMessage:@"HMAccessoryNetworkProtectionGroupRemovedNotification" receiver:self selector:sel__handleAccessoryNetworkProtectionGroupRemovedNotification_];

  context17 = [(HMHome *)self context];
  messageDispatcher17 = [context17 messageDispatcher];
  [messageDispatcher17 registerForMessage:@"HMHomeLocationStatusUpdateNotificationKey" receiver:self selector:sel__handleHomeLocationStatusUpdateNotification_];

  context18 = [(HMHome *)self context];
  messageDispatcher18 = [context18 messageDispatcher];
  [messageDispatcher18 registerForMessage:@"HMHomeMultiUserEnabledChangeNotificationKey" receiver:self selector:sel__handleMultiUserEnabledChangeNotification_];

  context19 = [(HMHome *)self context];
  messageDispatcher19 = [context19 messageDispatcher];
  [messageDispatcher19 registerForMessage:@"HM.accessoryConnectivityChanged" receiver:self selector:sel__handleAccessoryConnectivityChangedNotification_];

  context20 = [(HMHome *)self context];
  messageDispatcher20 = [context20 messageDispatcher];
  [messageDispatcher20 registerForMessage:@"HMHomeDidAddWalletKeyMessage" receiver:self selector:sel__handleDidAddWalletKeyMessage_];

  context21 = [(HMHome *)self context];
  messageDispatcher21 = [context21 messageDispatcher];
  [messageDispatcher21 registerForMessage:@"HMHomeDidRemoveWalletKeyMessage" receiver:self selector:sel__handleDidRemoveWalletKeyMessage_];

  context22 = [(HMHome *)self context];
  messageDispatcher22 = [context22 messageDispatcher];
  [messageDispatcher22 registerForMessage:@"HMMM.request.received" receiver:self selector:sel__handleHMMMRequestReceivedMessage_];
}

- (HMHomeDelegatePrivate)_privateDelegate
{
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleAccessoryConnectivityChangedNotification:(id)notification
{
  notificationCopy = notification;
  v9 = [notificationCopy dictionaryForKey:@"kAccessoriesListKey"];
  v5 = MEMORY[0x1E696AEC0];
  name = [notificationCopy name];
  identifier = [notificationCopy identifier];

  v8 = [v5 stringWithFormat:@"Home-%@-%@", name, identifier];

  __handleAccessoryRuntimeStateUpdate(self, v9, v8);
}

- (BOOL)isUpdatedToROAR
{
  os_unfair_lock_lock_with_options();
  isUpdatedToROAR = self->_isUpdatedToROAR;
  os_unfair_lock_unlock(&self->_lock);
  return isUpdatedToROAR;
}

- (BOOL)dismissedWalletKeyUWBUnlockOnboarding
{
  os_unfair_lock_lock_with_options();
  dismissedWalletKeyUWBUnlockOnboarding = self->_dismissedWalletKeyUWBUnlockOnboarding;
  os_unfair_lock_unlock(&self->_lock);
  return dismissedWalletKeyUWBUnlockOnboarding;
}

- (void)setDismissedWalletKeyUWBUnlockOnboarding:(BOOL)onboarding
{
  os_unfair_lock_lock_with_options();
  self->_dismissedWalletKeyUWBUnlockOnboarding = onboarding;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleHMMMRequestReceivedMessage:(id)message
{
  v38 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];
  v30 = [HMMMLogOrigin originWithLogIdentifier:uUIDString];

  messagePayload = [messageCopy messagePayload];
  v8 = [messagePayload hmf_stringForKey:@"HMMM.payload.key.message.name"];
  v26 = [messagePayload hmf_dataForKey:@"HMMM.payload.key.payload"];
  v29 = [messagePayload hmf_stringForKey:@"HMMM.payload.key.destination.identifier"];
  v28 = [messagePayload hmf_stringForKey:@"HMMM.payload.key.destination.uri"];
  v27 = [(HMHome *)self userFromPayload:messagePayload];
  v9 = [messagePayload hmf_BOOLForKey:@"HMMM.payload.key.oneway"];
  if (!v8)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v30;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v19;
      v36 = 2112;
      v37 = messagePayload;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error during _handleHMMMRequestReceivedMessage: No message name in HMMT payload: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v10 = v9;
  os_unfair_lock_lock_with_options();
  hmModernMessagingRequestHandlersByMessageName = [(HMHome *)self hmModernMessagingRequestHandlersByMessageName];
  v12 = [hmModernMessagingRequestHandlersByMessageName objectForKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);
  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v30;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v20;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error during _handleHMMMRequestReceivedMessage: Did not find request handler for message name: %@", buf, 0x16u);
    }

LABEL_7:

    objc_autoreleasePoolPop(v16);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    [messageCopy respondWithError:v12];
    goto LABEL_17;
  }

  v13 = [HMMMClientRequestHandlerOptions alloc];
  v14 = [[HMMMMessageDestination alloc] initWithIDSIdentifier:v29 idsTokenURI:v28];
  v25 = [(HMMMClientRequestHandlerOptions *)v13 initWithPeerDestination:v14 messageName:v8 user:v27];

  if (v10)
  {
    v15 = 0;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__HMHome__handleHMMMRequestReceivedMessage___block_invoke;
    aBlock[3] = &unk_1E7549BB8;
    aBlock[4] = v30;
    v32 = v8;
    v33 = messageCopy;
    v15 = _Block_copy(aBlock);
  }

  v21 = objc_autoreleasePoolPush();
  v22 = v30;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v24;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Delivering HMMM request to request handler with message name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  (v12)[2](v12, v26, v25, v15);
  if (v10)
  {
    [messageCopy respondWithSuccess];
  }

LABEL_17:
}

void __44__HMHome__handleHMMMRequestReceivedMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Response received from HMMM request handler with message name: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v5 forKeyedSubscript:@"HMMM.payload.key.payload"];
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 48) respondWithPayload:v12 error:v6];
}

- (void)_handleDidRemoveWalletKeyMessage:(id)message
{
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__HMHome__handleDidRemoveWalletKeyMessage___block_invoke;
    v7[3] = &unk_1E754E5C0;
    v8 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v7];
  }
}

- (void)_handleDidAddWalletKeyMessage:(id)message
{
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__HMHome__handleDidAddWalletKeyMessage___block_invoke;
    v7[3] = &unk_1E754E5C0;
    v8 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v7];
  }
}

- (void)setHasOnboardedForWalletKey:(BOOL)key
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForWalletKey = key;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForWalletKey
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForWalletKey = self->_hasOnboardedForWalletKey;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForWalletKey;
}

- (void)setHasOnboardedForAccessCode:(BOOL)code
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForAccessCode = code;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForAccessCode
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForAccessCode = self->_hasOnboardedForAccessCode;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForAccessCode;
}

- (void)clearEventLogWithCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome clearEventLogWithCompletionHandler:]", @"completion"];
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

  v6 = context;
  if (!context)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v15;
      v33 = 2080;
      v34 = "[HMHome clearEventLogWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_11;
  }

  homeManager = [(HMHome *)self homeManager];
  isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

  if ((isDaemonRunningWithROARFramework & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Activity history is only supported in HH2 mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    delegateCaller = [v6 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [delegateCaller callCompletion:handlerCopy error:v21];

LABEL_11:
    goto LABEL_12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__HMHome_clearEventLogWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E754E480;
  aBlock[4] = self;
  v9 = v6;
  v29 = v9;
  v30 = handlerCopy;
  v10 = _Block_copy(aBlock);
  uuid = [(HMHome *)self uuid];
  [(_HMContext *)v9 sendMessage:uuid target:0 payload:v10 responseHandler:?];

LABEL_12:
}

void __45__HMHome_clearEventLogWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Request to update activity history onboarded failed: %{public}@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = [*(a1 + 40) delegateCaller];
  [v11 callCompletion:*(a1 + 48) error:v5];
}

- (void)updateEventLogDuration:(unint64_t)duration completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateEventLogDuration:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v29;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v8 = context;
  if (context)
  {
    homeManager = [(HMHome *)self homeManager];
    isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

    if (isDaemonRunningWithROARFramework)
    {
      v35 = @"HM.EL.duration";
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:duration];
      v36 = v11;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __51__HMHome_updateEventLogDuration_completionHandler___block_invoke;
      aBlock[3] = &unk_1E7549B68;
      aBlock[4] = self;
      v13 = v8;
      v32 = v13;
      v33 = handlerCopy;
      durationCopy = duration;
      v14 = _Block_copy(aBlock);
      uuid = [(HMHome *)self uuid];
      [(_HMContext *)v13 sendMessage:uuid target:delegateCaller payload:v14 responseHandler:?];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Activity history is only supported in HH2 mode", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      delegateCaller = [v8 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      [delegateCaller callCompletion:handlerCopy error:v24];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v19;
      v39 = 2080;
      v40 = "[HMHome updateEventLogDuration:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __51__HMHome_updateEventLogDuration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
      v18 = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Request to update activity history duration failed: %{public}@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 56);
      v18 = 138543618;
      v19 = v16;
      v20 = 2048;
      v21 = v17;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@After updating duration, setting duration to %lu", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setEventLogDuration:*(a1 + 56)];
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (void)_callDelegateDidOnboardEventLog
{
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    v5 = context;
    if (context)
    {
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__HMHome__callDelegateDidOnboardEventLog__block_invoke;
      block[3] = &unk_1E754E5E8;
      v8 = v5;
      v9 = _privateDelegate;
      selfCopy = self;
      dispatch_async(queue, block);
    }
  }
}

void __41__HMHome__callDelegateDidOnboardEventLog__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HMHome__callDelegateDidOnboardEventLog__block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 invokeBlock:v5];
}

- (void)_callDelegateDidUpdateEventLogEnabled
{
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    v5 = context;
    if (context)
    {
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__HMHome__callDelegateDidUpdateEventLogEnabled__block_invoke;
      block[3] = &unk_1E754E5E8;
      v8 = v5;
      v9 = _privateDelegate;
      selfCopy = self;
      dispatch_async(queue, block);
    }
  }
}

void __47__HMHome__callDelegateDidUpdateEventLogEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__HMHome__callDelegateDidUpdateEventLogEnabled__block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 invokeBlock:v5];
}

uint64_t __47__HMHome__callDelegateDidUpdateEventLogEnabled__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 isEventLogEnabled];

  return [v1 home:v2 didUpdateEventLogEnabled:v3];
}

- (void)_updateDidOnboardEventLog:(void *)log completion:
{
  v40 = *MEMORY[0x1E69E9840];
  logCopy = log;
  if (self)
  {
    context = [self context];
    if (!logCopy)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome _updateDidOnboardEventLog:completion:]", @"completion"];
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = v24;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
      objc_exception_throw(v29);
    }

    v7 = context;
    if (context)
    {
      homeManager = [self homeManager];
      isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

      if (isDaemonRunningWithROARFramework)
      {
        v34 = @"HM.EL.onboarded";
        v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
        v35 = v10;
        delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __47__HMHome__updateDidOnboardEventLog_completion___block_invoke;
        aBlock[3] = &unk_1E754C620;
        aBlock[4] = self;
        v12 = v7;
        v31 = v12;
        v32 = logCopy;
        v33 = a2;
        v13 = _Block_copy(aBlock);
        uuid = [self uuid];
        [(_HMContext *)v12 sendMessage:uuid target:delegateCaller payload:v13 responseHandler:?];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v22;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Activity history is only supported in HH2 mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        delegateCaller = [v7 delegateCaller];
        v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
        [delegateCaller callCompletion:logCopy error:v23];
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
        *buf = 138543618;
        v37 = v18;
        v38 = 2080;
        v39 = "[HMHome _updateDidOnboardEventLog:completion:]";
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(logCopy + 2))(logCopy, delegateCaller);
    }
  }
}

void __47__HMHome__updateDidOnboardEventLog_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v23 = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Request to update activity history onboarded failed: %{public}@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    [v12 callCompletion:*(a1 + 48) error:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMFBooleanToString();
      v23 = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@After updating didOnboardEventLog, updating didOnboardEventLog to %{public}@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setDidOnboardEventLog:*(a1 + 56)];
    v15 = [v6 hmf_numberForKey:@"HM.EL.enabled"];
    v12 = v15;
    if (v15)
    {
      v16 = [v15 BOOLValue];
      if (v16 != [*(a1 + 32) isEventLogEnabled])
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = HMFBooleanToString();
          v23 = 138543618;
          v24 = v20;
          v25 = 2114;
          v26 = v21;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@After updating didOnboardEventLog, updating isEventLogEnabled to %{public}@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [*(a1 + 32) setEventLogEnabled:v16];
        [*(a1 + 32) _callDelegateDidUpdateEventLogEnabled];
      }
    }

    v22 = [*(a1 + 40) delegateCaller];
    [v22 callCompletion:*(a1 + 48) error:0];
  }
}

- (void)setDidOnboardEventLog:(BOOL)log
{
  os_unfair_lock_lock_with_options();
  self->_didOnboardEventLog = log;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)didOnboardEventLog
{
  os_unfair_lock_lock_with_options();
  didOnboardEventLog = self->_didOnboardEventLog;
  os_unfair_lock_unlock(&self->_lock);
  return didOnboardEventLog;
}

- (void)updateEventLogEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  v41 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateEventLogEnabled:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v29;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v8 = context;
  if (context)
  {
    homeManager = [(HMHome *)self homeManager];
    isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

    if (isDaemonRunningWithROARFramework)
    {
      v35 = @"HM.EL.enabled";
      v11 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      v36 = v11;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__HMHome_updateEventLogEnabled_completionHandler___block_invoke;
      aBlock[3] = &unk_1E754C620;
      aBlock[4] = self;
      v13 = v8;
      v32 = v13;
      v33 = handlerCopy;
      v34 = enabledCopy;
      v14 = _Block_copy(aBlock);
      uuid = [(HMHome *)self uuid];
      [(_HMContext *)v13 sendMessage:uuid target:delegateCaller payload:v14 responseHandler:?];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Activity history is only supported in HH2 mode", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      delegateCaller = [v8 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      [delegateCaller callCompletion:handlerCopy error:v24];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v19;
      v39 = 2080;
      v40 = "[HMHome updateEventLogEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __50__HMHome_updateEventLogEnabled_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Request to update activity history failed: %{public}@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = v5;
  }

  else
  {
    if (*(a1 + 56) == 1 && ([*(a1 + 32) didOnboardEventLog] & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@After updating isEventlogEnabled, updating idOnboardEventLog to YES", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setDidOnboardEventLog:1];
      [*(a1 + 32) _callDelegateDidOnboardEventLog];
    }

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      v24 = 138543618;
      v25 = v22;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@After updating isEventlogEnabled, updating isEventLogEnabled to %{public}@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 32) setEventLogEnabled:*(a1 + 56)];
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = 0;
  }

  [v11 callCompletion:v13 error:v14];
}

- (void)setEventLogEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_eventLogEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEventLogEnabled
{
  os_unfair_lock_lock_with_options();
  eventLogEnabled = self->_eventLogEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return eventLogEnabled;
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  timeZone = self->_timeZone;
  self->_timeZone = zoneCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSTimeZone)timeZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_timeZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateDidOnboardLocationServices:(BOOL)services completion:(id)completion
{
  servicesCopy = services;
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending update did onboard location services request with value: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateDidOnboardLocationServices:completion:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
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

  v13 = context;
  if (context)
  {
    uuid = [(HMHome *)selfCopy uuid];
    v31 = @"HMHomeDidOnboardLocationServicesCodingKey";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:servicesCopy];
    v32 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __54__HMHome_updateDidOnboardLocationServices_completion___block_invoke;
    v28[3] = &unk_1E754E480;
    v28[4] = selfCopy;
    v29 = v13;
    v30 = completionCopy;
    [(_HMContext *)v29 sendMessage:uuid target:v16 payload:v28 responseHandler:?];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMHome updateDidOnboardLocationServices:completion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v21);
  }
}

void __54__HMHome_updateDidOnboardLocationServices_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update did onboard location services request responded with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update did onboard location services request responded", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (void)updateLocationServicesEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending update location services enabled request with value: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateLocationServicesEnabled:completion:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
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

  v13 = context;
  if (context)
  {
    uuid = [(HMHome *)selfCopy uuid];
    v31 = @"HMHomeLocationServicesEnabledCodingKey";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v32 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__HMHome_updateLocationServicesEnabled_completion___block_invoke;
    v28[3] = &unk_1E754E480;
    v28[4] = selfCopy;
    v29 = v13;
    v30 = completionCopy;
    [(_HMContext *)v29 sendMessage:uuid target:v16 payload:v28 responseHandler:?];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMHome updateLocationServicesEnabled:completion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v21);
  }
}

void __51__HMHome_updateLocationServicesEnabled_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update location services enabled request responded with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update location services enabled request responded", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (void)updateSiriPhraseOptions:(unint64_t)options completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    *buf = 138543618;
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending Siri phrase options update request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateSiriPhraseOptions:completion:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
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

  v13 = context;
  if (context)
  {
    if ([(HMHome *)selfCopy siriPhraseOptions]!= options)
    {
      uuid = [(HMHome *)selfCopy uuid];
      v37 = @"HMHomeSiriPhraseOptionsCodingKey";
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
      v38 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __45__HMHome_updateSiriPhraseOptions_completion___block_invoke;
      v33[3] = &unk_1E7549B68;
      v33[4] = selfCopy;
      v34 = v13;
      v35 = completionCopy;
      optionsCopy = options;
      [(_HMContext *)v34 sendMessage:uuid target:v26 payload:v33 responseHandler:?];

      goto LABEL_14;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMHome siriPhraseOptions](v15, "siriPhraseOptions")}];
      *buf = 138543618;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Siri phrase options already equal to %@, skipping", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    delegateCaller = [v13 delegateCaller];
    [delegateCaller callCompletion:completionCopy error:0];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2080;
      v42 = "[HMHome updateSiriPhraseOptions:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, delegateCaller);
  }

LABEL_14:
}

void __45__HMHome_updateSiriPhraseOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Siri phrase options update request responded with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Siri phrase options update request responded", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setSiriPhraseOptions:*(a1 + 56)];
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (id)createHomeAudioAnalysisEventSubscriber
{
  v3 = [HMAudioAnalysisLastKnownEventSubscriber alloc];
  context = [(HMHome *)self context];
  homeManager = [(HMHome *)self homeManager];
  eventRouter = [homeManager eventRouter];
  context2 = [(HMHome *)self context];
  queue = [context2 queue];
  v9 = [(HMAudioAnalysisLastKnownEventSubscriber *)v3 initWithContext:context subscriptionProvider:eventRouter dataSource:self workQueue:queue];

  return v9;
}

- (void)updateDidOnboardAudioAnalysis:(BOOL)analysis completion:(id)completion
{
  analysisCopy = analysis;
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending update did onboard home audio analysis request with value: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateDidOnboardAudioAnalysis:completion:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v32;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v13 = context;
  if (!context)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v21;
      v42 = 2080;
      v43 = "[HMHome updateDidOnboardAudioAnalysis:completion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    completionCopy[2](completionCopy, delegateCaller);
    goto LABEL_13;
  }

  if ([(HMHome *)selfCopy didOnboardAudioAnalysis]== analysisCopy)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      [(HMHome *)v24 didOnboardAudioAnalysis];
      v27 = HMFBooleanToString();
      *buf = 138543618;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@value already equal to %@, skipping", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    delegateCaller = [v13 delegateCaller];
    [delegateCaller callCompletion:completionCopy error:0];
LABEL_13:

    goto LABEL_14;
  }

  uuid = [(HMHome *)selfCopy uuid];
  v38 = @"HMHomeAudioAnalysisHomeOnboardingCodingKey";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:analysisCopy];
  v39 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__HMHome_updateDidOnboardAudioAnalysis_completion___block_invoke;
  v34[3] = &unk_1E754C620;
  v34[4] = selfCopy;
  v35 = v13;
  v17 = completionCopy;
  v36 = v17;
  v37 = analysisCopy;
  [(_HMContext *)v35 sendMessage:uuid target:v16 payload:v34 responseHandler:?];

  v17[2](v17, 0);
LABEL_14:
}

void __51__HMHome_updateDidOnboardAudioAnalysis_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@AudioAnalysis home onboarding key request responded with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = v5;
  }

  else
  {
    [*(a1 + 32) setDidOnboardAudioAnalysis:*(a1 + 56)];
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = 0;
  }

  [v11 callCompletion:v13 error:v14];
}

- (void)updateAudioAnalysisClassifierOptions:(unint64_t)options completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending audio analysis classifier options update request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateAudioAnalysisClassifierOptions:completion:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v30;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v12 = context;
  if (context)
  {
    if ([(HMHome *)selfCopy audioAnalysisClassifierOptions]!= options)
    {
      uuid = [(HMHome *)selfCopy uuid];
      v36 = @"HMHomeAudioAnalysisClassifierOptionsCodingKey";
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
      v37 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __58__HMHome_updateAudioAnalysisClassifierOptions_completion___block_invoke;
      v32[3] = &unk_1E7549B68;
      v32[4] = selfCopy;
      v33 = v12;
      v34 = completionCopy;
      optionsCopy = options;
      [(_HMContext *)v33 sendMessage:uuid target:v25 payload:v32 responseHandler:?];

      goto LABEL_14;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMHome audioAnalysisClassifierOptions](v14, "audioAnalysisClassifierOptions")}];
      *buf = 138543618;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@options already equal to %@, skipping", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    delegateCaller = [v12 delegateCaller];
    [delegateCaller callCompletion:completionCopy error:0];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v22;
      v40 = 2080;
      v41 = "[HMHome updateAudioAnalysisClassifierOptions:completion:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, delegateCaller);
  }

LABEL_14:
}

void __58__HMHome_updateAudioAnalysisClassifierOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@AudioAnalysis classifier option update request responded with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = v5;
  }

  else
  {
    [*(a1 + 32) setAudioAnalysisClassifierOptions:*(a1 + 56)];
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = 0;
  }

  [v11 callCompletion:v13 error:v14];
}

- (void)updateSoundCheckEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending setSoundCheck request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!completionCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateSoundCheckEnabled:completion:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v30;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v12 = context;
  if (!context)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v19;
      v40 = 2080;
      v41 = "[HMHome updateSoundCheckEnabled:completion:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    completionCopy[2](completionCopy, delegateCaller);
    goto LABEL_13;
  }

  if ([(HMHome *)selfCopy soundCheckEnabled]== enabledCopy)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMFBooleanToString();
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@soundCheck is already set to:%@, skipping request", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    delegateCaller = [v12 delegateCaller];
    [delegateCaller callCompletion:completionCopy error:0];
LABEL_13:

    goto LABEL_14;
  }

  uuid = [(HMHome *)selfCopy uuid];
  v36 = @"HMHomeSoundCheckCodingKey";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v37 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __45__HMHome_updateSoundCheckEnabled_completion___block_invoke;
  v32[3] = &unk_1E754C620;
  v32[4] = selfCopy;
  v33 = v12;
  v34 = completionCopy;
  v35 = enabledCopy;
  [(_HMContext *)v33 sendMessage:uuid target:v15 payload:v32 responseHandler:?];

LABEL_14:
}

void __45__HMHome_updateSoundCheckEnabled_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@SoundCheck request responded with error: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = v5;
  }

  else
  {
    [*(a1 + 32) setSoundCheckEnabled:*(a1 + 56)];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      [*(a1 + 32) soundCheckEnabled];
      v19 = HMFBooleanToString();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Updated sound check value to %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v11 = [*(a1 + 40) delegateCaller];
    v12 = v11;
    v13 = *(a1 + 48);
    v14 = 0;
  }

  [v11 callCompletion:v13 error:v14];
}

- (void)setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v6 = context;
  if (context)
  {
    dismissedWalletKeyUWBUnlockOnboarding = [(HMHome *)self dismissedWalletKeyUWBUnlockOnboarding];
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (dismissedWalletKeyUWBUnlockOnboarding)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@dismissedWalletKeyUWBUnlockOnboarding is already set, skipping send message notification", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      delegateCaller = [v6 delegateCaller];
      [delegateCaller callCompletion:completionCopy error:0];
    }

    else
    {
      if (v11)
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v18;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending dismissed Wallet Key UWB Unlock Onboarding request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      uuid = [(HMHome *)selfCopy2 uuid];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __65__HMHome_setDismissedWalletKeyUWBUnlockOnboardingWithCompletion___block_invoke;
      v26[3] = &unk_1E754E480;
      v27 = v6;
      v28 = selfCopy2;
      v29 = completionCopy;
      [(_HMContext *)v27 sendMessage:uuid target:0 payload:v26 responseHandler:?];

      delegateCaller = v27;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v17;
      v32 = 2080;
      v33 = "[HMHome setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, delegateCaller);
  }
}

void __65__HMHome_setDismissedWalletKeyUWBUnlockOnboardingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 48);
    v6 = v7;
  }

  else
  {
    [*(a1 + 40) setDismissedWalletKeyUWBUnlockOnboarding:1];
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 48);
    v6 = 0;
  }

  [v3 callCompletion:v5 error:v6];
}

- (void)setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v6 = context;
  if (context)
  {
    hasAnyUserAcknowledgedCameraRecordingOnboarding = [(HMHome *)self hasAnyUserAcknowledgedCameraRecordingOnboarding];
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (hasAnyUserAcknowledgedCameraRecordingOnboarding)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@setHasAnyUserAcknowledgedCameraRecordingOnboardingHandler is already set, skipping send message notification", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      delegateCaller = [v6 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      if (v11)
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v18;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending set any user has acknowledged camera recording onboarding request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      uuid = [(HMHome *)selfCopy2 uuid];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __82__HMHome_setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler___block_invoke;
      v26[3] = &unk_1E754E480;
      v27 = v6;
      v28 = selfCopy2;
      v29 = handlerCopy;
      [(_HMContext *)v27 sendMessage:uuid target:0 payload:v26 responseHandler:?];

      delegateCaller = v27;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v17;
      v32 = 2080;
      v33 = "[HMHome setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __82__HMHome_setHasAnyUserAcknowledgedCameraRecordingOnboardingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 48);
    v6 = v7;
  }

  else
  {
    [*(a1 + 40) setHasAnyUserAcknowledgedCameraRecordingOnboarding:1];
    v3 = [*(a1 + 32) delegateCaller];
    v4 = v3;
    v5 = *(a1 + 48);
    v6 = 0;
  }

  [v3 callCompletion:v5 error:v6];
}

- (void)setHasAnyUserAcknowledgedCameraRecordingOnboarding:(BOOL)onboarding
{
  os_unfair_lock_lock_with_options();
  self->_hasAnyUserAcknowledgedCameraRecordingOnboarding = onboarding;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasAnyUserAcknowledgedCameraRecordingOnboarding
{
  os_unfair_lock_lock_with_options();
  hasAnyUserAcknowledgedCameraRecordingOnboarding = self->_hasAnyUserAcknowledgedCameraRecordingOnboarding;
  os_unfair_lock_unlock(&self->_lock);
  return hasAnyUserAcknowledgedCameraRecordingOnboarding;
}

- (void)_handleMultiUserEnabledChangeNotification:(id)notification
{
  v23 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received multi-user enabled change notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v12 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  [(HMHome *)selfCopy setMultiUserEnabled:1];
  if (v12)
  {
    context2 = [(HMHome *)selfCopy context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v12 error:0];
  }

  _privateDelegate = [(HMHome *)selfCopy _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context3 = [(HMHome *)selfCopy context];
    delegateCaller2 = [context3 delegateCaller];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__HMHome__handleMultiUserEnabledChangeNotification___block_invoke;
    v18[3] = &unk_1E754E5C0;
    v19 = _privateDelegate;
    v20 = selfCopy;
    [delegateCaller2 invokeBlock:v18];
  }
}

- (void)enableMultiUserWithCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending enable multi-user request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome enableMultiUserWithCompletionHandler:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
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

  v10 = context;
  if (context)
  {
    if ([(HMHome *)selfCopy multiUserEnabled])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@multiUserEnabled is already set, skipping request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [v10 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      delegateCaller = [MEMORY[0x1E69A29F8] messageWithName:@"HMHomeEnableMultiUserRequestKey" messagePayload:MEMORY[0x1E695E0F8]];
      objc_initWeak(buf, selfCopy);
      messageDispatcher = [v10 messageDispatcher];
      uuid = [(HMHome *)selfCopy uuid];
      queue = [v10 queue];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __47__HMHome_enableMultiUserWithCompletionHandler___block_invoke;
      v29[3] = &unk_1E754D058;
      objc_copyWeak(&v32, buf);
      v30 = v10;
      v31 = handlerCopy;
      [messageDispatcher sendMessage:delegateCaller target:uuid responseQueue:queue responseHandler:v29];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMHome enableMultiUserWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
  }
}

void __47__HMHome_enableMultiUserWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Enable multi-user request responded with error: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 32) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = v5;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Enable multi-user request responded", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 32) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];
}

- (void)setMultiUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock_with_options();
  self->_multiUserEnabled = enabledCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (enabledCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    uuid = [(HMHome *)self uuid];
    [defaultCenter postNotificationName:@"HMHomeMultiUserEnabledChangeNotificationKey" object:uuid];
  }
}

- (BOOL)isMultiUserEnabled
{
  os_unfair_lock_lock_with_options();
  multiUserEnabled = self->_multiUserEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return multiUserEnabled;
}

- (void)startHomeDataSyncWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome startHomeDataSyncWithCompletionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  context2 = [(HMHome *)self context];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (context2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending start home data sync request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    uuid = [(HMHome *)selfCopy2 uuid];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__HMHome_startHomeDataSyncWithCompletionHandler___block_invoke;
    v22[3] = &unk_1E754E480;
    v22[4] = selfCopy2;
    v23 = v6;
    v24 = handlerCopy;
    [(_HMContext *)v23 sendMessage:uuid target:MEMORY[0x1E695E0F8] payload:v22 responseHandler:?];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome startHomeDataSyncWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

void __49__HMHome_startHomeDataSyncWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "%{public}@Start home data sync request completed with error %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Start home data sync request completed successfully";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)_updateName:(id)name completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        name = [(HMHome *)self name];
        v23 = [name isEqualToString:nameCopy];

        if (!v23)
        {
          uuid = [(HMHome *)self uuid];
          v30 = @"kHomeName";
          v31 = nameCopy;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __40__HMHome__updateName_completionHandler___block_invoke;
          v26[3] = &unk_1E754E480;
          v27 = v9;
          selfCopy = self;
          v29 = handlerCopy;
          [(_HMContext *)v27 sendMessage:uuid target:v25 payload:v26 responseHandler:?];

          goto LABEL_16;
        }

        delegateCaller = [v9 delegateCaller];
        [delegateCaller callCompletion:handlerCopy error:0];
        goto LABEL_15;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
    }

    else
    {
      delegateCaller = [context delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    }

    v21 = v16;
    [delegateCaller callCompletion:handlerCopy error:v16];

LABEL_15:
    goto LABEL_16;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v20;
    v34 = 2080;
    v35 = "[HMHome _updateName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
    goto LABEL_15;
  }

LABEL_16:
}

void __40__HMHome__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = v10;
  }

  else
  {
    v9 = [a3 hmf_stringForKey:@"kHomeName"];
    [*(a1 + 40) setName:v9];

    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome updateName:completionHandler:]", @"completion"];
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

  v9 = context;
  context2 = [(HMHome *)self context];

  if (context2)
  {
    queue = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__HMHome_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v15;
      v28 = 2080;
      v29 = "[HMHome updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v16);
  }
}

- (id)_getUserWithUUID:(id)d
{
  dCopy = d;
  currentUsers = [(HMHome *)self currentUsers];
  currentUser2 = [currentUsers firstItemWithUUID:dCopy];

  if (!currentUser2)
  {
    currentUser = [(HMHome *)self currentUser];
    uuid = [currentUser uuid];
    v9 = [dCopy isEqual:uuid];

    if (v9)
    {
      currentUser2 = [(HMHome *)self currentUser];
    }

    else
    {
      currentUser2 = 0;
    }
  }

  return currentUser2;
}

- (void)fetchPresenceForUsers:(id)users completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  completionCopy = completion;
  if (!completionCopy)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v18);
  }

  v8 = completionCopy;
  context = [(HMHome *)self context];
  if (!context)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      v17 = "%{public}@presence map fetch error: no context";
LABEL_9:
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v13);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    (v8)[2](v8, 0, v10);
    goto LABEL_11;
  }

  if (![usersCopy count])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      v17 = "%{public}@presence map fetch error: no user count";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v10 = [usersCopy na_map:&__block_literal_global_31615];
  uuid = [(HMHome *)self uuid];
  v22 = @"HMHomeUserUUIDsMessageKey";
  v23 = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__HMHome_fetchPresenceForUsers_completion___block_invoke_2;
  v19[3] = &unk_1E754E480;
  v19[4] = self;
  v21 = v8;
  v20 = usersCopy;
  [(_HMContext *)context sendMessage:uuid target:v12 payload:v19 responseHandler:?];

LABEL_11:
}

void __43__HMHome_fetchPresenceForUsers_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [a1[4] context];
    v7 = [v6 delegateCaller];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __43__HMHome_fetchPresenceForUsers_completion___block_invoke_3;
    v23[3] = &unk_1E754E0F8;
    v23[4] = a1[4];
    v24 = v5;
    v25 = a1[6];
    [v7 invokeBlock:v23];
  }

  else
  {
    v8 = [a3 hmf_dictionaryForKey:@"HMUserPresenceMapKey"];
    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __43__HMHome_fetchPresenceForUsers_completion___block_invoke_1064;
    v21[3] = &unk_1E7549B40;
    v21[4] = a1[4];
    v10 = v9;
    v22 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v21];
    v11 = [a1[4] context];
    v12 = [v11 delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__HMHome_fetchPresenceForUsers_completion___block_invoke_1066;
    v16[3] = &unk_1E754D208;
    v17 = v8;
    v18 = a1[5];
    v13 = a1[6];
    v19 = v10;
    v20 = v13;
    v14 = v10;
    v15 = v8;
    [v12 invokeBlock:v16];
  }
}

uint64_t __43__HMHome_fetchPresenceForUsers_completion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while fetching the presence for users: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))();
}

void __43__HMHome_fetchPresenceForUsers_completion___block_invoke_1064(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) _getUserWithUUID:v7];
  if (v9)
  {
    [*(a1 + 40) setObject:v8 forKey:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find HMUser with UUID: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *a4 = 1;
  }
}

void __43__HMHome_fetchPresenceForUsers_completion___block_invoke_1066(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) count];
  v4 = *(a1 + 56);
  if (v2 == v3)
  {
    v5 = *(a1 + 48);
    v6 = *(v4 + 16);
    v7 = *(a1 + 56);

    v6(v7, v5, 0);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (*(v4 + 16))(v4, 0, v8);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uniqueIdentifier = [(HMHome *)self uniqueIdentifier];
  uuid = [(HMHome *)self uuid];
  name = [(HMHome *)self name];
  [(HMHome *)self isPrimary];
  v8 = HMFBooleanToString();
  v9 = [v3 stringWithFormat:@"<%@ identifier = %@, uuid = %@, name = %@, primary = %@>", v4, uniqueIdentifier, uuid, name, v8];

  return v9;
}

- (BOOL)_mergeAccessoryProtectionGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [HMObjectMergeCollection alloc];
  currentAccessoryProtectionGroups = [(HMHome *)self currentAccessoryProtectionGroups];
  array = [currentAccessoryProtectionGroups array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:groupsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke;
  v21[3] = &unk_1E7549AF8;
  v21[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1049;
  v20[3] = &unk_1E7549AF8;
  v20[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentAccessoryProtectionGroups2 = [(HMHome *)self currentAccessoryProtectionGroups];
  [currentAccessoryProtectionGroups2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1050;
  v19[3] = &unk_1E7549AF8;
  v19[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_2;
  v18[3] = &unk_1E7549AF8;
  v18[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  updatedObjects = [(HMObjectMergeCollection *)v8 updatedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_2_1053;
  v17[3] = &unk_1E7549AF8;
  v17[4] = self;
  [updatedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __42__HMHome__mergeAccessoryProtectionGroups___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed network protection group via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1049(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added network protection group via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _configureWithHome:*(a1 + 32)];
}

void __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1050(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveAccessoryNetworkProtectionGroup with network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  v9 = [v8 queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1051;
  v11[3] = &unk_1E754E5C0;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v10 = v3;
  dispatch_async(v9, v11);
}

void __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didAddAccessoryNetworkProtectionGroup with network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  v9 = [v8 queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1052;
  v11[3] = &unk_1E754E5C0;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v10 = v3;
  dispatch_async(v9, v11);
}

void __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_2_1053(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateAccessoryNetworkProtectionGroup with network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  v9 = [v8 queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__HMHome__mergeAccessoryProtectionGroups___block_invoke_1054;
  v11[3] = &unk_1E754E5C0;
  v11[4] = *(a1 + 32);
  v12 = v3;
  v10 = v3;
  dispatch_async(v9, v11);
}

- (BOOL)_mergeOutgoingInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v5 = [HMObjectMergeCollection alloc];
  currentOutgoingInvitations = [(HMHome *)self currentOutgoingInvitations];
  array = [currentOutgoingInvitations array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:invitationsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__HMHome__mergeOutgoingInvitations___block_invoke;
  v26[3] = &unk_1E7549AD0;
  v26[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v26];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__HMHome__mergeOutgoingInvitations___block_invoke_1045;
  v25[3] = &unk_1E7549AD0;
  v25[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentOutgoingInvitations2 = [(HMHome *)self currentOutgoingInvitations];
  [currentOutgoingInvitations2 setArray:finalObjects];

  array2 = [MEMORY[0x1E695DF70] array];
  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  [array2 addObjectsFromArray:addedObjects2];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  [array2 addObjectsFromArray:removedObjects2];

  updatedObjects = [(HMObjectMergeCollection *)v8 updatedObjects];
  [array2 addObjectsFromArray:updatedObjects];

  _privateDelegate = [(HMHome *)self _privateDelegate];
  if ([array2 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context = [(HMHome *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HMHome__mergeOutgoingInvitations___block_invoke_1047;
    block[3] = &unk_1E754E5E8;
    block[4] = self;
    v23 = _privateDelegate;
    v24 = array2;
    dispatch_async(queue, block);
  }

  isModified = [(HMObjectMergeCollection *)v8 isModified];

  return isModified;
}

void __36__HMHome__mergeOutgoingInvitations___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed outgoing invitation via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
  [v3 _updateInvitationState:1];
}

void __36__HMHome__mergeOutgoingInvitations___block_invoke_1045(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added outgoing invitation via merge: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v3;
  v8 = [v3 accessoryInvitations];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 accessory];
        v15 = [*(a1 + 32) accessories];
        v16 = [v14 uniqueIdentifier];
        v17 = [v15 hmf_firstObjectWithUniqueIdentifier:v16];

        [v13 setAccessory:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) _configureOutgoingInvitation:v18];
}

void __36__HMHome__mergeOutgoingInvitations___block_invoke_1047(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HMHome__mergeOutgoingInvitations___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  [v3 invokeBlock:v6];
}

- (void)_configureOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  context = [(HMHome *)self context];
  [invitationCopy __configureWithContext:context home:self];
}

- (BOOL)_mergeResidentDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [HMObjectMergeCollection alloc];
  currentResidentDevices = [(HMHome *)self currentResidentDevices];
  array = [currentResidentDevices array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:devicesCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __32__HMHome__mergeResidentDevices___block_invoke;
  v19[3] = &unk_1E7549AA8;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __32__HMHome__mergeResidentDevices___block_invoke_1037;
  v18[3] = &unk_1E7549AA8;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentResidentDevices2 = [(HMHome *)self currentResidentDevices];
  [currentResidentDevices2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __32__HMHome__mergeResidentDevices___block_invoke_1038;
  v17[3] = &unk_1E7549AA8;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __32__HMHome__mergeResidentDevices___block_invoke_1040;
  v16[3] = &unk_1E7549AA8;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __32__HMHome__mergeResidentDevices___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed resident device via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __32__HMHome__mergeResidentDevices___block_invoke_1037(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added resident device via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];
}

void __32__HMHome__mergeResidentDevices___block_invoke_1038(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63B38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 32) context];
    v8 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__HMHome__mergeResidentDevices___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v10 = v3;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __32__HMHome__mergeResidentDevices___block_invoke_1040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  [v3 __configureWithContext:v4 home:*(a1 + 32)];

  v5 = [*(a1 + 32) delegate];
  if ([v5 conformsToProtocol:&unk_1F0F63B38])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__HMHome__mergeResidentDevices___block_invoke_2_1042;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v11 = v3;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

void __32__HMHome__mergeResidentDevices___block_invoke_2_1042(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__HMHome__mergeResidentDevices___block_invoke_3_1043;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __32__HMHome__mergeResidentDevices___block_invoke_3_1043(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddResidentDevice with resident device: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddResidentDevice:*(a1 + 40)];
}

void __32__HMHome__mergeResidentDevices___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__HMHome__mergeResidentDevices___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __32__HMHome__mergeResidentDevices___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveResidentDevice with resident device: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveResidentDevice:*(a1 + 40)];
}

- (BOOL)_mergeUsers:(id)users
{
  usersCopy = users;
  v5 = [HMObjectMergeCollection alloc];
  currentUsers = [(HMHome *)self currentUsers];
  array = [currentUsers array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:usersCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __22__HMHome__mergeUsers___block_invoke;
  v19[3] = &unk_1E754C768;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __22__HMHome__mergeUsers___block_invoke_1029;
  v18[3] = &unk_1E754C768;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentUsers2 = [(HMHome *)self currentUsers];
  [currentUsers2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __22__HMHome__mergeUsers___block_invoke_1030;
  v17[3] = &unk_1E754C768;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __22__HMHome__mergeUsers___block_invoke_1032;
  v16[3] = &unk_1E754C768;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __22__HMHome__mergeUsers___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed user via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __22__HMHome__mergeUsers___block_invoke_1029(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added user via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];
}

void __22__HMHome__mergeUsers___block_invoke_1030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeUsers___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeUsers___block_invoke_1032(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeUsers___block_invoke_2_1034;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeUsers___block_invoke_2_1034(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeUsers___block_invoke_3_1035;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeUsers___block_invoke_3_1035(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddUser with user: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddUser:*(a1 + 40)];
}

void __22__HMHome__mergeUsers___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeUsers___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeUsers___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveUser with user: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveUser:*(a1 + 40)];
}

- (BOOL)_mergeTriggers:(id)triggers
{
  triggersCopy = triggers;
  v5 = [HMObjectMergeCollection alloc];
  currentTriggers = [(HMHome *)self currentTriggers];
  array = [currentTriggers array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:triggersCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __25__HMHome__mergeTriggers___block_invoke;
  v19[3] = &unk_1E7549A80;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __25__HMHome__mergeTriggers___block_invoke_1025;
  v18[3] = &unk_1E7549A80;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentTriggers2 = [(HMHome *)self currentTriggers];
  [currentTriggers2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __25__HMHome__mergeTriggers___block_invoke_1027;
  v17[3] = &unk_1E7549A80;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __25__HMHome__mergeTriggers___block_invoke_3;
  v16[3] = &unk_1E7549A80;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __25__HMHome__mergeTriggers___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed trigger via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __25__HMHome__mergeTriggers___block_invoke_1025(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v34 = a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v7;
    v44 = 2112;
    v45 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added trigger via merge: %@", buf, 0x16u);

    a1 = v34;
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];

  v9 = v3;
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

  v32 = v11;
  [v11 _updateCharacteristicReference];
  v12 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = v9;
  v13 = [v9 actionSets];
  v37 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v37)
  {
    v14 = *v39;
    v33 = v13;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v16 actionSetType];
        v18 = [v17 isEqualToString:@"HMActionSetTypeTriggerOwned"];

        v19 = *(a1 + 32);
        v20 = [v16 uuid];
        if (v18)
        {
          [v19 triggerOwnedActionSetWithUUID:v20];
        }

        else
        {
          [v19 actionSetWithUUID:v20];
        }
        v21 = ;

        if (v21)
        {
          [v12 addObject:v21];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = *(a1 + 32);
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v16 uuid];
            v27 = [v16 actionSetType];
            [v35 uuid];
            v36 = v22;
            v28 = v14;
            v30 = v29 = v12;
            *buf = 138544130;
            v43 = v25;
            v44 = 2112;
            v45 = v26;
            v46 = 2112;
            v47 = v27;
            v48 = 2112;
            v49 = v30;
            _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not find action set %@/%@ for added trigger: %@", buf, 0x2Au);

            v12 = v29;
            v14 = v28;
            v22 = v36;

            a1 = v34;
            v13 = v33;
          }

          objc_autoreleasePoolPop(v22);
        }
      }

      v37 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v37);
  }

  v31 = [v35 currentActionSets];
  [v31 setArray:v12];
}

void __25__HMHome__mergeTriggers___block_invoke_1027(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__HMHome__mergeTriggers___block_invoke_2;
  v7[3] = &unk_1E754E5C0;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __25__HMHome__mergeTriggers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__HMHome__mergeTriggers___block_invoke_4;
  v7[3] = &unk_1E754E5C0;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (BOOL)_mergeTriggerOwnedActionSets:(id)sets
{
  setsCopy = sets;
  v5 = [HMObjectMergeCollection alloc];
  currentTriggerOwnedActionSets = [(HMHome *)self currentTriggerOwnedActionSets];
  array = [currentTriggerOwnedActionSets array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:setsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__HMHome__mergeTriggerOwnedActionSets___block_invoke;
  v15[3] = &unk_1E7549A58;
  v15[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__HMHome__mergeTriggerOwnedActionSets___block_invoke_1023;
  v14[3] = &unk_1E7549A58;
  v14[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentTriggerOwnedActionSets2 = [(HMHome *)self currentTriggerOwnedActionSets];
  [currentTriggerOwnedActionSets2 setArray:finalObjects];

  LOBYTE(currentTriggerOwnedActionSets2) = [(HMObjectMergeCollection *)v8 isModified];
  return currentTriggerOwnedActionSets2;
}

void __39__HMHome__mergeTriggerOwnedActionSets___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed trigger-owned action set via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __39__HMHome__mergeTriggerOwnedActionSets___block_invoke_1023(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added trigger-owned action set via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];
}

- (BOOL)_mergeActionSets:(id)sets
{
  setsCopy = sets;
  v5 = [HMObjectMergeCollection alloc];
  currentActionSets = [(HMHome *)self currentActionSets];
  array = [currentActionSets array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:setsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __27__HMHome__mergeActionSets___block_invoke;
  v19[3] = &unk_1E7549A58;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __27__HMHome__mergeActionSets___block_invoke_1016;
  v18[3] = &unk_1E7549A58;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentActionSets2 = [(HMHome *)self currentActionSets];
  [currentActionSets2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __27__HMHome__mergeActionSets___block_invoke_1017;
  v17[3] = &unk_1E7549A58;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __27__HMHome__mergeActionSets___block_invoke_1019;
  v16[3] = &unk_1E7549A58;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __27__HMHome__mergeActionSets___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action set via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __27__HMHome__mergeActionSets___block_invoke_1016(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action set via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];
}

void __27__HMHome__mergeActionSets___block_invoke_1017(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__HMHome__mergeActionSets___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __27__HMHome__mergeActionSets___block_invoke_1019(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__HMHome__mergeActionSets___block_invoke_2_1021;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __27__HMHome__mergeActionSets___block_invoke_2_1021(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__HMHome__mergeActionSets___block_invoke_3_1022;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __27__HMHome__mergeActionSets___block_invoke_3_1022(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddActionSet with action set: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddActionSet:*(a1 + 40)];
}

void __27__HMHome__mergeActionSets___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__HMHome__mergeActionSets___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __27__HMHome__mergeActionSets___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveActionSet with action set: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveActionSet:*(a1 + 40)];
}

- (BOOL)_mergeServiceGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [HMObjectMergeCollection alloc];
  currentServiceGroups = [(HMHome *)self currentServiceGroups];
  array = [currentServiceGroups array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:groupsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __30__HMHome__mergeServiceGroups___block_invoke;
  v19[3] = &unk_1E7549A30;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __30__HMHome__mergeServiceGroups___block_invoke_1008;
  v18[3] = &unk_1E7549A30;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentServiceGroups2 = [(HMHome *)self currentServiceGroups];
  [currentServiceGroups2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __30__HMHome__mergeServiceGroups___block_invoke_1009;
  v17[3] = &unk_1E7549A30;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__HMHome__mergeServiceGroups___block_invoke_1011;
  v16[3] = &unk_1E7549A30;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __30__HMHome__mergeServiceGroups___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed service group via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __30__HMHome__mergeServiceGroups___block_invoke_1008(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v33 = a1;
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v7;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added service group via merge: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = v33;
  v9 = [*(v33 + 32) context];
  [v3 __configureWithContext:v9 home:*(v33 + 32)];

  v36 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v3;
  v10 = [v3 services];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v38;
    *&v12 = 138543874;
    v31 = v12;
    v32 = v10;
    do
    {
      v15 = 0;
      v35 = v13;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = *(v8 + 32);
        v18 = [v16 accessory];
        v19 = [v18 uuid];
        v20 = [v17 accessoryWithUUID:v19];

        v21 = [v16 instanceID];
        v22 = [v20 _findService:v21];

        if (v22)
        {
          [v36 addObject:v22];
        }

        else
        {
          v23 = v14;
          v24 = objc_autoreleasePoolPush();
          v25 = *(v8 + 32);
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            v28 = [v16 uuid];
            v29 = [v34 uuid];
            *buf = v31;
            v42 = v27;
            v43 = 2112;
            v44 = v28;
            v45 = 2112;
            v46 = v29;
            _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find service %@ for added service group: %@", buf, 0x20u);

            v8 = v33;
            v10 = v32;
          }

          objc_autoreleasePoolPop(v24);
          v14 = v23;
          v13 = v35;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v13);
  }

  v30 = [v34 currentServices];
  [v30 setArray:v36];
}

void __30__HMHome__mergeServiceGroups___block_invoke_1009(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__HMHome__mergeServiceGroups___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __30__HMHome__mergeServiceGroups___block_invoke_1011(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__HMHome__mergeServiceGroups___block_invoke_2_1013;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __30__HMHome__mergeServiceGroups___block_invoke_2_1013(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__HMHome__mergeServiceGroups___block_invoke_3_1014;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __30__HMHome__mergeServiceGroups___block_invoke_3_1014(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddServiceGroup with service group: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddServiceGroup:*(a1 + 40)];
}

void __30__HMHome__mergeServiceGroups___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__HMHome__mergeServiceGroups___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __30__HMHome__mergeServiceGroups___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveServiceGroup with service group: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveServiceGroup:*(a1 + 40)];
}

- (BOOL)_mergeAccessories:(id)accessories
{
  v35 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = MEMORY[0x1E696AD98];
    currentAccessories = [(HMHome *)selfCopy currentAccessories];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(currentAccessories, "count")}];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(accessoriesCopy, "count")}];
    *buf = 138543874;
    v30 = v8;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@New Accessories Before Merge: %@ -> %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = [HMObjectMergeCollection alloc];
  currentAccessories2 = [(HMHome *)selfCopy currentAccessories];
  array = [currentAccessories2 array];
  v16 = [(HMObjectMergeCollection *)v13 initWithCurrentObjects:array newObjects:accessoriesCopy];

  removedObjects = [(HMObjectMergeCollection *)v16 removedObjects];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __28__HMHome__mergeAccessories___block_invoke;
  v28[3] = &unk_1E754C588;
  v28[4] = selfCopy;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v28];

  addedObjects = [(HMObjectMergeCollection *)v16 addedObjects];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __28__HMHome__mergeAccessories___block_invoke_999;
  v27[3] = &unk_1E754C588;
  v27[4] = selfCopy;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  [(HMObjectMergeCollection *)v16 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v16 finalObjects];
  currentAccessories3 = [(HMHome *)selfCopy currentAccessories];
  [currentAccessories3 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v16 removedObjects];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __28__HMHome__mergeAccessories___block_invoke_1000;
  v26[3] = &unk_1E754C588;
  v26[4] = selfCopy;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];

  addedObjects2 = [(HMObjectMergeCollection *)v16 addedObjects];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __28__HMHome__mergeAccessories___block_invoke_1003;
  v25[3] = &unk_1E754C588;
  v25[4] = selfCopy;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

  isModified = [(HMObjectMergeCollection *)v16 isModified];
  return isModified;
}

void __28__HMHome__mergeAccessories___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __28__HMHome__mergeAccessories___block_invoke_999(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added accessory via merge: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];

  v9 = *(a1 + 32);
  v10 = [v3 room];
  v11 = [v10 uuid];
  v12 = [v9 roomWithUUID:v11];
  [v3 setRoom:v12];
}

void __28__HMHome__mergeAccessories___block_invoke_1000(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v19 = v8;
    v20 = 2112;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying client of didRemoveAccessory via merge: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Client has registered for didRemoveAccessory delegate callback via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 32) context];
    v14 = [v13 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__HMHome__mergeAccessories___block_invoke_1002;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v16 = v3;
    v17 = v4;
    dispatch_async(v14, block);
  }
}

void __28__HMHome__mergeAccessories___block_invoke_1003(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 postConfigure];
  v4 = [*(a1 + 32) delegate];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    *buf = 138544130;
    v21 = v8;
    v22 = 2112;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying client of didAddAccessory via merge: %@ delegate: %@, %p", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      *buf = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v3;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Client has registered for didAddAccessory delegate callback via merge: %@, %p", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [*(a1 + 32) context];
    v16 = [v15 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__HMHome__mergeAccessories___block_invoke_1005;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    dispatch_async(v16, block);
  }
}

void __28__HMHome__mergeAccessories___block_invoke_1005(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__HMHome__mergeAccessories___block_invoke_2_1006;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __28__HMHome__mergeAccessories___block_invoke_2_1006(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Dispatching didAddAccessory on client queue via merge: %@, %p", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddAccessory:*(a1 + 40)];
}

void __28__HMHome__mergeAccessories___block_invoke_1002(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__HMHome__mergeAccessories___block_invoke_2;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __28__HMHome__mergeAccessories___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Dispatching didRemoveAccessory on client queue via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveAccessory:*(a1 + 40)];
}

- (BOOL)_mergeZones:(id)zones
{
  zonesCopy = zones;
  v5 = [HMObjectMergeCollection alloc];
  currentZones = [(HMHome *)self currentZones];
  array = [currentZones array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:zonesCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __22__HMHome__mergeZones___block_invoke;
  v19[3] = &unk_1E7549A08;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __22__HMHome__mergeZones___block_invoke_991;
  v18[3] = &unk_1E7549A08;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentZones2 = [(HMHome *)self currentZones];
  [currentZones2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __22__HMHome__mergeZones___block_invoke_992;
  v17[3] = &unk_1E7549A08;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __22__HMHome__mergeZones___block_invoke_994;
  v16[3] = &unk_1E7549A08;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __22__HMHome__mergeZones___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed zone via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __22__HMHome__mergeZones___block_invoke_991(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v29 = a1;
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v7;
    v38 = 2112;
    v39 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added zone via merge: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = a1;
  v9 = [*(a1 + 32) context];
  [v3 __configureWithContext:v9 home:*(a1 + 32)];

  [MEMORY[0x1E695DF70] array];
  v31 = v30 = v3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [v3 rooms];
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v33;
    *&v12 = 138543874;
    v27 = v12;
    v28 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = *(v8 + 32);
        v18 = [v16 uuid];
        v19 = [v17 roomWithUUID:v18];

        if (v19)
        {
          [v31 addObject:v19];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          v21 = *(v8 + 32);
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v16 uuid];
            v25 = [v30 uuid];
            *buf = v27;
            v37 = v23;
            v38 = 2112;
            v39 = v24;
            v40 = 2112;
            v41 = v25;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to find room %@ for added zone: %@", buf, 0x20u);

            v8 = v29;
            v10 = v28;
          }

          objc_autoreleasePoolPop(v20);
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v13);
  }

  v26 = [v30 currentRooms];
  [v26 setArray:v31];
}

void __22__HMHome__mergeZones___block_invoke_992(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeZones___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeZones___block_invoke_994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeZones___block_invoke_2_996;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeZones___block_invoke_2_996(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeZones___block_invoke_3_997;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeZones___block_invoke_3_997(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddZone with zone: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddZone:*(a1 + 40)];
}

void __22__HMHome__mergeZones___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeZones___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeZones___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveZone with zone: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveZone:*(a1 + 40)];
}

- (BOOL)_mergeIsFeatureHomeTheaterQFAEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(HMHome *)self isFeatureHomeTheaterQFAEnabled]^ enabled;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMHome *)selfCopy isFeatureHomeTheaterQFAEnabled];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating is feature home theater QFA enabled from %@ to %@ via merge", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMHome *)selfCopy setIsFeatureHomeTheaterQFAEnabled:enabledCopy];
  }

  return v5;
}

- (BOOL)_mergeRooms:(id)rooms
{
  roomsCopy = rooms;
  v5 = [HMObjectMergeCollection alloc];
  currentRooms = [(HMHome *)self currentRooms];
  array = [currentRooms array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:roomsCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __22__HMHome__mergeRooms___block_invoke;
  v19[3] = &unk_1E754BEE8;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __22__HMHome__mergeRooms___block_invoke_983;
  v18[3] = &unk_1E754BEE8;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  currentRooms2 = [(HMHome *)self currentRooms];
  [currentRooms2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __22__HMHome__mergeRooms___block_invoke_984;
  v17[3] = &unk_1E754BEE8;
  v17[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __22__HMHome__mergeRooms___block_invoke_986;
  v16[3] = &unk_1E754BEE8;
  v16[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  LOBYTE(self) = [(HMObjectMergeCollection *)v8 isModified];
  return self;
}

void __22__HMHome__mergeRooms___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed room via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __22__HMHome__mergeRooms___block_invoke_983(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added room via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 home:*(a1 + 32)];
}

void __22__HMHome__mergeRooms___block_invoke_984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeRooms___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeRooms___block_invoke_986(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__HMHome__mergeRooms___block_invoke_2_988;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __22__HMHome__mergeRooms___block_invoke_2_988(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeRooms___block_invoke_3_989;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeRooms___block_invoke_3_989(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddRoom with room: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didAddRoom:*(a1 + 40)];
}

void __22__HMHome__mergeRooms___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__HMHome__mergeRooms___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __22__HMHome__mergeRooms___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveRoom with room: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) home:*(a1 + 32) didRemoveRoom:*(a1 + 40)];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v488 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v29 = 0;
    goto LABEL_244;
  }

  v407 = objectCopy;
  rooms = [v6 rooms];
  v408 = [(HMHome *)self _mergeRooms:rooms];

  zones = [v6 zones];
  v405 = [(HMHome *)self _mergeZones:zones];

  accessories = [v6 accessories];
  v404 = [(HMHome *)self _mergeAccessories:accessories];

  serviceGroups = [v6 serviceGroups];
  v403 = [(HMHome *)self _mergeServiceGroups:serviceGroups];

  actionSets = [v6 actionSets];
  v402 = [(HMHome *)self _mergeActionSets:actionSets];

  triggerOwnedActionSets = [v6 triggerOwnedActionSets];
  v401 = [(HMHome *)self _mergeTriggerOwnedActionSets:triggerOwnedActionSets];

  triggers = [v6 triggers];
  v400 = [(HMHome *)self _mergeTriggers:triggers];

  users = [v6 users];
  v399 = [(HMHome *)self _mergeUsers:users];

  residentDevices = [v6 residentDevices];
  v16 = [(HMHome *)self _mergeResidentDevices:residentDevices];

  outgoingInvitations = [v6 outgoingInvitations];
  v18 = [(HMHome *)self _mergeOutgoingInvitations:outgoingInvitations];

  v19 = -[HMHome _mergeIsFeatureHomeTheaterQFAEnabled:](self, "_mergeIsFeatureHomeTheaterQFAEnabled:", [v6 isFeatureHomeTheaterQFAEnabled]);
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  mediaSystems = [v6 mediaSystems];
  context = [(HMHome *)self context];
  v23 = [mediaSystemStageManager mergeMediaSystems:mediaSystems withHome:self context:context];

  accessoryProtectionGroups = [v6 accessoryProtectionGroups];
  v25 = [(HMHome *)self _mergeAccessoryProtectionGroups:accessoryProtectionGroups];

  name = [(HMHome *)self name];
  name2 = [v6 name];
  LOBYTE(triggers) = [name isEqualToString:name2];

  if (triggers)
  {
    v28 = (v408 || v405 || v404 || v403 || v402 || v401 || v400 || v399 || v16 || v18 || v19) | v23 | v25;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      name3 = [(HMHome *)selfCopy name];
      name4 = [v6 name];
      *buf = 138543874;
      v480 = v33;
      v481 = 2112;
      *v482 = name3;
      *&v482[8] = 2112;
      v483 = name4;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Name updated from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    name5 = [v6 name];
    [(HMHome *)selfCopy setName:name5];

    delegate = [(HMHome *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMHome *)selfCopy context];
      queue = [context2 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__HMHome_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E5C0;
      block[4] = selfCopy;
      v478 = delegate;
      dispatch_async(queue, block);
    }

    v28 = 1;
  }

  soundCheckEnabled = [(HMHome *)self soundCheckEnabled];
  if (soundCheckEnabled != [v6 soundCheckEnabled])
  {
    -[HMHome setSoundCheckEnabled:](self, "setSoundCheckEnabled:", [v6 soundCheckEnabled]);
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      [(HMHome *)selfCopy2 soundCheckEnabled];
      v45 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v44;
      v481 = 2112;
      *v482 = v45;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_INFO, "%{public}@Sound check value updated to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    _privateDelegate = [(HMHome *)selfCopy2 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context3 = [(HMHome *)selfCopy2 context];
      queue2 = [context3 queue];
      v475[0] = MEMORY[0x1E69E9820];
      v475[1] = 3221225472;
      v475[2] = __29__HMHome_mergeFromNewObject___block_invoke_731;
      v475[3] = &unk_1E754E5C0;
      v475[4] = selfCopy2;
      v476 = _privateDelegate;
      dispatch_async(queue2, v475);
    }
  }

  supportsResidentActionSetStateEvaluation = [(HMHome *)self supportsResidentActionSetStateEvaluation];
  if (supportsResidentActionSetStateEvaluation != [v6 supportsResidentActionSetStateEvaluation])
  {
    -[HMHome setSupportsResidentActionSetStateEvaluation:](self, "setSupportsResidentActionSetStateEvaluation:", [v6 supportsResidentActionSetStateEvaluation]);
    v50 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      [(HMHome *)selfCopy3 supportsResidentActionSetStateEvaluation];
      v54 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v53;
      v481 = 2112;
      *v482 = v54;
      _os_log_impl(&dword_19BB39000, v52, OS_LOG_TYPE_INFO, "%{public}@supportsResidentActionSetStateEvaluation value updated to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    _privateDelegate2 = [(HMHome *)selfCopy3 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context4 = [(HMHome *)selfCopy3 context];
      queue3 = [context4 queue];
      v473[0] = MEMORY[0x1E69E9820];
      v473[1] = 3221225472;
      v473[2] = __29__HMHome_mergeFromNewObject___block_invoke_735;
      v473[3] = &unk_1E754E5C0;
      v473[4] = selfCopy3;
      v474 = _privateDelegate2;
      dispatch_async(queue3, v473);
    }
  }

  audioAnalysisClassifierOptions = [(HMHome *)self audioAnalysisClassifierOptions];
  if (audioAnalysisClassifierOptions != [v6 audioAnalysisClassifierOptions])
  {
    -[HMHome setAudioAnalysisClassifierOptions:](self, "setAudioAnalysisClassifierOptions:", [v6 audioAnalysisClassifierOptions]);
    v59 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = HMFGetLogIdentifier();
      audioAnalysisClassifierOptions2 = [(HMHome *)selfCopy4 audioAnalysisClassifierOptions];
      *buf = 138543618;
      v480 = v62;
      v481 = 2048;
      *v482 = audioAnalysisClassifierOptions2;
      _os_log_impl(&dword_19BB39000, v61, OS_LOG_TYPE_INFO, "%{public}@Audio analysis classifier options updated to %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v59);
    _privateDelegate3 = [(HMHome *)selfCopy4 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context5 = [(HMHome *)selfCopy4 context];
      queue4 = [context5 queue];
      v471[0] = MEMORY[0x1E69E9820];
      v471[1] = 3221225472;
      v471[2] = __29__HMHome_mergeFromNewObject___block_invoke_739;
      v471[3] = &unk_1E754E5C0;
      v471[4] = selfCopy4;
      v472 = _privateDelegate3;
      dispatch_async(queue4, v471);
    }
  }

  didOnboardAudioAnalysis = [(HMHome *)self didOnboardAudioAnalysis];
  if (didOnboardAudioAnalysis != [v6 didOnboardAudioAnalysis])
  {
    -[HMHome setDidOnboardAudioAnalysis:](self, "setDidOnboardAudioAnalysis:", [v6 didOnboardAudioAnalysis]);
    v68 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = HMFGetLogIdentifier();
      didOnboardAudioAnalysis2 = [(HMHome *)selfCopy5 didOnboardAudioAnalysis];
      *buf = 138543618;
      v480 = v71;
      v481 = 2048;
      *v482 = didOnboardAudioAnalysis2;
      _os_log_impl(&dword_19BB39000, v70, OS_LOG_TYPE_INFO, "%{public}@Did onboard audio analysis updated to %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
    _privateDelegate4 = [(HMHome *)selfCopy5 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context6 = [(HMHome *)selfCopy5 context];
      queue5 = [context6 queue];
      v469[0] = MEMORY[0x1E69E9820];
      v469[1] = 3221225472;
      v469[2] = __29__HMHome_mergeFromNewObject___block_invoke_743;
      v469[3] = &unk_1E754E5C0;
      v469[4] = selfCopy5;
      v470 = _privateDelegate4;
      dispatch_async(queue5, v469);
    }
  }

  siriPhraseOptions = [(HMHome *)self siriPhraseOptions];
  if (siriPhraseOptions != [v6 siriPhraseOptions])
  {
    -[HMHome setSiriPhraseOptions:](self, "setSiriPhraseOptions:", [v6 siriPhraseOptions]);
    v77 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMHome siriPhraseOptions](selfCopy6, "siriPhraseOptions")}];
      *buf = 138543618;
      v480 = v80;
      v481 = 2112;
      *v482 = v81;
      _os_log_impl(&dword_19BB39000, v79, OS_LOG_TYPE_INFO, "%{public}@Siri phrase options updated to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    context7 = [(HMHome *)selfCopy6 context];
    queue6 = [context7 queue];
    v468[0] = MEMORY[0x1E69E9820];
    v468[1] = 3221225472;
    v468[2] = __29__HMHome_mergeFromNewObject___block_invoke_745;
    v468[3] = &unk_1E754E2A8;
    v468[4] = selfCopy6;
    dispatch_async(queue6, v468);
  }

  isLocationServicesEnabled = [(HMHome *)self isLocationServicesEnabled];
  if (isLocationServicesEnabled != [v6 isLocationServicesEnabled])
  {
    v85 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      [v6 isLocationServicesEnabled];
      v89 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v88;
      v481 = 2112;
      *v482 = v89;
      _os_log_impl(&dword_19BB39000, v87, OS_LOG_TYPE_INFO, "%{public}@Updating location services: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
    -[HMHome setLocationServicesEnabled:](selfCopy7, "setLocationServicesEnabled:", [v6 isLocationServicesEnabled]);
    context8 = [(HMHome *)selfCopy7 context];
    queue7 = [context8 queue];
    v467[0] = MEMORY[0x1E69E9820];
    v467[1] = 3221225472;
    v467[2] = __29__HMHome_mergeFromNewObject___block_invoke_749;
    v467[3] = &unk_1E754E2A8;
    v467[4] = selfCopy7;
    dispatch_async(queue7, v467);
  }

  didOnboardLocationServices = [(HMHome *)self didOnboardLocationServices];
  if (didOnboardLocationServices != [v6 didOnboardLocationServices])
  {
    v93 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v95 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      v96 = HMFGetLogIdentifier();
      [v6 didOnboardLocationServices];
      v97 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v96;
      v481 = 2112;
      *v482 = v97;
      _os_log_impl(&dword_19BB39000, v95, OS_LOG_TYPE_INFO, "%{public}@Updating did onboard location services: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v93);
    -[HMHome setDidOnboardLocationServices:](selfCopy8, "setDidOnboardLocationServices:", [v6 didOnboardLocationServices]);
    context9 = [(HMHome *)selfCopy8 context];
    queue8 = [context9 queue];
    v466[0] = MEMORY[0x1E69E9820];
    v466[1] = 3221225472;
    v466[2] = __29__HMHome_mergeFromNewObject___block_invoke_753;
    v466[3] = &unk_1E754E2A8;
    v466[4] = selfCopy8;
    dispatch_async(queue8, v466);
  }

  multiUserEnabled = [(HMHome *)self multiUserEnabled];
  if (multiUserEnabled != [v6 multiUserEnabled])
  {
    multiUserEnabled2 = [v6 multiUserEnabled];
    v102 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v104 = HMFGetOSLogHandle();
    v105 = v104;
    if (multiUserEnabled2)
    {
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v106 = HMFGetLogIdentifier();
        multiUserEnabled3 = [v6 multiUserEnabled];
        v108 = @"NO";
        *buf = 138543874;
        v480 = v106;
        v481 = 2112;
        if (multiUserEnabled3)
        {
          v108 = @"YES";
        }

        *v482 = v108;
        *&v482[8] = 2112;
        v483 = selfCopy9;
        _os_log_impl(&dword_19BB39000, v105, OS_LOG_TYPE_INFO, "%{public}@multiUserEnabled value %@ is merging into home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v102);
      -[HMHome setMultiUserEnabled:](selfCopy9, "setMultiUserEnabled:", [v6 multiUserEnabled]);
      _privateDelegate5 = [(HMHome *)selfCopy9 _privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        context10 = [(HMHome *)selfCopy9 context];
        queue9 = [context10 queue];
        v464[0] = MEMORY[0x1E69E9820];
        v464[1] = 3221225472;
        v464[2] = __29__HMHome_mergeFromNewObject___block_invoke_765;
        v464[3] = &unk_1E754E5C0;
        v464[4] = selfCopy9;
        v465 = _privateDelegate5;
        dispatch_async(queue9, v464);
      }

      v28 = 1;
    }

    else
    {
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v112;
        v481 = 2112;
        *v482 = selfCopy9;
        _os_log_impl(&dword_19BB39000, v105, OS_LOG_TYPE_ERROR, "%{public}@multiUserEnabled value (NO) will not be merged into home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v102);
    }
  }

  hasAnyUserAcknowledgedCameraRecordingOnboarding = [(HMHome *)self hasAnyUserAcknowledgedCameraRecordingOnboarding];
  if (hasAnyUserAcknowledgedCameraRecordingOnboarding != [v6 hasAnyUserAcknowledgedCameraRecordingOnboarding])
  {
    hasAnyUserAcknowledgedCameraRecordingOnboarding2 = [v6 hasAnyUserAcknowledgedCameraRecordingOnboarding];
    v115 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v117 = HMFGetOSLogHandle();
    v118 = v117;
    if (hasAnyUserAcknowledgedCameraRecordingOnboarding2)
    {
      if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        v119 = HMFGetLogIdentifier();
        hasAnyUserAcknowledgedCameraRecordingOnboarding3 = [v6 hasAnyUserAcknowledgedCameraRecordingOnboarding];
        v121 = @"NO";
        *buf = 138543874;
        v480 = v119;
        v481 = 2112;
        if (hasAnyUserAcknowledgedCameraRecordingOnboarding3)
        {
          v121 = @"YES";
        }

        *v482 = v121;
        *&v482[8] = 2112;
        v483 = selfCopy10;
        _os_log_impl(&dword_19BB39000, v118, OS_LOG_TYPE_INFO, "%{public}@hasAnyUserAcknowledgedCameraRecordingOnboarding value %@ is merging into home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v115);
      -[HMHome setHasAnyUserAcknowledgedCameraRecordingOnboarding:](selfCopy10, "setHasAnyUserAcknowledgedCameraRecordingOnboarding:", [v6 hasAnyUserAcknowledgedCameraRecordingOnboarding]);
      _privateDelegate6 = [(HMHome *)selfCopy10 _privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        context11 = [(HMHome *)selfCopy10 context];
        queue10 = [context11 queue];
        v462[0] = MEMORY[0x1E69E9820];
        v462[1] = 3221225472;
        v462[2] = __29__HMHome_mergeFromNewObject___block_invoke_769;
        v462[3] = &unk_1E754E5C0;
        v462[4] = selfCopy10;
        v463 = _privateDelegate6;
        dispatch_async(queue10, v462);
      }

      v28 = 1;
    }

    else
    {
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        v125 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v125;
        v481 = 2112;
        *v482 = selfCopy10;
        _os_log_impl(&dword_19BB39000, v118, OS_LOG_TYPE_ERROR, "%{public}@hasAnyUserAcknowledgedCameraRecordingOnboarding value (NO) will not be merged into home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v115);
    }
  }

  if ([v6 hasOnboardedForAccessCode] && !-[HMHome hasOnboardedForAccessCode](self, "hasOnboardedForAccessCode"))
  {
    v126 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v128 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      v129 = HMFGetLogIdentifier();
      *buf = 138543362;
      v480 = v129;
      _os_log_impl(&dword_19BB39000, v128, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded home for access code", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v126);
    [(HMHome *)selfCopy11 setHasOnboardedForAccessCode:1];
    _privateDelegate7 = [(HMHome *)selfCopy11 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v131 = objc_autoreleasePoolPush();
      v132 = selfCopy11;
      v133 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
        v134 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v134;
        v481 = 2112;
        *v482 = _privateDelegate7;
        _os_log_impl(&dword_19BB39000, v133, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated has onboarded home for access code using delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v131);
      context12 = [(HMHome *)v132 context];
      queue11 = [context12 queue];
      v460[0] = MEMORY[0x1E69E9820];
      v460[1] = 3221225472;
      v460[2] = __29__HMHome_mergeFromNewObject___block_invoke_773;
      v460[3] = &unk_1E754E5C0;
      v460[4] = v132;
      v461 = _privateDelegate7;
      dispatch_async(queue11, v460);
    }

    v28 = 1;
  }

  hasOnboardedForWalletKey = [v6 hasOnboardedForWalletKey];
  if (hasOnboardedForWalletKey != [(HMHome *)self hasOnboardedForWalletKey])
  {
    v138 = objc_autoreleasePoolPush();
    selfCopy12 = self;
    v140 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
    {
      v141 = HMFGetLogIdentifier();
      v142 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v141;
      v481 = 2112;
      *v482 = v142;
      _os_log_impl(&dword_19BB39000, v140, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded home for wallet key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v138);
    [(HMHome *)selfCopy12 setHasOnboardedForWalletKey:hasOnboardedForWalletKey];
    _privateDelegate8 = [(HMHome *)selfCopy12 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v144 = objc_autoreleasePoolPush();
      v145 = selfCopy12;
      v146 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
      {
        v147 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v147;
        v481 = 2112;
        *v482 = _privateDelegate8;
        _os_log_impl(&dword_19BB39000, v146, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated has onboarded for wallet key using delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v144);
      context13 = [(HMHome *)v145 context];
      queue12 = [context13 queue];
      v458[0] = MEMORY[0x1E69E9820];
      v458[1] = 3221225472;
      v458[2] = __29__HMHome_mergeFromNewObject___block_invoke_777;
      v458[3] = &unk_1E754E5C0;
      v458[4] = v145;
      v459 = _privateDelegate8;
      dispatch_async(queue12, v458);
    }

    v28 = 1;
  }

  dismissedWalletKeyUWBUnlockOnboarding = [v6 dismissedWalletKeyUWBUnlockOnboarding];
  if (dismissedWalletKeyUWBUnlockOnboarding != [(HMHome *)self dismissedWalletKeyUWBUnlockOnboarding])
  {
    v151 = objc_autoreleasePoolPush();
    selfCopy13 = self;
    v153 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
    {
      v154 = HMFGetLogIdentifier();
      v155 = HMFBooleanToString();
      *buf = 138543618;
      v480 = v154;
      v481 = 2112;
      *v482 = v155;
      _os_log_impl(&dword_19BB39000, v153, OS_LOG_TYPE_INFO, "%{public}@Updating dismissedWalletKeyUWBUnlockOnboarding to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v151);
    [(HMHome *)selfCopy13 setDismissedWalletKeyUWBUnlockOnboarding:dismissedWalletKeyUWBUnlockOnboarding];
    _privateDelegate9 = [(HMHome *)selfCopy13 _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v157 = objc_autoreleasePoolPush();
      v158 = selfCopy13;
      v159 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
      {
        v160 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v160;
        v481 = 2112;
        *v482 = _privateDelegate9;
        _os_log_impl(&dword_19BB39000, v159, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated dismissed wallet key UWB unlock onboarding using delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v157);
      context14 = [(HMHome *)v158 context];
      queue13 = [context14 queue];
      v456[0] = MEMORY[0x1E69E9820];
      v456[1] = 3221225472;
      v456[2] = __29__HMHome_mergeFromNewObject___block_invoke_781;
      v456[3] = &unk_1E754E5C0;
      v456[4] = v158;
      v457 = _privateDelegate9;
      dispatch_async(queue13, v456);
    }

    v28 = 1;
  }

  roomForEntireHome = [(HMHome(HMRoom) *)self roomForEntireHome];
  name6 = [roomForEntireHome name];
  roomForEntireHome2 = [v6 roomForEntireHome];
  name7 = [roomForEntireHome2 name];
  v167 = [name6 isEqual:name7];

  if ((v167 & 1) == 0)
  {
    roomForEntireHome3 = [(HMHome(HMRoom) *)self roomForEntireHome];
    roomForEntireHome4 = [v6 roomForEntireHome];
    name8 = [roomForEntireHome4 name];
    [roomForEntireHome3 _updateName:name8 completionHandler:0];
  }

  applicationData = [(HMHome *)self applicationData];
  applicationData2 = [v6 applicationData];
  v173 = HMFEqualObjects();

  if ((v173 & 1) == 0)
  {
    applicationData3 = [v6 applicationData];
    [(HMHome *)self setApplicationData:applicationData3];

    context15 = [(HMHome *)self context];
    queue14 = [context15 queue];
    v455[0] = MEMORY[0x1E69E9820];
    v455[1] = 3221225472;
    v455[2] = __29__HMHome_mergeFromNewObject___block_invoke_3;
    v455[3] = &unk_1E754E2A8;
    v455[4] = self;
    dispatch_async(queue14, v455);

    v28 = 1;
  }

  roomForEntireHome5 = [(HMHome(HMRoom) *)self roomForEntireHome];
  roomForEntireHome6 = [v6 roomForEntireHome];
  v179 = [roomForEntireHome5 mergeFromNewObject:roomForEntireHome6];

  homeHubState = [(HMHome *)self homeHubState];
  if (homeHubState == [v6 homeHubState])
  {
    v29 = v179 | v28;
  }

  else
  {
    self->_homeHubState = [v6 homeHubState];
    context16 = [(HMHome *)self context];
    queue15 = [context16 queue];
    v454[0] = MEMORY[0x1E69E9820];
    v454[1] = 3221225472;
    v454[2] = __29__HMHome_mergeFromNewObject___block_invoke_4;
    v454[3] = &unk_1E754E2A8;
    v454[4] = self;
    dispatch_async(queue15, v454);

    v29 = 1;
  }

  -[HMHome setAdminUser:](self, "setAdminUser:", [v6 isAdminUser]);
  -[HMHome setOwnerUser:](self, "setOwnerUser:", [v6 isOwnerUser]);
  currentUser = [(HMHome *)self currentUser];
  currentUser2 = [v6 currentUser];
  [currentUser mergeFromNewObject:currentUser2];

  _privateDelegate10 = [(HMHome *)self _privateDelegate];
  isAutomaticSoftwareUpdateEnabled = [v6 isAutomaticSoftwareUpdateEnabled];
  if (isAutomaticSoftwareUpdateEnabled != [(HMHome *)self isAutomaticSoftwareUpdateEnabled])
  {
    [(HMHome *)self setAutomaticSoftwareUpdateEnabled:isAutomaticSoftwareUpdateEnabled];
    if (objc_opt_respondsToSelector())
    {
      context17 = [(HMHome *)self context];
      queue16 = [context17 queue];
      v451[0] = MEMORY[0x1E69E9820];
      v451[1] = 3221225472;
      v451[2] = __29__HMHome_mergeFromNewObject___block_invoke_5;
      v451[3] = &unk_1E754DC70;
      v451[4] = self;
      v452 = _privateDelegate10;
      v453 = isAutomaticSoftwareUpdateEnabled;
      dispatch_async(queue16, v451);
    }

    v29 = 1;
  }

  isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [v6 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
  if (isAutomaticThirdPartyAccessorySoftwareUpdateEnabled != [(HMHome *)self isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
  {
    [(HMHome *)self setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    delegate2 = [(HMHome *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_1F0F63B38])
    {
      v191 = delegate2;
    }

    else
    {
      v191 = 0;
    }

    v192 = v191;

    if (objc_opt_respondsToSelector())
    {
      context18 = [(HMHome *)self context];
      queue17 = [context18 queue];
      v448[0] = MEMORY[0x1E69E9820];
      v448[1] = 3221225472;
      v448[2] = __29__HMHome_mergeFromNewObject___block_invoke_7;
      v448[3] = &unk_1E754DC70;
      v448[4] = self;
      v449 = v192;
      v450 = isAutomaticThirdPartyAccessorySoftwareUpdateEnabled;
      dispatch_async(queue17, v448);
    }

    v29 = 1;
  }

  minimumMediaUserPrivilege = [v6 minimumMediaUserPrivilege];
  v409 = _privateDelegate10;
  if ([(HMHome *)self minimumMediaUserPrivilege]!= minimumMediaUserPrivilege)
  {
    v196 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v198 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      v199 = HMFGetLogIdentifier();
      v200 = v199;
      if (minimumMediaUserPrivilege > 3)
      {
        v201 = @"Unknown";
      }

      else
      {
        v201 = off_1E754A200[minimumMediaUserPrivilege];
      }

      *buf = 138543618;
      v480 = v199;
      v481 = 2112;
      *v482 = v201;
      _os_log_impl(&dword_19BB39000, v198, OS_LOG_TYPE_DEFAULT, "%{public}@Updating minimum media user privilege: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v196);
    [(HMHome *)selfCopy14 setMinimumMediaUserPrivilege:minimumMediaUserPrivilege];
    delegate3 = [(HMHome *)selfCopy14 delegate];
    if ([delegate3 conformsToProtocol:&unk_1F0F63B38])
    {
      v203 = delegate3;
    }

    else
    {
      v203 = 0;
    }

    v204 = v203;

    if (objc_opt_respondsToSelector())
    {
      v205 = objc_autoreleasePoolPush();
      v206 = selfCopy14;
      v207 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
      {
        v208 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v208;
        v481 = 2112;
        *v482 = v204;
        _os_log_impl(&dword_19BB39000, v207, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated minimum media user privilege using delegate %@", buf, 0x16u);

        _privateDelegate10 = v409;
      }

      objc_autoreleasePoolPop(v205);
      context19 = [(HMHome *)v206 context];
      queue18 = [context19 queue];
      v445[0] = MEMORY[0x1E69E9820];
      v445[1] = 3221225472;
      v445[2] = __29__HMHome_mergeFromNewObject___block_invoke_937;
      v445[3] = &unk_1E754E120;
      v445[4] = v206;
      v446 = v204;
      v447 = minimumMediaUserPrivilege;
      dispatch_async(queue18, v445);
    }

    v29 = 1;
  }

  isMediaPeerToPeerEnabled = [v6 isMediaPeerToPeerEnabled];
  if (isMediaPeerToPeerEnabled != [(HMHome *)self isMediaPeerToPeerEnabled])
  {
    v212 = objc_autoreleasePoolPush();
    selfCopy15 = self;
    v214 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      v215 = HMFGetLogIdentifier();
      v216 = v215;
      v217 = @"disabled";
      if (isMediaPeerToPeerEnabled)
      {
        v217 = @"enabled";
      }

      *buf = 138543618;
      v480 = v215;
      v481 = 2112;
      *v482 = v217;
      _os_log_impl(&dword_19BB39000, v214, OS_LOG_TYPE_DEFAULT, "%{public}@Updating media peer-to-peer to '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v212);
    [(HMHome *)selfCopy15 setMediaPeerToPeerEnabled:isMediaPeerToPeerEnabled];
    delegate4 = [(HMHome *)selfCopy15 delegate];
    if ([delegate4 conformsToProtocol:&unk_1F0F63B38])
    {
      v219 = delegate4;
    }

    else
    {
      v219 = 0;
    }

    v220 = v219;

    if (objc_opt_respondsToSelector())
    {
      v221 = objc_autoreleasePoolPush();
      v222 = selfCopy15;
      v223 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
      {
        v224 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v224;
        v481 = 2112;
        *v482 = v220;
        _os_log_impl(&dword_19BB39000, v223, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated media peer-to-peer enabled using delegate: %@", buf, 0x16u);

        _privateDelegate10 = v409;
      }

      objc_autoreleasePoolPop(v221);
      context20 = [(HMHome *)v222 context];
      queue19 = [context20 queue];
      v442[0] = MEMORY[0x1E69E9820];
      v442[1] = 3221225472;
      v442[2] = __29__HMHome_mergeFromNewObject___block_invoke_946;
      v442[3] = &unk_1E754DC70;
      v442[4] = v222;
      v443 = v220;
      v444 = isMediaPeerToPeerEnabled;
      dispatch_async(queue19, v442);
    }

    v29 = 1;
  }

  mediaPassword = [v6 mediaPassword];
  mediaPassword2 = [(HMHome *)self mediaPassword];
  v229 = HMFEqualObjects();

  if ((v229 & 1) == 0)
  {
    v230 = objc_autoreleasePoolPush();
    selfCopy16 = self;
    v232 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
    {
      v233 = HMFGetLogIdentifier();
      *buf = 138543618;
      v480 = v233;
      v481 = 2112;
      *v482 = mediaPassword;
      _os_log_impl(&dword_19BB39000, v232, OS_LOG_TYPE_DEFAULT, "%{public}@Updating media password to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v230);
    [(HMHome *)selfCopy16 setMediaPassword:mediaPassword];
    delegate5 = [(HMHome *)selfCopy16 delegate];
    if ([delegate5 conformsToProtocol:&unk_1F0F63B38])
    {
      v235 = delegate5;
    }

    else
    {
      v235 = 0;
    }

    v236 = v235;

    if (objc_opt_respondsToSelector())
    {
      v237 = objc_autoreleasePoolPush();
      v238 = selfCopy16;
      v239 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
      {
        v240 = HMFGetLogIdentifier();
        *buf = 138543618;
        v480 = v240;
        v481 = 2112;
        *v482 = v236;
        _os_log_impl(&dword_19BB39000, v239, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated media password using delegate: %@", buf, 0x16u);

        _privateDelegate10 = v409;
      }

      objc_autoreleasePoolPop(v237);
      context21 = [(HMHome *)v238 context];
      queue20 = [context21 queue];
      v439[0] = MEMORY[0x1E69E9820];
      v439[1] = 3221225472;
      v439[2] = __29__HMHome_mergeFromNewObject___block_invoke_949;
      v439[3] = &unk_1E754E5E8;
      v439[4] = v238;
      v440 = v236;
      v441 = mediaPassword;
      dispatch_async(queue20, v439);
    }

    v29 = 1;
  }

  protectionMode = [v6 protectionMode];
  if (protectionMode != [(HMHome *)self protectionMode])
  {
    -[HMHome setProtectionMode:](self, "setProtectionMode:", [v6 protectionMode]);
    if (objc_opt_respondsToSelector())
    {
      context22 = [(HMHome *)self context];
      queue21 = [context22 queue];
      v437[0] = MEMORY[0x1E69E9820];
      v437[1] = 3221225472;
      v437[2] = __29__HMHome_mergeFromNewObject___block_invoke_3_952;
      v437[3] = &unk_1E754E5C0;
      v437[4] = self;
      v438 = _privateDelegate10;
      dispatch_async(queue21, v437);
    }

    v29 = 1;
  }

  networkRouterSupportDisableReason = [v6 networkRouterSupportDisableReason];
  if (networkRouterSupportDisableReason != [(HMHome *)self networkRouterSupportDisableReason])
  {
    -[HMHome setNetworkRouterSupportDisableReason:](self, "setNetworkRouterSupportDisableReason:", [v6 networkRouterSupportDisableReason]);
    networkRouterSupportDisableReason2 = [(HMHome *)self networkRouterSupportDisableReason];
    v248 = ((networkRouterSupportDisableReason2 << 60) >> 63) & 3;
    if ((networkRouterSupportDisableReason2 & 7) != 0)
    {
      v248 = 7;
    }

    v249 = v248 | (networkRouterSupportDisableReason2 >> 3) & 2;
    if ([(HMHome *)self networkRouterSupport]!= v249)
    {
      [(HMHome *)self setNetworkRouterSupport:v249];
      context23 = [(HMHome *)self context];
      queue22 = [context23 queue];
      v436[0] = MEMORY[0x1E69E9820];
      v436[1] = 3221225472;
      v436[2] = __29__HMHome_mergeFromNewObject___block_invoke_5_954;
      v436[3] = &unk_1E754E2A8;
      v436[4] = self;
      dispatch_async(queue22, v436);
    }

    v29 = 1;
  }

  supportedFeatures = [v6 supportedFeatures];
  supportedFeatures2 = [(HMHome *)self supportedFeatures];
  v254 = [supportedFeatures isEqualToSet:supportedFeatures2];

  if ((v254 & 1) == 0)
  {
    [(HMHome *)self setSupportedFeatures:supportedFeatures];
    context24 = [(HMHome *)self context];
    queue23 = [context24 queue];
    v435[0] = MEMORY[0x1E69E9820];
    v435[1] = 3221225472;
    v435[2] = __29__HMHome_mergeFromNewObject___block_invoke_6_955;
    v435[3] = &unk_1E754E2A8;
    v435[4] = self;
    dispatch_async(queue23, v435);

    v29 = 1;
  }

  v406 = supportedFeatures;
  personManagerSettings = [(HMHome *)self personManagerSettings];
  personManagerSettings2 = [v6 personManagerSettings];
  if (![personManagerSettings isEqual:personManagerSettings2])
  {

    goto LABEL_170;
  }

  personManagerZoneUUID = [(HMHome *)self personManagerZoneUUID];
  personManagerZoneUUID2 = [v6 personManagerZoneUUID];
  v261 = HMFEqualObjects();

  if ((v261 & 1) == 0)
  {
LABEL_170:
    v262 = objc_autoreleasePoolPush();
    selfCopy17 = self;
    v264 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
    {
      v265 = HMFGetLogIdentifier();
      personManagerSettings3 = [(HMHome *)selfCopy17 personManagerSettings];
      personManagerSettings4 = [v6 personManagerSettings];
      personManagerZoneUUID3 = [(HMHome *)selfCopy17 personManagerZoneUUID];
      personManagerZoneUUID4 = [v6 personManagerZoneUUID];
      *buf = 138544386;
      v480 = v265;
      v481 = 2112;
      *v482 = personManagerSettings3;
      *&v482[8] = 2112;
      v483 = personManagerSettings4;
      v484 = 2112;
      v485 = personManagerZoneUUID3;
      v486 = 2112;
      v487 = personManagerZoneUUID4;
      _os_log_impl(&dword_19BB39000, v264, OS_LOG_TYPE_INFO, "%{public}@Person manager settings updated from %@ to %@, zone UUID updated from %@ to %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v262);
    personManagerSettings5 = [v6 personManagerSettings];
    [(HMHome *)selfCopy17 setPersonManagerSettings:personManagerSettings5];

    personManagerZoneUUID5 = [v6 personManagerZoneUUID];
    [(HMHome *)selfCopy17 setPersonManagerZoneUUID:personManagerZoneUUID5];

    [(HMHome *)selfCopy17 configurePersonManager];
    if (objc_opt_respondsToSelector())
    {
      context25 = [(HMHome *)selfCopy17 context];
      queue24 = [context25 queue];
      v433[0] = MEMORY[0x1E69E9820];
      v433[1] = 3221225472;
      v433[2] = __29__HMHome_mergeFromNewObject___block_invoke_957;
      v433[3] = &unk_1E754E5C0;
      v433[4] = selfCopy17;
      v434 = v409;
      dispatch_async(queue24, v433);
    }

    v29 = 1;
  }

  supportedSiriEndPointVersion = [(HMHome *)self supportedSiriEndPointVersion];
  supportedSiriEndPointVersion2 = [v6 supportedSiriEndPointVersion];
  v276 = [supportedSiriEndPointVersion isEqualToVersion:supportedSiriEndPointVersion2];

  if ((v276 & 1) == 0)
  {
    supportedSiriEndPointVersion3 = [v6 supportedSiriEndPointVersion];
    [(HMHome *)self setSupportedSiriEndPointVersion:supportedSiriEndPointVersion3];

    v29 = 1;
  }

  areBulletinNotificationsSupported = [(HMHome *)self areBulletinNotificationsSupported];
  v279 = v409;
  if (areBulletinNotificationsSupported != [v6 areBulletinNotificationsSupported])
  {
    v280 = objc_autoreleasePoolPush();
    selfCopy18 = self;
    v282 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v282, OS_LOG_TYPE_INFO))
    {
      v283 = HMFGetLogIdentifier();
      [(HMHome *)selfCopy18 areBulletinNotificationsSupported];
      v284 = HMFBooleanToString();
      [v6 areBulletinNotificationsSupported];
      v285 = HMFBooleanToString();
      *buf = 138543874;
      v480 = v283;
      v481 = 2112;
      *v482 = v284;
      *&v482[8] = 2112;
      v483 = v285;
      _os_log_impl(&dword_19BB39000, v282, OS_LOG_TYPE_INFO, "%{public}@Bulletin notifications supported updated from %@ to %@", buf, 0x20u);

      v279 = v409;
    }

    objc_autoreleasePoolPop(v280);
    -[HMHome setBulletinNotificationsSupported:](selfCopy18, "setBulletinNotificationsSupported:", [v6 areBulletinNotificationsSupported]);
    if (objc_opt_respondsToSelector())
    {
      context26 = [(HMHome *)selfCopy18 context];
      queue25 = [context26 queue];
      v431[0] = MEMORY[0x1E69E9820];
      v431[1] = 3221225472;
      v431[2] = __29__HMHome_mergeFromNewObject___block_invoke_960;
      v431[3] = &unk_1E754E5C0;
      v431[4] = selfCopy18;
      v432 = v279;
      dispatch_async(queue25, v431);
    }

    v29 = 1;
  }

  didOnboardEventLog = [(HMHome *)self didOnboardEventLog];
  if (didOnboardEventLog != [v6 didOnboardEventLog])
  {
    v289 = objc_autoreleasePoolPush();
    selfCopy19 = self;
    v291 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v291, OS_LOG_TYPE_INFO))
    {
      v292 = HMFGetLogIdentifier();
      [(HMHome *)selfCopy19 didOnboardEventLog];
      v293 = HMFBooleanToString();
      [v6 didOnboardEventLog];
      v294 = HMFBooleanToString();
      *buf = 138543874;
      v480 = v292;
      v481 = 2112;
      *v482 = v293;
      *&v482[8] = 2112;
      v483 = v294;
      _os_log_impl(&dword_19BB39000, v291, OS_LOG_TYPE_INFO, "%{public}@Activity history onboarding changed from %@ to %@", buf, 0x20u);

      v279 = v409;
    }

    objc_autoreleasePoolPop(v289);
    -[HMHome setDidOnboardEventLog:](selfCopy19, "setDidOnboardEventLog:", [v6 didOnboardEventLog]);
    if ([v6 didOnboardEventLog])
    {
      [(HMHome *)selfCopy19 _callDelegateDidOnboardEventLog];
    }

    v29 = 1;
  }

  isEventLogEnabled = [(HMHome *)self isEventLogEnabled];
  if (isEventLogEnabled != [v6 isEventLogEnabled])
  {
    v296 = objc_autoreleasePoolPush();
    selfCopy20 = self;
    v298 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
    {
      v299 = HMFGetLogIdentifier();
      isEventLogEnabled2 = [(HMHome *)selfCopy20 isEventLogEnabled];
      isEventLogEnabled3 = [v6 isEventLogEnabled];
      *buf = 138543874;
      v480 = v299;
      v481 = 1024;
      *v482 = isEventLogEnabled2;
      *&v482[4] = 1024;
      *&v482[6] = isEventLogEnabled3;
      _os_log_impl(&dword_19BB39000, v298, OS_LOG_TYPE_INFO, "%{public}@Activity history home setting enabled changed from %{BOOL}d to %{BOOL}d", buf, 0x18u);
    }

    objc_autoreleasePoolPop(v296);
    -[HMHome setEventLogEnabled:](selfCopy20, "setEventLogEnabled:", [v6 isEventLogEnabled]);
    [(HMHome *)selfCopy20 _callDelegateDidUpdateEventLogEnabled];
    v29 = 1;
  }

  eventLogDuration = [(HMHome *)self eventLogDuration];
  if (eventLogDuration != [v6 eventLogDuration])
  {
    v303 = objc_autoreleasePoolPush();
    selfCopy21 = self;
    v305 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v305, OS_LOG_TYPE_INFO))
    {
      v306 = HMFGetLogIdentifier();
      eventLogDuration2 = [(HMHome *)selfCopy21 eventLogDuration];
      eventLogDuration3 = [v6 eventLogDuration];
      *buf = 138543874;
      v480 = v306;
      v481 = 2048;
      *v482 = eventLogDuration2;
      *&v482[8] = 2048;
      v483 = eventLogDuration3;
      _os_log_impl(&dword_19BB39000, v305, OS_LOG_TYPE_INFO, "%{public}@Activity history duration changed from %lu to %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v303);
    -[HMHome setEventLogDuration:](selfCopy21, "setEventLogDuration:", [v6 eventLogDuration]);
    if (objc_opt_respondsToSelector())
    {
      context27 = [(HMHome *)selfCopy21 context];
      v310 = context27;
      if (context27)
      {
        queue26 = [context27 queue];
        v427[0] = MEMORY[0x1E69E9820];
        v427[1] = 3221225472;
        v427[2] = __29__HMHome_mergeFromNewObject___block_invoke_963;
        v427[3] = &unk_1E754E5E8;
        v428 = v310;
        v429 = v279;
        v430 = selfCopy21;
        dispatch_async(queue26, v427);
      }
    }

    v29 = 1;
  }

  timeZone = [(HMHome *)self timeZone];
  timeZone2 = [v6 timeZone];
  v314 = HMFEqualObjects();

  if ((v314 & 1) == 0)
  {
    v315 = objc_autoreleasePoolPush();
    selfCopy22 = self;
    v317 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v317, OS_LOG_TYPE_INFO))
    {
      v318 = HMFGetLogIdentifier();
      timeZone3 = [(HMHome *)selfCopy22 timeZone];
      timeZone4 = [v6 timeZone];
      *buf = 138543874;
      v480 = v318;
      v481 = 2112;
      *v482 = timeZone3;
      *&v482[8] = 2112;
      v483 = timeZone4;
      _os_log_impl(&dword_19BB39000, v317, OS_LOG_TYPE_INFO, "%{public}@Home timeZone changed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v315);
    timeZone5 = [v6 timeZone];
    [(HMHome *)selfCopy22 setTimeZone:timeZone5];

    if (objc_opt_respondsToSelector())
    {
      context28 = [(HMHome *)selfCopy22 context];
      v323 = context28;
      if (context28)
      {
        queue27 = [context28 queue];
        v423[0] = MEMORY[0x1E69E9820];
        v423[1] = 3221225472;
        v423[2] = __29__HMHome_mergeFromNewObject___block_invoke_966;
        v423[3] = &unk_1E754E5E8;
        v424 = v323;
        v425 = v279;
        v426 = selfCopy22;
        dispatch_async(queue27, v423);
      }
    }

    v29 = 1;
  }

  numberOfCameras = [(HMHome *)self numberOfCameras];
  numberOfCameras2 = [v6 numberOfCameras];
  v327 = HMFEqualObjects();

  if ((v327 & 1) == 0)
  {
    v328 = objc_autoreleasePoolPush();
    selfCopy23 = self;
    v330 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v330, OS_LOG_TYPE_INFO))
    {
      v331 = HMFGetLogIdentifier();
      numberOfCameras3 = [(HMHome *)selfCopy23 numberOfCameras];
      unsignedIntValue = [numberOfCameras3 unsignedIntValue];
      numberOfCameras4 = [v6 numberOfCameras];
      unsignedIntValue2 = [numberOfCameras4 unsignedIntValue];
      *buf = 138543874;
      v480 = v331;
      v481 = 1024;
      *v482 = unsignedIntValue;
      *&v482[4] = 1024;
      *&v482[6] = unsignedIntValue2;
      _os_log_impl(&dword_19BB39000, v330, OS_LOG_TYPE_INFO, "%{public}@Home numberOfCameras changed from %u to %u", buf, 0x18u);

      v279 = v409;
    }

    objc_autoreleasePoolPop(v328);
    numberOfCameras5 = [v6 numberOfCameras];
    [(HMHome *)selfCopy23 setNumberOfCameras:numberOfCameras5];

    v29 = 1;
  }

  supportsResidentSelection = [(HMHome *)self supportsResidentSelection];
  if (supportsResidentSelection != [v6 supportsResidentSelection])
  {
    -[HMHome setSupportsResidentSelection:](self, "setSupportsResidentSelection:", [v6 supportsResidentSelection]);
    context29 = [(HMHome *)self context];
    queue28 = [context29 queue];
    v420[0] = MEMORY[0x1E69E9820];
    v420[1] = 3221225472;
    v420[2] = __29__HMHome_mergeFromNewObject___block_invoke_968;
    v420[3] = &unk_1E754E5C0;
    v421 = v279;
    selfCopy24 = self;
    dispatch_async(queue28, v420);

    v29 = 1;
  }

  userSelectedPreferredResident = [(HMHome *)self userSelectedPreferredResident];
  userSelectedPreferredResident2 = [v6 userSelectedPreferredResident];
  v342 = HMFEqualObjects();

  if ((v342 & 1) == 0)
  {
    v343 = objc_autoreleasePoolPush();
    selfCopy25 = self;
    v345 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
    {
      v346 = HMFGetLogIdentifier();
      userSelectedPreferredResident3 = [(HMHome *)selfCopy25 userSelectedPreferredResident];
      userSelectedPreferredResident4 = [v6 userSelectedPreferredResident];
      *buf = 138543874;
      v480 = v346;
      v481 = 2112;
      *v482 = userSelectedPreferredResident3;
      *&v482[8] = 2112;
      v483 = userSelectedPreferredResident4;
      _os_log_impl(&dword_19BB39000, v345, OS_LOG_TYPE_INFO, "%{public}@User selected preferred resident is changing from [%@] to [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v343);
    userSelectedPreferredResident5 = [v6 userSelectedPreferredResident];
    [(HMHome *)selfCopy25 setUserSelectedPreferredResident:userSelectedPreferredResident5];

    context30 = [(HMHome *)selfCopy25 context];
    queue29 = [context30 queue];
    v417[0] = MEMORY[0x1E69E9820];
    v417[1] = 3221225472;
    v417[2] = __29__HMHome_mergeFromNewObject___block_invoke_971;
    v417[3] = &unk_1E754E5C0;
    v418 = v279;
    v419 = selfCopy25;
    dispatch_async(queue29, v417);

    v29 = 1;
  }

  autoSelectedPreferredResidents = [(HMHome *)self autoSelectedPreferredResidents];
  autoSelectedPreferredResidents2 = [v6 autoSelectedPreferredResidents];
  v354 = HMFEqualObjects();

  if ((v354 & 1) == 0)
  {
    v355 = objc_autoreleasePoolPush();
    selfCopy26 = self;
    v357 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
    {
      v358 = HMFGetLogIdentifier();
      autoSelectedPreferredResidents3 = [(HMHome *)selfCopy26 autoSelectedPreferredResidents];
      autoSelectedPreferredResidents4 = [v6 autoSelectedPreferredResidents];
      *buf = 138543874;
      v480 = v358;
      v481 = 2112;
      *v482 = autoSelectedPreferredResidents3;
      *&v482[8] = 2112;
      v483 = autoSelectedPreferredResidents4;
      _os_log_impl(&dword_19BB39000, v357, OS_LOG_TYPE_INFO, "%{public}@auto selected preferred resident is changing from [%@] to [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v355);
    autoSelectedPreferredResidents5 = [v6 autoSelectedPreferredResidents];
    [(HMHome *)selfCopy26 setAutoSelectedPreferredResidents:autoSelectedPreferredResidents5];

    context31 = [(HMHome *)selfCopy26 context];
    queue30 = [context31 queue];
    v414[0] = MEMORY[0x1E69E9820];
    v414[1] = 3221225472;
    v414[2] = __29__HMHome_mergeFromNewObject___block_invoke_974;
    v414[3] = &unk_1E754E5C0;
    v415 = v279;
    v416 = selfCopy26;
    dispatch_async(queue30, v414);

    v29 = 1;
  }

  primaryResidentNetworkInfo = [(HMHome *)self primaryResidentNetworkInfo];
  primaryResidentNetworkInfo2 = [v6 primaryResidentNetworkInfo];
  v366 = HMFEqualObjects();

  if ((v366 & 1) == 0)
  {
    v367 = objc_autoreleasePoolPush();
    selfCopy27 = self;
    v369 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v369, OS_LOG_TYPE_INFO))
    {
      v370 = HMFGetLogIdentifier();
      autoSelectedPreferredResidents6 = [v6 autoSelectedPreferredResidents];
      *buf = 138543618;
      v480 = v370;
      v481 = 2112;
      *v482 = autoSelectedPreferredResidents6;
      _os_log_impl(&dword_19BB39000, v369, OS_LOG_TYPE_INFO, "%{public}@primary resident network info is changing to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v367);
    primaryResidentNetworkInfo3 = [v6 primaryResidentNetworkInfo];
    [(HMHome *)selfCopy27 setPrimaryResidentNetworkInfo:primaryResidentNetworkInfo3];

    context32 = [(HMHome *)selfCopy27 context];
    queue31 = [context32 queue];
    v411[0] = MEMORY[0x1E69E9820];
    v411[1] = 3221225472;
    v411[2] = __29__HMHome_mergeFromNewObject___block_invoke_977;
    v411[3] = &unk_1E754E5C0;
    v412 = v279;
    v413 = selfCopy27;
    dispatch_async(queue31, v411);

    v29 = 1;
  }

  homeLocationStatus = [(HMHome *)self homeLocationStatus];
  if (homeLocationStatus != [v6 homeLocationStatus])
  {
    v376 = objc_autoreleasePoolPush();
    selfCopy28 = self;
    v378 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v378, OS_LOG_TYPE_INFO))
    {
      v379 = HMFGetLogIdentifier();
      homeLocationStatus2 = [(HMHome *)selfCopy28 homeLocationStatus];
      if (homeLocationStatus2 > 3)
      {
        v381 = @"HMHomeLocationAway";
      }

      else
      {
        v381 = off_1E754A260[homeLocationStatus2];
      }

      homeLocationStatus3 = [v6 homeLocationStatus];
      if (homeLocationStatus3 > 3)
      {
        v383 = @"HMHomeLocationAway";
      }

      else
      {
        v383 = off_1E754A260[homeLocationStatus3];
      }

      *buf = 138543874;
      v480 = v379;
      v481 = 2112;
      *v482 = v381;
      *&v482[8] = 2112;
      v483 = v383;
      _os_log_impl(&dword_19BB39000, v378, OS_LOG_TYPE_INFO, "%{public}@Updating home location status from %@ to %@ via merge", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v376);
    -[HMHome setHomeLocationStatus:](selfCopy28, "setHomeLocationStatus:", [v6 homeLocationStatus]);
    context33 = [(HMHome *)selfCopy28 context];
    queue32 = [context33 queue];
    v410[0] = MEMORY[0x1E69E9820];
    v410[1] = 3221225472;
    v410[2] = __29__HMHome_mergeFromNewObject___block_invoke_980;
    v410[3] = &unk_1E754E2A8;
    v410[4] = selfCopy28;
    dispatch_async(queue32, v410);

    v29 = 1;
    v279 = v409;
  }

  isAllowedToEnableAdaptiveTemperatureAutomations = [(HMHome *)self isAllowedToEnableAdaptiveTemperatureAutomations];
  if (isAllowedToEnableAdaptiveTemperatureAutomations != [v6 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v387 = objc_autoreleasePoolPush();
    selfCopy29 = self;
    v389 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v389, OS_LOG_TYPE_INFO))
    {
      v390 = HMFGetLogIdentifier();
      isAllowedToEnableAdaptiveTemperatureAutomations2 = [(HMHome *)selfCopy29 isAllowedToEnableAdaptiveTemperatureAutomations];
      isAllowedToEnableAdaptiveTemperatureAutomations3 = [v6 isAllowedToEnableAdaptiveTemperatureAutomations];
      *buf = 138543874;
      v480 = v390;
      v481 = 1024;
      *v482 = isAllowedToEnableAdaptiveTemperatureAutomations2;
      *&v482[4] = 1024;
      *&v482[6] = isAllowedToEnableAdaptiveTemperatureAutomations3;
      _os_log_impl(&dword_19BB39000, v389, OS_LOG_TYPE_INFO, "%{public}@Updating isAllowedToEnableAdaptiveTemperatureAutomations from %{BOOL}d to %{BOOL}d", buf, 0x18u);
    }

    objc_autoreleasePoolPop(v387);
    -[HMHome setIsAllowedToEnableAdaptiveTemperatureAutomations:](selfCopy29, "setIsAllowedToEnableAdaptiveTemperatureAutomations:", [v6 isAllowedToEnableAdaptiveTemperatureAutomations]);
    v29 = 1;
  }

  v393 = objc_autoreleasePoolPush();
  selfCopy30 = self;
  v395 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v395, OS_LOG_TYPE_INFO))
  {
    v396 = HMFGetLogIdentifier();
    v397 = HMFBooleanToString();
    *buf = 138543618;
    v480 = v396;
    v481 = 2112;
    *v482 = v397;
    _os_log_impl(&dword_19BB39000, v395, OS_LOG_TYPE_INFO, "%{public}@Finished home merge with modified=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v393);
  objectCopy = v407;
LABEL_244:

  return v29 & 1;
}

void __29__HMHome_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_731(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_732;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_735(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_736;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_739(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_740;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_743(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_744;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_745(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_746;
  v4[3] = &unk_1E754E2A8;
  v4[4] = *(a1 + 32);
  [v3 invokeBlock:v4];
}

void __29__HMHome_mergeFromNewObject___block_invoke_749(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_750;
  v4[3] = &unk_1E754E2A8;
  v4[4] = *(a1 + 32);
  [v3 invokeBlock:v4];
}

void __29__HMHome_mergeFromNewObject___block_invoke_753(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_754;
  v4[3] = &unk_1E754E2A8;
  v4[4] = *(a1 + 32);
  [v3 invokeBlock:v4];
}

void __29__HMHome_mergeFromNewObject___block_invoke_765(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_766;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_769(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_770;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_773(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_774;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_777(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_778;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_781(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_782;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_6;
  v6[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_8;
  v6[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_937(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_938;
  v6[3] = &unk_1E754E120;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_946(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_947;
  v6[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_949(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_950;
  v6[3] = &unk_1E754E5E8;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_3_952(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_4_953;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_957(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_958;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_960(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_961;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __29__HMHome_mergeFromNewObject___block_invoke_963(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_964;
  v5[3] = &unk_1E754E5C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 invokeBlock:v5];
}

void __29__HMHome_mergeFromNewObject___block_invoke_966(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_967;
  v5[3] = &unk_1E754E5C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 invokeBlock:v5];
}

void __29__HMHome_mergeFromNewObject___block_invoke_968(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) context];
    v3 = [v2 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_970;
    v6[3] = &unk_1E754E5C0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [v3 invokeBlock:v6];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_971(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) context];
    v3 = [v2 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_973;
    v6[3] = &unk_1E754E5C0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [v3 invokeBlock:v6];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_974(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) context];
    v3 = [v2 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__HMHome_mergeFromNewObject___block_invoke_2_976;
    v6[3] = &unk_1E754E5C0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [v3 invokeBlock:v6];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_977(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated primary resident network info using delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = [*(a1 + 40) context];
    v8 = [v7 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29__HMHome_mergeFromNewObject___block_invoke_979;
    v11[3] = &unk_1E754E5C0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    [v8 invokeBlock:v11];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_2_967(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 timeZone];
  [v1 home:v2 didUpdateTimeZone:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_964(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 eventLogDuration];

  return [v1 home:v2 didUpdateEventLogDuration:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_961(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 areBulletinNotificationsSupported];

  return [v1 home:v2 didUpdateAreBulletinNotificationsSupported:v3];
}

void __29__HMHome_mergeFromNewObject___block_invoke_2_958(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 personManagerSettings];
  [v1 home:v2 didUpdatePersonManagerSettings:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_782(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 dismissedWalletKeyUWBUnlockOnboarding];

  return [v1 home:v2 didUpdateDismissedWalletKeyUWBUnlockOnboarding:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_778(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 hasOnboardedForWalletKey];

  return [v1 home:v2 didUpdateHasOnboardedForWalletKey:v3];
}

void __29__HMHome_mergeFromNewObject___block_invoke_2_754(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _privateDelegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did onboard location services using delegate: %@", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 homeDidOnboardLocationServices:*(a1 + 32)];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_2_750(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _privateDelegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated location services using delegate: %@", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 homeDidEnableLocationServices:*(a1 + 32)];
  }
}

void __29__HMHome_mergeFromNewObject___block_invoke_2_746(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _privateDelegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated Siri phrase options using delegate: %@", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 home:*(a1 + 32) didUpdateSiriPhraseOptions:{objc_msgSend(*(a1 + 32), "siriPhraseOptions")}];
  }
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_744(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 didOnboardAudioAnalysis];

  return [v1 home:v2 didUpdateOnboardAudioAnalysis:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_740(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 audioAnalysisClassifierOptions];

  return [v1 home:v2 didUpdateAudioAnalysisClassifierOptions:v3];
}

uint64_t __29__HMHome_mergeFromNewObject___block_invoke_2_736(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 supportsResidentActionSetStateEvaluation];

  return [v1 home:v2 didUpdateSupportsResidentActionSetStateEvaluation:v3];
}

- (void)recomputeAssistantIdentifiersWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  _privateDelegate = [(HMHome *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying client of assistant identifier update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    delegateCaller = [context delegateCaller];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__HMHome_recomputeAssistantIdentifiersWithCompletion___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v13 = _privateDelegate;
    v14 = selfCopy;
    [delegateCaller invokeBlock:v12];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)assistantIdentifier
{
  uuid = [(HMHome *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"HM", uuid, 0);

  return v3;
}

- (id)createActionSetWithName:(id)name type:(id)type uuid:(id)uuid
{
  uuidCopy = uuid;
  typeCopy = type;
  nameCopy = name;
  v11 = [[HMActionSet alloc] initWithName:nameCopy type:typeCopy uuid:uuidCopy];

  context = [(HMHome *)self context];
  [(HMActionSet *)v11 __configureWithContext:context home:self];

  return v11;
}

- (BOOL)adoptTriggerOwnedActionSet:(id)set
{
  setCopy = set;
  currentTriggerOwnedActionSets = [(HMHome *)self currentTriggerOwnedActionSets];
  v6 = [currentTriggerOwnedActionSets addObjectIfNotPresent:setCopy];

  if (v6)
  {
    context = [(HMHome *)self context];
    [setCopy __configureWithContext:context home:self];
  }

  return v6;
}

- (id)createAndAddActionSetWithName:(id)name type:(id)type uuid:(id)uuid
{
  v6 = [(HMHome *)self createActionSetWithName:name type:type uuid:uuid];
  currentTriggerOwnedActionSets = [(HMHome *)self currentTriggerOwnedActionSets];
  [currentTriggerOwnedActionSets addObject:v6];

  return v6;
}

- (id)accessoryInfoFetch
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessoryInfoFetch;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccessoryInfoFetch:(id)fetch
{
  fetchCopy = fetch;
  os_unfair_lock_lock_with_options();
  accessoryInfoFetch = self->_accessoryInfoFetch;
  self->_accessoryInfoFetch = fetchCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setBulletinNotificationsSupported:(BOOL)supported
{
  os_unfair_lock_lock_with_options();
  self->_bulletinNotificationsSupported = supported;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)areBulletinNotificationsSupported
{
  os_unfair_lock_lock_with_options();
  bulletinNotificationsSupported = self->_bulletinNotificationsSupported;
  os_unfair_lock_unlock(&self->_lock);
  return bulletinNotificationsSupported;
}

- (void)setNetworkRouterSupportDisableReason:(unint64_t)reason
{
  os_unfair_lock_lock_with_options();
  self->_networkRouterSupportDisableReason = reason;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)networkRouterSupportDisableReason
{
  os_unfair_lock_lock_with_options();
  networkRouterSupportDisableReason = self->_networkRouterSupportDisableReason;
  os_unfair_lock_unlock(&self->_lock);
  return networkRouterSupportDisableReason;
}

- (void)setNetworkRouterSupport:(unint64_t)support
{
  os_unfair_lock_lock_with_options();
  self->_networkRouterSupport = support;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)networkRouterSupport
{
  os_unfair_lock_lock_with_options();
  networkRouterSupport = self->_networkRouterSupport;
  os_unfair_lock_unlock(&self->_lock);
  return networkRouterSupport;
}

- (void)setProtectionMode:(int64_t)mode
{
  os_unfair_lock_lock_with_options();
  self->_protectionMode = mode;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)protectionMode
{
  os_unfair_lock_lock_with_options();
  protectionMode = self->_protectionMode;
  os_unfair_lock_unlock(&self->_lock);
  return protectionMode;
}

- (id)targetControllers
{
  v17 = *MEMORY[0x1E69E9840];
  accessories = [(HMHome *)self accessories];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = accessories;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 supportsTargetController])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)controlTargets
{
  v16 = *MEMORY[0x1E69E9840];
  accessories = [(HMHome *)self accessories];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = accessories;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsTargetControl])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)mediaSystems
{
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  mediaSystems = [mediaSystemStageManager mediaSystems];

  return mediaSystems;
}

- (void)stageRemovedMediaSystemUUID:(id)d
{
  dCopy = d;
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  [mediaSystemStageManager stageRemovedMediaSystemUUID:dCopy];
}

- (void)stageAddedMediaSystem:(id)system
{
  systemCopy = system;
  mediaSystemStageManager = [(HMHome *)self mediaSystemStageManager];
  [mediaSystemStageManager stageAddedMediaSystem:systemCopy];
}

- (BOOL)supportsAddingNetworkRouter
{
  supportedFeatures = [(HMHome *)self supportedFeatures];
  v3 = [supportedFeatures containsObject:&unk_1F0EFD088];

  return v3;
}

- (BOOL)_setSupportedFeature:(int64_t)feature enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock_with_options();
  v7 = self->_supportedFeatures;
  v8 = [(NSSet *)v7 mutableCopy];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:feature];
  if (enabledCopy)
  {
    [v8 addObject:v9];
  }

  else
  {
    [v8 removeObject:v9];
  }

  v10 = [(NSSet *)v7 isEqualToSet:v8];
  if (!v10)
  {
    v11 = [v8 copy];
    supportedFeatures = self->_supportedFeatures;
    self->_supportedFeatures = v11;
  }

  os_unfair_lock_unlock(&self->_lock);
  return !v10;
}

- (NSSet)supportedFeatures
{
  os_unfair_lock_lock_with_options();
  v3 = self->_supportedFeatures;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportedFeatures:(id)features
{
  featuresCopy = features;
  os_unfair_lock_lock_with_options();
  v4 = [featuresCopy copy];
  supportedFeatures = self->_supportedFeatures;
  self->_supportedFeatures = v4;

  os_unfair_lock_unlock(&self->_lock);
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

- (void)setCurrentUser:(id)user
{
  userCopy = user;
  os_unfair_lock_lock_with_options();
  currentUser = self->_currentUser;
  self->_currentUser = userCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHomeLocation:(id)location
{
  locationCopy = location;
  os_unfair_lock_lock_with_options();
  homeLocation = self->_homeLocation;
  self->_homeLocation = locationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHomeLocationStatus:(int64_t)status
{
  os_unfair_lock_lock_with_options();
  self->_homeLocationStatus = status;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPrimary:(BOOL)primary
{
  os_unfair_lock_lock_with_options();
  self->_primary = primary;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPrimary
{
  os_unfair_lock_lock_with_options();
  primary = self->_primary;
  os_unfair_lock_unlock(&self->_lock);
  return primary;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)postConfigure
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
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Post-configuring home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [(HMHome *)selfCopy accessories];
  v8 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v13 + 1) + 8 * v11++) postConfigure];
      }

      while (v9 != v11);
      v9 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  mediaSystemStageManager = [(HMHome *)selfCopy mediaSystemStageManager];
  [mediaSystemStageManager postConfigure];
}

- (void)__configureWithContext:(id)context homeManager:(id)manager
{
  v172 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  managerCopy = manager;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    [(HMHome *)selfCopy isLocationServicesEnabled];
    v12 = HMFBooleanToString();
    *buf = 138544130;
    v165 = v11;
    v166 = 2112;
    v167 = selfCopy;
    v168 = 2112;
    v169 = contextCopy;
    v170 = 2112;
    v171 = v12;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring home: %@ with context: %@ location services enabled:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMHome *)selfCopy setContext:contextCopy];
  queue = [contextCopy queue];
  shareWithHomeOwnerOperationQueue = [(HMHome *)selfCopy shareWithHomeOwnerOperationQueue];
  [shareWithHomeOwnerOperationQueue setUnderlyingQueue:queue];

  [(HMHome *)selfCopy setHomeManager:managerCopy];
  configuration = [managerCopy configuration];
  locationAuthorization = [configuration locationAuthorization];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__handleLocationAuthorizationUpdatedNotification_ name:*MEMORY[0x1E69A2998] object:locationAuthorization];

  [locationAuthorization registerObserver:selfCopy];
  if (([locationAuthorization isAuthorized] & 1) == 0)
  {
    [(HMHome *)selfCopy setLocationAuthorization:2];
  }

  roomForEntireHome = [(HMHome(HMRoom) *)selfCopy roomForEntireHome];
  context = [(HMHome *)selfCopy context];
  [roomForEntireHome __configureWithContext:context home:selfCopy];

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  accessories = [(HMHome *)selfCopy accessories];
  v21 = [accessories countByEnumeratingWithState:&v148 objects:v163 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v149;
    do
    {
      v24 = 0;
      do
      {
        if (*v149 != v23)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v148 + 1) + 8 * v24++) __configureWithContext:contextCopy home:selfCopy];
      }

      while (v22 != v24);
      v22 = [accessories countByEnumeratingWithState:&v148 objects:v163 count:16];
    }

    while (v22);
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  rooms = [(HMHome *)selfCopy rooms];
  v26 = [rooms countByEnumeratingWithState:&v144 objects:v162 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v145;
    do
    {
      v29 = 0;
      do
      {
        if (*v145 != v28)
        {
          objc_enumerationMutation(rooms);
        }

        v30 = *(*(&v144 + 1) + 8 * v29);
        context2 = [(HMHome *)selfCopy context];
        [v30 __configureWithContext:context2 home:selfCopy];

        ++v29;
      }

      while (v27 != v29);
      v27 = [rooms countByEnumeratingWithState:&v144 objects:v162 count:16];
    }

    while (v27);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  zones = [(HMHome *)selfCopy zones];
  v33 = [zones countByEnumeratingWithState:&v140 objects:v161 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v141;
    do
    {
      v36 = 0;
      do
      {
        if (*v141 != v35)
        {
          objc_enumerationMutation(zones);
        }

        v37 = *(*(&v140 + 1) + 8 * v36);
        context3 = [(HMHome *)selfCopy context];
        [v37 __configureWithContext:context3 home:selfCopy];

        ++v36;
      }

      while (v34 != v36);
      v34 = [zones countByEnumeratingWithState:&v140 objects:v161 count:16];
    }

    while (v34);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  serviceGroups = [(HMHome *)selfCopy serviceGroups];
  v40 = [serviceGroups countByEnumeratingWithState:&v136 objects:v160 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v137;
    do
    {
      v43 = 0;
      do
      {
        if (*v137 != v42)
        {
          objc_enumerationMutation(serviceGroups);
        }

        v44 = *(*(&v136 + 1) + 8 * v43);
        context4 = [(HMHome *)selfCopy context];
        [v44 __configureWithContext:context4 home:selfCopy];

        ++v43;
      }

      while (v41 != v43);
      v41 = [serviceGroups countByEnumeratingWithState:&v136 objects:v160 count:16];
    }

    while (v41);
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  actionSets = [(HMHome *)selfCopy actionSets];
  v47 = [actionSets countByEnumeratingWithState:&v132 objects:v159 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v133;
    do
    {
      v50 = 0;
      do
      {
        if (*v133 != v49)
        {
          objc_enumerationMutation(actionSets);
        }

        v51 = *(*(&v132 + 1) + 8 * v50);
        context5 = [(HMHome *)selfCopy context];
        [v51 __configureWithContext:context5 home:selfCopy];

        ++v50;
      }

      while (v48 != v50);
      v48 = [actionSets countByEnumeratingWithState:&v132 objects:v159 count:16];
    }

    while (v48);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  triggerOwnedActionSets = [(HMHome *)selfCopy triggerOwnedActionSets];
  v54 = [triggerOwnedActionSets countByEnumeratingWithState:&v128 objects:v158 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v129;
    do
    {
      v57 = 0;
      do
      {
        if (*v129 != v56)
        {
          objc_enumerationMutation(triggerOwnedActionSets);
        }

        v58 = *(*(&v128 + 1) + 8 * v57);
        context6 = [(HMHome *)selfCopy context];
        [v58 __configureWithContext:context6 home:selfCopy];

        ++v57;
      }

      while (v55 != v57);
      v55 = [triggerOwnedActionSets countByEnumeratingWithState:&v128 objects:v158 count:16];
    }

    while (v55);
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  currentUsers = [(HMHome *)selfCopy currentUsers];
  array = [currentUsers array];

  v62 = [array countByEnumeratingWithState:&v124 objects:v157 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v125;
    do
    {
      v65 = 0;
      do
      {
        if (*v125 != v64)
        {
          objc_enumerationMutation(array);
        }

        v66 = *(*(&v124 + 1) + 8 * v65);
        context7 = [(HMHome *)selfCopy context];
        [v66 __configureWithContext:context7 home:selfCopy];

        ++v65;
      }

      while (v63 != v65);
      v63 = [array countByEnumeratingWithState:&v124 objects:v157 count:16];
    }

    while (v63);
  }

  currentUser = selfCopy->_currentUser;
  context8 = [(HMHome *)selfCopy context];
  [(HMUser *)currentUser __configureWithContext:context8 home:selfCopy];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  triggers = [(HMHome *)selfCopy triggers];
  v71 = [triggers countByEnumeratingWithState:&v120 objects:v156 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v121;
    do
    {
      v74 = 0;
      do
      {
        if (*v121 != v73)
        {
          objc_enumerationMutation(triggers);
        }

        v75 = *(*(&v120 + 1) + 8 * v74);
        context9 = [(HMHome *)selfCopy context];
        [v75 __configureWithContext:context9 home:selfCopy];

        ++v74;
      }

      while (v72 != v74);
      v72 = [triggers countByEnumeratingWithState:&v120 objects:v156 count:16];
    }

    while (v72);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  currentResidentDevices = [(HMHome *)selfCopy currentResidentDevices];
  array2 = [currentResidentDevices array];

  v79 = [array2 countByEnumeratingWithState:&v116 objects:v155 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v117;
    do
    {
      v82 = 0;
      do
      {
        if (*v117 != v81)
        {
          objc_enumerationMutation(array2);
        }

        v83 = *(*(&v116 + 1) + 8 * v82);
        context10 = [(HMHome *)selfCopy context];
        [v83 __configureWithContext:context10 home:selfCopy];

        ++v82;
      }

      while (v80 != v82);
      v80 = [array2 countByEnumeratingWithState:&v116 objects:v155 count:16];
    }

    while (v80);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  outgoingInvitations = [(HMHome *)selfCopy outgoingInvitations];
  v86 = [outgoingInvitations countByEnumeratingWithState:&v112 objects:v154 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v113;
    do
    {
      v89 = 0;
      do
      {
        if (*v113 != v88)
        {
          objc_enumerationMutation(outgoingInvitations);
        }

        v90 = *(*(&v112 + 1) + 8 * v89);
        context11 = [(HMHome *)selfCopy context];
        [v90 __configureWithContext:context11 home:selfCopy];

        ++v89;
      }

      while (v87 != v89);
      v87 = [outgoingInvitations countByEnumeratingWithState:&v112 objects:v154 count:16];
    }

    while (v87);
  }

  mediaSystemStageManager = [(HMHome *)selfCopy mediaSystemStageManager];
  context12 = [(HMHome *)selfCopy context];
  [mediaSystemStageManager configureWithHome:selfCopy context:context12];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  accessoryProtectionGroups = [(HMHome *)selfCopy accessoryProtectionGroups];
  v95 = [accessoryProtectionGroups countByEnumeratingWithState:&v108 objects:v153 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v109;
    do
    {
      v98 = 0;
      do
      {
        if (*v109 != v97)
        {
          objc_enumerationMutation(accessoryProtectionGroups);
        }

        [*(*(&v108 + 1) + 8 * v98++) _configureWithHome:selfCopy];
      }

      while (v96 != v98);
      v96 = [accessoryProtectionGroups countByEnumeratingWithState:&v108 objects:v153 count:16];
    }

    while (v96);
  }

  [(HMHome *)selfCopy _registerNotificationHandlers];
  [(HMHome *)selfCopy configurePresenceSubscriptions];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  homeActivityStateSchedules = [(HMHome *)selfCopy homeActivityStateSchedules];
  v100 = [homeActivityStateSchedules countByEnumeratingWithState:&v104 objects:v152 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v105;
    do
    {
      v103 = 0;
      do
      {
        if (*v105 != v102)
        {
          objc_enumerationMutation(homeActivityStateSchedules);
        }

        [*(*(&v104 + 1) + 8 * v103++) configureWithContext:contextCopy];
      }

      while (v101 != v103);
      v101 = [homeActivityStateSchedules countByEnumeratingWithState:&v104 objects:v152 count:16];
    }

    while (v101);
  }

  [(HMHome *)selfCopy configurePersonManager];
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    name = self->_name;
    uuid = self->_uuid;
    *buf = 138544130;
    v10 = v5;
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = uuid;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMHome(name=%@, uuid=%@); %p", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = self;
  v8.super_class = HMHome;
  [(HMHome *)&v8 dealloc];
}

- (void)unconfigure
{
  v12 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  queue = [context queue];

  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__HMHome_unconfigure__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Attempted to unconfigure already unconfigured home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_unconfigure
{
  v116 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    name = [(HMHome *)selfCopy name];
    *buf = 138543618;
    v113 = v6;
    v114 = 2112;
    v115 = name;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring home [%@] and its child objects", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  rooms = [(HMHome *)selfCopy rooms];
  v9 = [rooms countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v100;
    do
    {
      v12 = 0;
      do
      {
        if (*v100 != v11)
        {
          objc_enumerationMutation(rooms);
        }

        [*(*(&v99 + 1) + 8 * v12++) _unconfigure];
      }

      while (v10 != v12);
      v10 = [rooms countByEnumeratingWithState:&v99 objects:v111 count:16];
    }

    while (v10);
  }

  currentRooms = [(HMHome *)selfCopy currentRooms];
  [currentRooms setArray:0];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  zones = [(HMHome *)selfCopy zones];
  v15 = [zones countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v96;
    do
    {
      v18 = 0;
      do
      {
        if (*v96 != v17)
        {
          objc_enumerationMutation(zones);
        }

        [*(*(&v95 + 1) + 8 * v18++) _unconfigure];
      }

      while (v16 != v18);
      v16 = [zones countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v16);
  }

  currentZones = [(HMHome *)selfCopy currentZones];
  [currentZones setArray:0];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  actionSets = [(HMHome *)selfCopy actionSets];
  v21 = [actionSets countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v92;
    do
    {
      v24 = 0;
      do
      {
        if (*v92 != v23)
        {
          objc_enumerationMutation(actionSets);
        }

        [*(*(&v91 + 1) + 8 * v24++) _unconfigure];
      }

      while (v22 != v24);
      v22 = [actionSets countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v22);
  }

  currentActionSets = [(HMHome *)selfCopy currentActionSets];
  [currentActionSets setArray:0];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  triggerOwnedActionSets = [(HMHome *)selfCopy triggerOwnedActionSets];
  v27 = [triggerOwnedActionSets countByEnumeratingWithState:&v87 objects:v108 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v88;
    do
    {
      v30 = 0;
      do
      {
        if (*v88 != v29)
        {
          objc_enumerationMutation(triggerOwnedActionSets);
        }

        [*(*(&v87 + 1) + 8 * v30++) _unconfigure];
      }

      while (v28 != v30);
      v28 = [triggerOwnedActionSets countByEnumeratingWithState:&v87 objects:v108 count:16];
    }

    while (v28);
  }

  currentTriggerOwnedActionSets = [(HMHome *)selfCopy currentTriggerOwnedActionSets];
  [currentTriggerOwnedActionSets setArray:0];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  triggers = [(HMHome *)selfCopy triggers];
  v33 = [triggers countByEnumeratingWithState:&v83 objects:v107 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v84;
    do
    {
      v36 = 0;
      do
      {
        if (*v84 != v35)
        {
          objc_enumerationMutation(triggers);
        }

        [*(*(&v83 + 1) + 8 * v36++) _unconfigure];
      }

      while (v34 != v36);
      v34 = [triggers countByEnumeratingWithState:&v83 objects:v107 count:16];
    }

    while (v34);
  }

  currentTriggers = [(HMHome *)selfCopy currentTriggers];
  [currentTriggers setArray:0];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  serviceGroups = [(HMHome *)selfCopy serviceGroups];
  v39 = [serviceGroups countByEnumeratingWithState:&v79 objects:v106 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v80;
    do
    {
      v42 = 0;
      do
      {
        if (*v80 != v41)
        {
          objc_enumerationMutation(serviceGroups);
        }

        [*(*(&v79 + 1) + 8 * v42++) _unconfigure];
      }

      while (v40 != v42);
      v40 = [serviceGroups countByEnumeratingWithState:&v79 objects:v106 count:16];
    }

    while (v40);
  }

  currentServiceGroups = [(HMHome *)selfCopy currentServiceGroups];
  [currentServiceGroups setArray:0];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  accessories = [(HMHome *)selfCopy accessories];
  v45 = [accessories countByEnumeratingWithState:&v75 objects:v105 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v76;
    do
    {
      v48 = 0;
      do
      {
        if (*v76 != v47)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v75 + 1) + 8 * v48++) _unconfigure];
      }

      while (v46 != v48);
      v46 = [accessories countByEnumeratingWithState:&v75 objects:v105 count:16];
    }

    while (v46);
  }

  currentAccessories = [(HMHome *)selfCopy currentAccessories];
  [currentAccessories setArray:0];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  users = [(HMHome *)selfCopy users];
  v51 = [users countByEnumeratingWithState:&v71 objects:v104 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v72;
    do
    {
      v54 = 0;
      do
      {
        if (*v72 != v53)
        {
          objc_enumerationMutation(users);
        }

        [*(*(&v71 + 1) + 8 * v54++) _unconfigure];
      }

      while (v52 != v54);
      v52 = [users countByEnumeratingWithState:&v71 objects:v104 count:16];
    }

    while (v52);
  }

  currentUsers = [(HMHome *)selfCopy currentUsers];
  [currentUsers setArray:0];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  residentDevices = [(HMHome *)selfCopy residentDevices];
  v57 = [residentDevices countByEnumeratingWithState:&v67 objects:v103 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v68;
    do
    {
      v60 = 0;
      do
      {
        if (*v68 != v59)
        {
          objc_enumerationMutation(residentDevices);
        }

        [*(*(&v67 + 1) + 8 * v60++) _unconfigure];
      }

      while (v58 != v60);
      v58 = [residentDevices countByEnumeratingWithState:&v67 objects:v103 count:16];
    }

    while (v58);
  }

  currentResidentDevices = [(HMHome *)selfCopy currentResidentDevices];
  [currentResidentDevices setArray:0];

  mediaSystemStageManager = [(HMHome *)selfCopy mediaSystemStageManager];
  [mediaSystemStageManager unconfigure];

  accessCodeManager = [(HMHome *)selfCopy accessCodeManager];
  [accessCodeManager unconfigure];

  [(HMHome *)selfCopy setHomeManager:0];
  context = [(HMHome *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  [(HMHome *)selfCopy setContext:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
}

- (HMHome)initWithName:(id)name uuid:(id)uuid accessories:(id)accessories mediaSystems:(id)systems
{
  nameCopy = name;
  uuidCopy = uuid;
  accessoriesCopy = accessories;
  systemsCopy = systems;
  if (uuidCopy)
  {
    v14 = systemsCopy;
    v62.receiver = self;
    v62.super_class = HMHome;
    v15 = [(HMHome *)&v62 init];
    if (v15)
    {
      v16 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
      name = v15->_name;
      v15->_name = v16;

      v18 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
      uuid = v15->_uuid;
      v15->_uuid = v18;

      v20 = [HMMutableArray arrayWithArray:accessoriesCopy];
      currentAccessories = v15->_currentAccessories;
      v15->_currentAccessories = v20;

      v22 = +[HMMutableArray array];
      currentRooms = v15->_currentRooms;
      v15->_currentRooms = v22;

      v24 = +[HMMutableArray array];
      currentZones = v15->_currentZones;
      v15->_currentZones = v24;

      v26 = +[HMMutableArray array];
      currentServiceGroups = v15->_currentServiceGroups;
      v15->_currentServiceGroups = v26;

      v28 = +[HMMutableArray array];
      currentActionSets = v15->_currentActionSets;
      v15->_currentActionSets = v28;

      v30 = +[HMMutableArray array];
      currentTriggerOwnedActionSets = v15->_currentTriggerOwnedActionSets;
      v15->_currentTriggerOwnedActionSets = v30;

      v32 = +[HMMutableArray array];
      currentTriggers = v15->_currentTriggers;
      v15->_currentTriggers = v32;

      v34 = +[HMMutableArray array];
      currentUsers = v15->_currentUsers;
      v15->_currentUsers = v34;

      v36 = +[HMMutableArray array];
      currentResidentDevices = v15->_currentResidentDevices;
      v15->_currentResidentDevices = v36;

      v38 = +[HMMutableArray array];
      currentOutgoingInvitations = v15->_currentOutgoingInvitations;
      v15->_currentOutgoingInvitations = v38;

      v40 = [[HMMediaSystemStageManager alloc] initWithIdentifier:v15->_uuid mediaSystems:v14];
      mediaSystemStageManager = v15->_mediaSystemStageManager;
      v15->_mediaSystemStageManager = v40;

      [(HMMediaSystemStageManager *)v15->_mediaSystemStageManager setDataSource:v15];
      v15->_locationAuthorization = 1;
      v42 = objc_alloc_init(HMApplicationData);
      applicationData = v15->_applicationData;
      v15->_applicationData = v42;

      v15->_homeLocationStatus = 0;
      v44 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      shareWithHomeOwnerOperationQueue = v15->_shareWithHomeOwnerOperationQueue;
      v15->_shareWithHomeOwnerOperationQueue = v44;

      [(NSOperationQueue *)v15->_shareWithHomeOwnerOperationQueue setMaxConcurrentOperationCount:1];
      v15->_networkRouterSupport = 0;
      v15->_networkRouterSupportDisableReason = 0;
      v46 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F0EFD088];
      supportedFeatures = v15->_supportedFeatures;
      v15->_supportedFeatures = v46;

      v48 = +[HMMutableArray array];
      currentAccessoryProtectionGroups = v15->_currentAccessoryProtectionGroups;
      v15->_currentAccessoryProtectionGroups = v48;

      managedTriggers = v15->_managedTriggers;
      v15->_managedTriggers = MEMORY[0x1E695E0F0];

      v51 = [MEMORY[0x1E695DFD8] set];
      homeActivityStateSchedules = v15->_homeActivityStateSchedules;
      v15->_homeActivityStateSchedules = v51;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      hmModernMessagingRequestHandlersByMessageName = v15->_hmModernMessagingRequestHandlersByMessageName;
      v15->_hmModernMessagingRequestHandlersByMessageName = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      hmModernMessagingOptionsByMessageName = v15->_hmModernMessagingOptionsByMessageName;
      v15->_hmModernMessagingOptionsByMessageName = dictionary2;
    }

    return v15;
  }

  else
  {
    v58 = _HMFPreconditionFailure();
    return [(HMHome *)v58 initWithName:v59 uuid:v60, v61];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t365 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t365, &__block_literal_global_1228);
  }

  v3 = logCategory__hmf_once_v366;

  return v3;
}

uint64_t __21__HMHome_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v366;
  logCategory__hmf_once_v366 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)fetchTriggerNameForTriggerIdentifier:(id)identifier completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!context)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v20;
      v42 = 2080;
      v43 = "[HMHome(Trigger) fetchTriggerNameForTriggerIdentifier:completionHandler:]";
      v21 = "%{public}@Nil context - %s";
      v22 = v19;
      v23 = 22;
LABEL_9:
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }

LABEL_10:

    objc_autoreleasePoolPop(v17);
    goto LABEL_11;
  }

  if (!handlerCopy)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v20;
      v21 = "%{public}@completionHandler is required.";
      v22 = v19;
      v23 = 12;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (identifierCopy)
  {
    v9 = MEMORY[0x1E69A2A10];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v12 = [v10 initWithTarget:uuid];
    v38 = @"triggerUUID";
    v39 = identifierCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v14 = [v9 messageWithName:@"HMHomeFetchTriggerNameMessage" destination:v12 payload:v13];

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2;
    v32 = &unk_1E754E480;
    selfCopy3 = self;
    v35 = handlerCopy;
    v15 = context;
    v34 = v15;
    [v14 setResponseHandler:&v29];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14 completionHandler:0];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@trigger identifier is required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    delegateCaller = [context delegateCaller];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke;
    v36[3] = &unk_1E754E430;
    v37 = handlerCopy;
    [delegateCaller invokeBlock:v36];
  }

LABEL_11:
}

void __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    v3[2](v3, 0, v2);

    v1 = v3;
  }
}

void __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = _Block_copy(*(a1 + 48));
    *buf = 138544130;
    v25 = v10;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetch trigger name response : %@, completionHandler: %@ error %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = [*(a1 + 40) delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2302;
    v21[3] = &unk_1E754E458;
    v23 = *(a1 + 48);
    v22 = v5;
    [v12 invokeBlock:v21];

    v13 = v23;
  }

  else
  {
    v13 = [v6 hmf_stringForKey:@"kTriggerName"];
    v14 = [*(a1 + 40) delegateCaller];
    if (v13)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_3;
      v16[3] = &unk_1E754E458;
      v15 = &v18;
      v18 = *(a1 + 48);
      v17 = v13;
      [v14 invokeBlock:v16];

      v14 = v17;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2_2303;
      v19[3] = &unk_1E754E430;
      v15 = &v20;
      v20 = *(a1 + 48);
      [v14 invokeBlock:v19];
    }
  }
}

void __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2302(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0, *(a1 + 32));
    v2 = v3;
  }
}

void __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_2_2303(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2035];
    v3[2](v3, 0, v2);

    v1 = v3;
  }
}

void __74__HMHome_Trigger__fetchTriggerNameForTriggerIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 0);
    v2 = v3;
  }
}

- (void)resolveThreadNetworkCredentialsWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (!completionCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(ThreadManagement) resolveThreadNetworkCredentialsWithCompletion:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = context;
  if (context)
  {
    context2 = [(HMHome *)self context];

    if (context2)
    {
      queue = [v6 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__HMHome_ThreadManagement__resolveThreadNetworkCredentialsWithCompletion___block_invoke;
      block[3] = &unk_1E754E0F8;
      block[4] = self;
      v22 = completionCopy;
      v21 = v6;
      dispatch_async(queue, block);
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      (*(completionCopy + 2))(completionCopy, v13, 0);
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
      *buf = 138543618;
      v24 = v12;
      v25 = 2080;
      v26 = "[HMHome(ThreadManagement) resolveThreadNetworkCredentialsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __74__HMHome_ThreadManagement__resolveThreadNetworkCredentialsWithCompletion___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69A2A10];
  v3 = [a1[4] messageDestination];
  v4 = [v2 messageWithName:@"HM.rtn" destination:v3 payload:0];

  objc_initWeak(&location, a1[4]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__HMHome_ThreadManagement__resolveThreadNetworkCredentialsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E754CFF8;
  objc_copyWeak(&v8, &location);
  v7 = a1[6];
  [v4 setResponseHandler:v6];
  v5 = [a1[5] messageDispatcher];
  [v5 sendMessage:v4 completionHandler:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __74__HMHome_ThreadManagement__resolveThreadNetworkCredentialsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    v9 = [WeakRetained context];
    v10 = [v9 delegateCaller];
    [v10 callCompletion:*(a1 + 32) error:v5 obj:0];
  }

  else
  {
    v11 = [v6 hmf_dataForKey:@"threadNetworkCredentials"];
    v23 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v23];
    v13 = v23;
    if (v12)
    {
      v14 = [v8 context];
      v15 = [v14 delegateCaller];
      [v15 callCompletion:*(a1 + 32) error:0 obj:v12];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v19 = v22 = v16;
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode credentials, error: %@", buf, 0x16u);

        v16 = v22;
      }

      objc_autoreleasePoolPop(v16);
      v14 = [v17 context];
      v15 = [v14 delegateCaller];
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v15 callCompletion:v20 error:v21 obj:0];
    }
  }
}

- (NSUUID)threadNetworkCredentialsUUID
{
  threadNetworkID = [(HMHome *)self threadNetworkID];
  if (threadNetworkID)
  {
    v4 = objc_alloc(MEMORY[0x1E696AFB0]);
    threadNetworkID2 = [(HMHome *)self threadNetworkID];
    v6 = [v4 initWithUUIDString:threadNetworkID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)selectPreferredResident:(id)resident requireAutoUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  v41 = *MEMORY[0x1E69E9840];
  residentCopy = resident;
  completionCopy = completion;
  context = [(HMHome *)self context];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v14;
    v37 = 2112;
    v38 = residentCopy;
    v39 = 1024;
    v40 = updateCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Set preferred resident as: %@, requireAutoUpdate: %{BOOL}d", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = MEMORY[0x1E69A29F8];
  messageDestination = [(HMHome *)selfCopy messageDestination];
  if (residentCopy)
  {
    v33[0] = @"HMHomePreferredResidentIDSKey";
    iDSIdentifier = [residentCopy IDSIdentifier];
    v33[1] = @"HMHomeRequireAutoUpdateKey";
    v34[0] = iDSIdentifier;
    v18 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
    v34[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v20 = [v15 messageWithName:@"HM.setPreferredResidentSelection" qualityOfService:25 destination:messageDestination payload:v19];
  }

  else
  {
    v20 = [v15 messageWithName:@"HM.setPreferredResidentSelection" qualityOfService:25 destination:messageDestination payload:0];
  }

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __82__HMHome_ResidentSelection__selectPreferredResident_requireAutoUpdate_completion___block_invoke;
  v28 = &unk_1E754D030;
  v29 = selfCopy;
  v30 = residentCopy;
  v31 = context;
  v32 = completionCopy;
  v21 = completionCopy;
  v22 = context;
  v23 = residentCopy;
  [v20 setResponseHandler:&v25];
  messageDispatcher = [v22 messageDispatcher];
  [messageDispatcher sendMessage:v20];
}

void __82__HMHome_ResidentSelection__selectPreferredResident_requireAutoUpdate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Set preferred resident successful with %@.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setUserSelectedPreferredResident:*(a1 + 40)];
  }

  v12 = [*(a1 + 48) delegateCaller];
  [v12 callCompletion:*(a1 + 56) error:v5];
}

- (void)enableRemoteAccess:(BOOL)access completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v8);
  }

  context = [(HMHome *)self context];
  delegateCaller = [context delegateCaller];
  v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  [delegateCaller callCompletion:handlerCopy error:v7];
}

- (void)queryRemoteAccessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = handlerCopy;
  context = [(HMHome *)self context];
  delegateCaller = [context delegateCaller];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HMHome_RemoteAccess__queryRemoteAccessWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E754E430;
  v11 = v5;
  v8 = v5;
  [delegateCaller invokeBlock:v10];
}

void __63__HMHome_RemoteAccess__queryRemoteAccessWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchPowerAssertionInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!infoCopy)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(PowerAssertionInfo) fetchPowerAssertionInfo:]", @"completion"];
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v21;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
      objc_exception_throw(v22);
    }

    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 messageWithName:@"HM.FetchPowerAssertionsMessage" destination:v9 payload:MEMORY[0x1E695E0F8]];

    objc_initWeak(location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__HMHome_PowerAssertionInfo__fetchPowerAssertionInfo___block_invoke;
    v23[3] = &unk_1E754D058;
    objc_copyWeak(&v26, location);
    v11 = context;
    v24 = v11;
    v25 = infoCopy;
    [v10 setResponseHandler:v23];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v28 = 2080;
      v29 = "[HMHome(PowerAssertionInfo) fetchPowerAssertionInfo:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __54__HMHome_PowerAssertionInfo__fetchPowerAssertionInfo___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v11;
      v24 = 2112;
      v25 = @"HM.FetchPowerAssertionsMessage";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%@ returned an error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__HMHome_PowerAssertionInfo__fetchPowerAssertionInfo___block_invoke_2223;
    v19[3] = &unk_1E754E458;
    v13 = &v21;
    v21 = a1[5];
    v20 = v5;
    [v12 invokeBlock:v19];

    v14 = v20;
  }

  else
  {
    v15 = [v6 hmf_BOOLForKey:@"HM.v"];
    v14 = [a1[4] delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__HMHome_PowerAssertionInfo__fetchPowerAssertionInfo___block_invoke_2;
    v16[3] = &unk_1E754A0B8;
    v13 = &v17;
    v17 = a1[5];
    v18 = v15;
    [v14 invokeBlock:v16];
  }
}

- (void)setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion:(id)version completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(NetworkRouter) setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__HMHome_NetworkRouter__setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v23 = versionCopy;
    selfCopy2 = self;
    v26 = handlerCopy;
    v25 = v9;
    dispatch_async(queue, block);

    v11 = v23;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMHome(NetworkRouter) setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __103__HMHome_NetworkRouter__setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion_completionHandler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v16 = @"kHomedVersionKey";
    v17[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v4 = MEMORY[0x1E69A2A10];
    v5 = [*(a1 + 40) messageDestination];
    v6 = [v4 messageWithName:@"HMHomeInternalSetMinHomeKitVersionForAccessoryNetworkProtectionChangeRequest" destination:v5 payload:v3];

    objc_initWeak(&location, *(a1 + 40));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__HMHome_NetworkRouter__setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion_completionHandler___block_invoke_2;
    v12[3] = &unk_1E754CFF8;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 56);
    [v6 setResponseHandler:v12];
    v7 = [*(a1 + 48) messageDispatcher];
    [v7 sendMessage:v6 completionHandler:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [*(a1 + 40) context];
    v8 = [v11 delegateCaller];
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v8 callCompletion:v9 error:v10];
  }
}

void __103__HMHome_NetworkRouter__setAccessoryNetworkProtectionChangeSupportMinHomeKitVersion_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)setNetworkRouterSupportMinimumHomeKitVersion:(id)version completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(NetworkRouter) setNetworkRouterSupportMinimumHomeKitVersion:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__HMHome_NetworkRouter__setNetworkRouterSupportMinimumHomeKitVersion_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v23 = versionCopy;
    selfCopy2 = self;
    v26 = handlerCopy;
    v25 = v9;
    dispatch_async(queue, block);

    v11 = v23;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMHome(NetworkRouter) setNetworkRouterSupportMinimumHomeKitVersion:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __88__HMHome_NetworkRouter__setNetworkRouterSupportMinimumHomeKitVersion_completionHandler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v16 = @"kHomedVersionKey";
    v17[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v4 = MEMORY[0x1E69A2A10];
    v5 = [*(a1 + 40) messageDestination];
    v6 = [v4 messageWithName:@"HM.nrsv" destination:v5 payload:v3];

    objc_initWeak(&location, *(a1 + 40));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__HMHome_NetworkRouter__setNetworkRouterSupportMinimumHomeKitVersion_completionHandler___block_invoke_2;
    v12[3] = &unk_1E754CFF8;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 56);
    [v6 setResponseHandler:v12];
    v7 = [*(a1 + 48) messageDispatcher];
    [v7 sendMessage:v6 completionHandler:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [*(a1 + 40) context];
    v8 = [v11 delegateCaller];
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v8 callCompletion:v9 error:v10];
  }
}

void __88__HMHome_NetworkRouter__setNetworkRouterSupportMinimumHomeKitVersion_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)_didUpdateNetworkRouterSupport
{
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__HMHome_NetworkRouter___didUpdateNetworkRouterSupport__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

- (void)_handleHomeNetworkRouterSupportUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [updatedCopy numberForKey:@"networkRouterSupportDisableReason"];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if ([(HMHome *)self networkRouterSupportDisableReason]!= unsignedIntegerValue)
    {
      [(HMHome *)self setNetworkRouterSupportDisableReason:unsignedIntegerValue];
      v8 = ((unsignedIntegerValue << 60) >> 63) & 3;
      if ((unsignedIntegerValue & 7) != 0)
      {
        v8 = 7;
      }

      v9 = v8 | (unsignedIntegerValue >> 3) & 2;
      if ([(HMHome *)self networkRouterSupport]!= v9)
      {
        [(HMHome *)self setNetworkRouterSupport:v9];
        [(HMHome *)self _didUpdateNetworkRouterSupport];
      }
    }
  }

  v11 = 0;
  v10 = [updatedCopy BOOLForKey:@"addNetworkRouterEnabled" keyPresent:&v11];
  if (v11 == 1 && [(HMHome *)self _setSupportedFeature:1 enabled:v10])
  {
    [(HMHome *)self _notifyUpdatedSupportedFeatures];
  }
}

- (void)_didUpdateAccessoryNetworkProtectionGroup:(id)group
{
  groupCopy = group;
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
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
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__HMHome_NetworkRouter___didUpdateAccessoryNetworkProtectionGroup___block_invoke;
    v10[3] = &unk_1E754E5E8;
    v10[4] = self;
    v11 = v7;
    v12 = groupCopy;
    [delegateCaller invokeBlock:v10];
  }
}

uint64_t __67__HMHome_NetworkRouter___didUpdateAccessoryNetworkProtectionGroup___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@network.router: Telling delegate didUpdateAccessoryNetworkProtectionGroup. Delegate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) home:*(a1 + 32) didUpdateAccessoryNetworkProtectionGroup:*(a1 + 48)];
}

- (void)_didRemoveAccessoryNetworkProtectionGroup:(id)group
{
  groupCopy = group;
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
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
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__HMHome_NetworkRouter___didRemoveAccessoryNetworkProtectionGroup___block_invoke;
    v10[3] = &unk_1E754E5E8;
    v10[4] = self;
    v11 = v7;
    v12 = groupCopy;
    [delegateCaller invokeBlock:v10];
  }
}

uint64_t __67__HMHome_NetworkRouter___didRemoveAccessoryNetworkProtectionGroup___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@network.router: Telling delegate didRemoveAccessoryNetworkProtectionGroup. Delegate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) home:*(a1 + 32) didRemoveAccessoryNetworkProtectionGroup:*(a1 + 48)];
}

- (void)_didAddAccessoryNetworkProtectionGroup:(id)group
{
  groupCopy = group;
  delegate = [(HMHome *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63B38])
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
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__HMHome_NetworkRouter___didAddAccessoryNetworkProtectionGroup___block_invoke;
    v10[3] = &unk_1E754E5E8;
    v10[4] = self;
    v11 = v7;
    v12 = groupCopy;
    [delegateCaller invokeBlock:v10];
  }
}

uint64_t __64__HMHome_NetworkRouter___didAddAccessoryNetworkProtectionGroup___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@network.router: Telling delegate didAddAccessoryNetworkProtectionGroup. Delegate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) home:*(a1 + 32) didAddAccessoryNetworkProtectionGroup:*(a1 + 48)];
}

- (void)_handleAccessoryNetworkProtectionGroupRemovedNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@network.router: Received AccessoryNetworkProtectionGroupAddedNotification", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [notificationCopy uuidForKey:@"HMAccessoryNetworkProtectionGroupUUIDMessageKey"];
  if (v9)
  {
    accessoryProtectionGroups = [(HMHome *)selfCopy accessoryProtectionGroups];
    v11 = [accessoryProtectionGroups hmf_firstObjectWithUUID:v9];

    if (v11)
    {
      currentAccessoryProtectionGroups = [(HMHome *)selfCopy currentAccessoryProtectionGroups];
      [currentAccessoryProtectionGroups removeObject:v11];

      [(HMHome *)selfCopy _didRemoveAccessoryNetworkProtectionGroup:v11];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        uUIDString = [v9 UUIDString];
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = uUIDString;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@No matching accessory network protection group with uuid %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = notificationCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Message %@ missing uuid", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)_handleAccessoryNetworkProtectionGroupAddedNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@network.router: Received AccessoryNetworkProtectionGroupAddedNotification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [notificationCopy dataForKey:@"HMAccessoryNetworkProtectionGroupMessageKey"];
  if (v9)
  {
    v21 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v21];
    v11 = v21;
    if (v10)
    {
      [v10 _configureWithHome:selfCopy];
      currentAccessoryProtectionGroups = [(HMHome *)selfCopy currentAccessoryProtectionGroups];
      [currentAccessoryProtectionGroups addObject:v10];

      [(HMHome *)selfCopy _didAddAccessoryNetworkProtectionGroup:v10];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode added accessory protection group with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = notificationCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Message %@ missing accessory protection group encoded data", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)updateAccessoryNetworkProtectionGroup:(id)group protectionMode:(int64_t)mode completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (!completionCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(NetworkRouter) updateAccessoryNetworkProtectionGroup:protectionMode:completion:]", @"completion"];
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

  v11 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__HMHome_NetworkRouter__updateAccessoryNetworkProtectionGroup_protectionMode_completion___block_invoke;
    block[3] = &unk_1E754A090;
    block[4] = self;
    v25 = groupCopy;
    modeCopy = mode;
    v27 = completionCopy;
    v26 = v11;
    dispatch_async(queue, block);
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
      v30 = v16;
      v31 = 2080;
      v32 = "[HMHome(NetworkRouter) updateAccessoryNetworkProtectionGroup:protectionMode:completion:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

void __89__HMHome_NetworkRouter__updateAccessoryNetworkProtectionGroup_protectionMode_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    *buf = 138543874;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@network.router: Updating accessory network protection group: %@, protectionMode: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v25[0] = @"HMAccessoryNetworkProtectionGroupUUIDMessageKey";
  v8 = [*(a1 + 40) uuid];
  v9 = [v8 UUIDString];
  v25[1] = @"HMAccessoryNetworkProtectionGroupProtectionModeMessageKey";
  v26[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = MEMORY[0x1E69A2A10];
  v13 = [*(a1 + 32) messageDestination];
  v14 = [v12 messageWithName:@"HMAccessoryNetworkProtectionGroupProtectionModeUpdateRequest" destination:v13 payload:v11];

  objc_initWeak(buf, *(a1 + 32));
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __89__HMHome_NetworkRouter__updateAccessoryNetworkProtectionGroup_protectionMode_completion___block_invoke_2192;
  v21 = &unk_1E754B480;
  objc_copyWeak(v24, buf);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  v22 = v15;
  v24[1] = v16;
  v23 = *(a1 + 56);
  [v14 setResponseHandler:&v18];
  v17 = [*(a1 + 48) messageDispatcher];
  [v17 sendMessage:v14 completionHandler:0];

  objc_destroyWeak(v24);
  objc_destroyWeak(buf);
}

void __89__HMHome_NetworkRouter__updateAccessoryNetworkProtectionGroup_protectionMode_completion___block_invoke_2192(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v16 = 138544130;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@network.router: Updated accessory network protection group: %@, protectionMode: %ld with error: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5)
  {
    [*(a1 + 32) setTargetProtectionMode:*(a1 + 56)];
  }

  v14 = [v9 context];
  v15 = [v14 delegateCaller];
  [v15 callCompletion:*(a1 + 40) error:v5];
}

- (void)updateNetworkProtection:(int64_t)protection completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(NetworkRouter) updateNetworkProtection:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v20;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = context;
  if (context)
  {
    v26 = @"kHomeNetworkProtectionModeKey";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:protection];
    v27 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    uuid = [(HMHome *)self uuid];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__HMHome_NetworkRouter__updateNetworkProtection_completionHandler___block_invoke;
    v22[3] = &unk_1E754E480;
    v23 = v8;
    selfCopy2 = self;
    v25 = handlerCopy;
    [(_HMContext *)v23 sendMessage:uuid target:v10 payload:v22 responseHandler:?];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v15;
      v30 = 2080;
      v31 = "[HMHome(NetworkRouter) updateNetworkProtection:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __67__HMHome_NetworkRouter__updateNetworkProtection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = v11;
  }

  else
  {
    v9 = [a3 hmf_numberForKey:@"kHomeNetworkProtectionModeKey"];
    v10 = [v9 unsignedIntegerValue];

    [*(a1 + 40) setProtectionMode:v10];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (NSArray)accessoryProtectionGroups
{
  currentAccessoryProtectionGroups = [(HMHome *)self currentAccessoryProtectionGroups];
  array = [currentAccessoryProtectionGroups array];

  return array;
}

- (void)performMediaGroupReadinessCheckForAccessory:(id)accessory timeout:(double)timeout setupSessionIdentifier:(id)identifier completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  identifierCopy = identifier;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!completionCopy)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(MediaGroupReadinessCheck) performMediaGroupReadinessCheckForAccessory:timeout:setupSessionIdentifier:completion:]", @"completion"];
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

    uuid = [accessoryCopy uuid];

    if (uuid)
    {
      homeManager = [(HMHome *)self homeManager];
      isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

      if (isDaemonRunningWithROARFramework)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
        [dictionary setObject:v18 forKeyedSubscript:@"HMHomePerformMediaGroupReadinessCheckTimeoutKey"];

        uuid2 = [accessoryCopy uuid];
        [dictionary setObject:uuid2 forKeyedSubscript:@"kAccessoryUUID"];

        if (identifierCopy)
        {
          [dictionary setObject:identifierCopy forKeyedSubscript:@"HMHomePerformMediaGroupReadinessCheckSetupSessionIdentifierKey"];
        }

        v20 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
          *buf = 138543874;
          v62 = v23;
          v63 = 2112;
          v64 = accessoryCopy;
          v65 = 2112;
          v66 = v24;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Checking media group readiness for accessory %@ with timeout %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        v25 = MEMORY[0x1E69A2A10];
        v26 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid3 = [(HMHome *)selfCopy2 uuid];
        v28 = [v26 initWithTarget:uuid3];
        v29 = [v25 messageWithName:@"HMHomePerformMediaGroupReadinessCheckMessage" destination:v28 payload:dictionary];

        objc_initWeak(buf, selfCopy2);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2242;
        v52[3] = &unk_1E754D820;
        objc_copyWeak(&v56, buf);
        v53 = accessoryCopy;
        v30 = context;
        v54 = v30;
        v55 = completionCopy;
        [v29 setResponseHandler:v52];
        messageDispatcher = [v30 messageDispatcher];
        [messageDispatcher sendMessage:v29 completionHandler:0];

        objc_destroyWeak(&v56);
        objc_destroyWeak(buf);
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543362;
          v62 = v44;
          _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_INFO, "%{public}@Always returns YES in HH1", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v41);
        delegateCaller = [context delegateCaller];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2241;
        v57[3] = &unk_1E754E430;
        v58 = completionCopy;
        [delegateCaller invokeBlock:v57];
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v39;
        _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_INFO, "%{public}@Accessory is invalid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      delegateCaller2 = [context delegateCaller];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke;
      v59[3] = &unk_1E754E430;
      v60 = completionCopy;
      [delegateCaller2 invokeBlock:v59];
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v35;
      v63 = 2080;
      v64 = "[HMHome(MediaGroupReadinessCheck) performMediaGroupReadinessCheckForAccessory:timeout:setupSessionIdentifier:completion:]";
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }
}

void __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
  (*(v1 + 16))(v1, 0, v2);
}

void __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2242(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Media group readiness check failed for %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 40) delegateCaller];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2243;
    v22[3] = &unk_1E754E458;
    v24 = *(a1 + 48);
    v23 = v5;
    [v13 invokeBlock:v22];

    v14 = v24;
  }

  else
  {
    v15 = [v6 objectForKeyedSubscript:@"HMHomePerformMediaGroupReadinessCheckResponseKey"];
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

    v18 = [*(a1 + 40) delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2;
    v19[3] = &unk_1E754E0F8;
    v19[4] = WeakRetained;
    v20 = v17;
    v21 = *(a1 + 48);
    v14 = v17;
    [v18 invokeBlock:v19];
  }
}

uint64_t __122__HMHome_MediaGroupReadinessCheck__performMediaGroupReadinessCheckForAccessory_timeout_setupSessionIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Media group readiness fetched:%@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) BOOLValue], 0);
}

- (void)fetchNetworkInfosFromTarget:(int64_t)target timeout:(double)timeout completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!completionCopy)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HomeNetworkInfo) fetchNetworkInfosFromTarget:timeout:completion:]", @"completionHandler"];
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v35;
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
      objc_exception_throw(v36);
    }

    homeManager = [(HMHome *)self homeManager];
    isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

    if (isDaemonRunningWithROARFramework)
    {
      v12 = MEMORY[0x1E69A2A10];
      v13 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)self uuid];
      v15 = [v13 initWithTarget:uuid];
      v43[0] = @"HMHomeFetchNetworkInfoTargetKey";
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:target];
      v43[1] = @"HMHomeFetchNetworkInfoTimeoutKey";
      v44[0] = v16;
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
      v44[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v19 = [v12 messageWithName:@"HMHomeFetchNetworkInfoMessage" destination:v15 payload:v18];

      objc_initWeak(location, self);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2;
      v37[3] = &unk_1E754D058;
      objc_copyWeak(&v40, location);
      v20 = context;
      v38 = v20;
      v39 = completionCopy;
      [v19 setResponseHandler:v37];
      messageDispatcher = [v20 messageDispatcher];
      [messageDispatcher sendMessage:v19 completionHandler:0];

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *location = 138543362;
        *&location[4] = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Fetch home network info is only supported in HH2", location, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      delegateCaller = [context delegateCaller];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke;
      v41[3] = &unk_1E754E430;
      v42 = completionCopy;
      [delegateCaller invokeBlock:v41];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v25;
      v46 = 2080;
      v47 = "[HMHome(HomeNetworkInfo) fetchNetworkInfosFromTarget:timeout:completion:]";
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] array];
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(v1 + 16))(v1, v3, v2);
}

void __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching home network info returned an error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2230;
    v20[3] = &unk_1E754E458;
    v22 = a1[5];
    v21 = v5;
    [v12 invokeBlock:v20];

    v13 = v22;
  }

  else
  {
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v15 = [v6 hmf_unarchivedObjectForKey:@"HMHomeFetchNetworkInfoResultKey" ofClasses:v14];

    v16 = [a1[4] delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2_2231;
    v17[3] = &unk_1E754E0F8;
    v17[4] = WeakRetained;
    v18 = v15;
    v19 = a1[5];
    v13 = v15;
    [v16 invokeBlock:v17];
  }
}

void __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2230(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] array];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

uint64_t __74__HMHome_HomeNetworkInfo__fetchNetworkInfosFromTarget_timeout_completion___block_invoke_2_2231(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetched home network info: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))();
}

- (void)fetchWiFiInfosWithTimeout:(double)timeout completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!completionCopy)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HomeNetworkInfo) fetchWiFiInfosWithTimeout:completion:]", @"completionHandler"];
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v32;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
      objc_exception_throw(v33);
    }

    homeManager = [(HMHome *)self homeManager];
    isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

    if (isDaemonRunningWithROARFramework)
    {
      v10 = MEMORY[0x1E69A2A10];
      v11 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)self uuid];
      v13 = [v11 initWithTarget:uuid];
      v40 = @"HMHomeFetchWiFiInfoTimeoutKey";
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:timeout];
      v41 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v16 = [v10 messageWithName:@"HMHomeFetchWiFiInfoMessage" destination:v13 payload:v15];

      objc_initWeak(location, self);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2;
      v34[3] = &unk_1E754D058;
      objc_copyWeak(&v37, location);
      v17 = context;
      v35 = v17;
      v36 = completionCopy;
      [v16 setResponseHandler:v34];
      messageDispatcher = [v17 messageDispatcher];
      [messageDispatcher sendMessage:v16 completionHandler:0];

      objc_destroyWeak(&v37);
      objc_destroyWeak(location);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *location = 138543362;
        *&location[4] = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetch home WiFi info is only supported in HH2", location, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      delegateCaller = [context delegateCaller];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke;
      v38[3] = &unk_1E754E430;
      v39 = completionCopy;
      [delegateCaller invokeBlock:v38];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v43 = 2080;
      v44 = "[HMHome(HomeNetworkInfo) fetchWiFiInfosWithTimeout:completion:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DEC8] array];
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(v1 + 16))(v1, v3, v2);
}

void __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching home WiFi info returned an error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2228;
    v27[3] = &unk_1E754E458;
    v29 = a1[5];
    v28 = v5;
    [v12 invokeBlock:v27];

    v13 = v29;
  }

  else
  {
    v14 = [v6 objectForKeyedSubscript:@"HMHomeFetchWiFiInfoSSIDResponseKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v13 = v15;

    v16 = [v6 objectForKeyedSubscript:@"HMHomeFetchWiFiInfoRequiresPasswordResponseKey"];
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

    if (v13)
    {
      v19 = -[HMHomeWiFiInfo initWithSSID:requiresPassword:]([HMHomeWiFiInfo alloc], "initWithSSID:requiresPassword:", v13, [v18 BOOLValue]);
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x1E695DF70] array];
    v21 = v20;
    if (v19)
    {
      [v20 addObject:v19];
    }

    v22 = [a1[4] delegateCaller];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2_2229;
    v24[3] = &unk_1E754E0F8;
    v24[4] = WeakRetained;
    v25 = v21;
    v26 = a1[5];
    v23 = v21;
    [v22 invokeBlock:v24];
  }
}

void __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2228(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] array];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

uint64_t __64__HMHome_HomeNetworkInfo__fetchWiFiInfosWithTimeout_completion___block_invoke_2_2229(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetched home WiFi info: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))();
}

- (void)getPrimaryResidentNetworkInfoWithCompletion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!completionCopy)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HomeNetworkInfo) getPrimaryResidentNetworkInfoWithCompletion:]", @"completionHandler"];
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v28;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
      objc_exception_throw(v29);
    }

    homeManager = [(HMHome *)self homeManager];
    isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

    if (isDaemonRunningWithROARFramework)
    {
      v8 = MEMORY[0x1E69A2A10];
      v9 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)self uuid];
      v11 = [v9 initWithTarget:uuid];
      v12 = [v8 messageWithName:@"HMHomeGetPrimaryResidentNetworkInfoMessage" destination:v11 payload:MEMORY[0x1E695E0F8]];

      objc_initWeak(location, self);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke_2;
      v30[3] = &unk_1E754D058;
      objc_copyWeak(&v33, location);
      v13 = context;
      v31 = v13;
      v32 = completionCopy;
      [v12 setResponseHandler:v30];
      messageDispatcher = [v13 messageDispatcher];
      [messageDispatcher sendMessage:v12 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v22;
        v37 = 2112;
        v38 = @"HMHomeGetPrimaryResidentNetworkInfoMessage";
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@ is only supported in HH2", location, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      delegateCaller = [context delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke;
      v34[3] = &unk_1E754E430;
      v35 = completionCopy;
      [delegateCaller invokeBlock:v34];
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
      *location = 138543618;
      *&location[4] = v18;
      v37 = 2080;
      v38 = "[HMHome(HomeNetworkInfo) getPrimaryResidentNetworkInfoWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0, v2);
}

void __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v11;
      v27 = 2112;
      v28 = @"HMHomeGetPrimaryResidentNetworkInfoMessage";
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%@ returned an error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke_2226;
    v21[3] = &unk_1E754E458;
    v23 = a1[5];
    v22 = v5;
    [v12 invokeBlock:v21];

    v13 = v23;
  }

  else
  {
    v24 = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v15 = [v6 hmf_unarchivedObjectForKey:@"HM.v" ofClasses:v14];

    v16 = [a1[4] delegateCaller];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__HMHome_HomeNetworkInfo__getPrimaryResidentNetworkInfoWithCompletion___block_invoke_2_2227;
    v18[3] = &unk_1E754E458;
    v17 = a1[5];
    v19 = v15;
    v20 = v17;
    v13 = v15;
    [v16 invokeBlock:v18];
  }
}

- (void)retrieveHomeKitLocationForFeedbackWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!handlerCopy)
    {
      _HMFPreconditionFailure();
    }

    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 messageWithName:@"HM.retrieveHomeLocationForFeedback" destination:v9 payload:0];

    objc_initWeak(location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__HMHome_HomeLocationFeedback__retrieveHomeKitLocationForFeedbackWithCompletionHandler___block_invoke;
    v17[3] = &unk_1E754D058;
    objc_copyWeak(&v20, location);
    v11 = context;
    v18 = v11;
    v19 = handlerCopy;
    [v10 setResponseHandler:v17];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v22 = 2080;
      v23 = "[HMHome(HomeLocationFeedback) retrieveHomeKitLocationForFeedbackWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __88__HMHome_HomeLocationFeedback__retrieveHomeKitLocationForFeedbackWithCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got error while retrieving the location for feedback: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__HMHome_HomeLocationFeedback__retrieveHomeKitLocationForFeedbackWithCompletionHandler___block_invoke_2238;
    v19[3] = &unk_1E754E430;
    v20 = a1[5];
    [v12 invokeBlock:v19];

    v13 = v20;
  }

  else
  {
    v14 = [v6 hmf_dateForKey:@"HM.homeLocationUpdateTimestamp"];
    v15 = [a1[4] delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__HMHome_HomeLocationFeedback__retrieveHomeKitLocationForFeedbackWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E754E0F8;
    v16[4] = WeakRetained;
    v17 = v14;
    v18 = a1[5];
    v13 = v14;
    [v15 invokeBlock:v16];
  }
}

uint64_t __88__HMHome_HomeLocationFeedback__retrieveHomeKitLocationForFeedbackWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@lastUpdated:[%@]", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))();
}

- (BOOL)areValidScheduleEntries:(id)entries forState:(unint64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  if (state == 3)
  {
    v7 = [HMHomeActivityStateScheduleUtilities areValidScheduleEntries:entriesCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMHomeActivityStateToString(state);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Home Activity State Schedules are not supported for state: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)cancelHomeActivityStateHoldWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 messageWithName:@"HMCancelHomeActivityStateHoldMessage" destination:v9 payload:0];

    objc_initWeak(location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke;
    v17[3] = &unk_1E754D058;
    objc_copyWeak(&v20, location);
    v11 = context;
    v18 = v11;
    v19 = handlerCopy;
    [v10 setResponseHandler:v17];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v22 = 2080;
      v23 = "[HMHome(HomeActivityState) cancelHomeActivityStateHoldWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Got error while trying to cancel HOLD on current home activity state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [a1[4] delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke_2251;
    v19[3] = &unk_1E754E458;
    v14 = &v21;
    v21 = a1[5];
    v20 = v5;
    [v13 invokeBlock:v19];

    v15 = v20;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully canceled the HOLD on current home activity state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke_2252;
    v17[3] = &unk_1E754E430;
    v14 = &v18;
    v18 = a1[5];
    [v15 invokeBlock:v17];
  }
}

void __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke_2251(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void __78__HMHome_HomeActivityState__cancelHomeActivityStateHoldWithCompletionHandler___block_invoke_2252(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

- (void)fetchCurrentHomeActivityState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!stateCopy)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v17);
    }

    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v9 = [v7 initWithTarget:uuid];
    v10 = [v6 messageWithName:@"HMFetchCurrentHomeActivityStateMessage" destination:v9 payload:0];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke;
    v18[3] = &unk_1E754D058;
    objc_copyWeak(&v21, location);
    v11 = context;
    v19 = v11;
    v20 = stateCopy;
    [v10 setResponseHandler:v18];
    messageDispatcher = [v11 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v23 = 2080;
      v24 = "[HMHome(HomeActivityState) fetchCurrentHomeActivityState:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke(id *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v11;
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got error while trying to change the home activity state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke_2248;
    v47[3] = &unk_1E754E458;
    v49 = a1[5];
    v48 = v5;
    [v12 invokeBlock:v47];

    v13 = v49;
  }

  else
  {
    v13 = [v6 hmf_numberForKey:@"HM.HAS.State.Key"];
    [v13 unsignedIntegerValue];
    v14 = [v13 unsignedIntegerValue];

    if (v14 >= 8)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = WeakRetained;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v21 = v20 = v6;
        *buf = 138543362;
        v51 = v21;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unknown home activity state type found. Erroring out.", buf, 0xCu);

        v6 = v20;
      }

      objc_autoreleasePoolPop(v17);
      v22 = [a1[4] delegateCaller];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke_2249;
      v45[3] = &unk_1E754E430;
      v46 = a1[5];
      [v22 invokeBlock:v45];

      v16 = v46;
    }

    else
    {
      v15 = [v6 hmf_numberForKey:@"HM.HAS.IsActivityStateHoldActive.Key"];
      v16 = v15;
      if (v15 && [v15 BOOLValue])
      {
        v37 = [v6 hmf_dateForKey:@"HM.HAS.ActivityStateHoldEndDate.Key"];
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v35 = v6;
      v38 = [v6 hmf_dateForKey:@"HM.HAS.TransitionalStateEndDate.Key"];
      v23 = objc_autoreleasePoolPush();
      v24 = WeakRetained;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = HMHomeActivityStateToString([v13 unsignedIntegerValue]);
        HMFBooleanToString();
        v28 = v34 = v16;
        [v38 hmf_localTimeDescription];
        v29 = v33 = v23;
        *buf = 138544386;
        v51 = v26;
        v52 = 2112;
        v53 = v27;
        v54 = 2112;
        v55 = v28;
        v56 = 2112;
        v57 = v37;
        v58 = 2112;
        v59 = v29;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Current home activity state : %@, isHoldInPlace : %@, Hold expiration time : %@, transitional state end date : %@", buf, 0x34u);

        v23 = v33;
        v16 = v34;
      }

      objc_autoreleasePoolPop(v23);
      v30 = [a1[4] delegateCaller];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke_2250;
      v39[3] = &unk_1E754A988;
      v43 = a1[5];
      v44 = v36;
      v40 = v13;
      v41 = v37;
      v42 = v38;
      v31 = v38;
      v32 = v37;
      [v30 invokeBlock:v39];

      v6 = v35;
    }
  }
}

void __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke_2249(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2802];
  (*(v1 + 16))(v1, 0, 0, 0, 0, v2);
}

uint64_t __59__HMHome_HomeActivityState__fetchCurrentHomeActivityState___block_invoke_2250(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) unsignedIntegerValue];
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(v2 + 16);

  return v7(v2, v3, v4, v5, v6, 0);
}

- (void)changeHomeActivityState:(unint64_t)state completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!handlerCopy)
    {
      v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v21);
    }

    v8 = MEMORY[0x1E69A2A10];
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v11 = [v9 initWithTarget:uuid];
    v26 = @"HM.HAS.State.Key";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    v27 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [v8 messageWithName:@"HMUpdateHomeActivityStateMessage" destination:v11 payload:v13];

    objc_initWeak(location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__HMHome_HomeActivityState__changeHomeActivityState_completionHandler___block_invoke;
    v22[3] = &unk_1E754D058;
    objc_copyWeak(&v25, location);
    v15 = context;
    v23 = v15;
    v24 = handlerCopy;
    [v14 setResponseHandler:v22];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14 completionHandler:0];

    objc_destroyWeak(&v25);
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
      *location = 138543618;
      *&location[4] = v20;
      v29 = 2080;
      v30 = "[HMHome(HomeActivityState) changeHomeActivityState:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __71__HMHome_HomeActivityState__changeHomeActivityState_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got error while trying to change the home activity state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__HMHome_HomeActivityState__changeHomeActivityState_completionHandler___block_invoke_2247;
    v17[3] = &unk_1E754E458;
    v13 = &v19;
    v19 = a1[5];
    v18 = v5;
    [v12 invokeBlock:v17];

    v14 = v18;
  }

  else
  {
    v14 = [a1[4] delegateCaller];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__HMHome_HomeActivityState__changeHomeActivityState_completionHandler___block_invoke_2;
    v15[3] = &unk_1E754E430;
    v13 = &v16;
    v16 = a1[5];
    [v14 invokeBlock:v15];
  }
}

- (void)_removeZone:(id)zone completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (zoneCopy)
    {
      currentZones = [(HMHome *)self currentZones];
      v11 = [currentZones containsObject:zoneCopy];

      if (v11)
      {
        uuid = [zoneCopy uuid];
        uuid2 = [(HMHome *)self uuid];
        v29 = @"kZoneUUID";
        uUIDString = [uuid UUIDString];
        v30 = uUIDString;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __48__HMHome_HMZone___removeZone_completionHandler___block_invoke;
        v24[3] = &unk_1E754D030;
        v25 = v9;
        v27 = uuid;
        v28 = handlerCopy;
        selfCopy = self;
        delegateCaller = uuid;
        [(_HMContext *)v25 sendMessage:uuid2 target:v15 payload:v24 responseHandler:?];

LABEL_12:
        goto LABEL_13;
      }

      delegateCaller = [v9 delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 2;
    }

    else
    {
      delegateCaller = [context delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 20;
    }

    v23 = [v21 hmErrorWithCode:v22];
    [delegateCaller callCompletion:handlerCopy error:v23];

    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v20;
    v33 = 2080;
    v34 = "[HMHome(HMZone) _removeZone:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
    goto LABEL_12;
  }

LABEL_13:
}

void __48__HMHome_HMZone___removeZone_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) delegateCaller];
    [v3 callCompletion:*(a1 + 56) error:v6];
  }

  else
  {
    v3 = [*(a1 + 40) zoneWithUUID:*(a1 + 48)];
    if (v3)
    {
      v4 = [*(a1 + 40) currentZones];
      [v4 removeObject:v3];

      [v3 _unconfigure];
    }

    v5 = [*(a1 + 32) delegateCaller];
    [v5 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)removeZone:(HMZone *)zone completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = zone;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMZone) removeZone:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HMHome_HMZone__removeZone_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMZone) removeZone:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_addZoneWithName:(id)name completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 > HMMaxLengthForNaming__hmf_once_v9)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v14;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Zone name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        delegateCaller = [v9 delegateCaller];
        v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
        goto LABEL_17;
      }

      v23 = [(HMHome *)self zoneWithName:nameCopy];

      if (!v23)
      {
        uuid = [(HMHome *)self uuid];
        v31 = @"kZoneName";
        v32 = nameCopy;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __53__HMHome_HMZone___addZoneWithName_completionHandler___block_invoke;
        v27[3] = &unk_1E754E480;
        v28 = v9;
        selfCopy2 = self;
        v30 = handlerCopy;
        [(_HMContext *)v28 sendMessage:uuid target:v26 payload:v27 responseHandler:?];

        goto LABEL_19;
      }

      delegateCaller = [v9 delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 13;
    }

    else
    {
      delegateCaller = [context delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 20;
    }

    v16 = [v21 errorWithDomain:@"HMErrorDomain" code:v22 userInfo:0];
LABEL_17:
    v24 = v16;
    [delegateCaller callCompletion:handlerCopy zone:0 error:v16];

    goto LABEL_18;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v20;
    v35 = 2080;
    v36 = "[HMHome(HMZone) _addZoneWithName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, delegateCaller);
LABEL_18:
  }

LABEL_19:
}

void __53__HMHome_HMZone___addZoneWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 48) zone:0 error:v12];
  }

  else
  {
    v6 = [v5 hmf_UUIDForKey:@"kZoneUUID"];
    v7 = [v5 hmf_stringForKey:@"kZoneName"];
    v8 = [[HMZone alloc] initWithName:v7 uuid:v6];
    v9 = [*(a1 + 40) context];
    [(HMZone *)v8 __configureWithContext:v9 home:*(a1 + 40)];

    v10 = [*(a1 + 40) currentZones];
    [v10 addObject:v8];

    v11 = [*(a1 + 32) delegateCaller];
    [v11 callCompletion:*(a1 + 48) zone:v8 error:0];
  }
}

- (void)addZoneWithName:(NSString *)zoneName completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = zoneName;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMZone) addZoneWithName:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMHome_HMZone__addZoneWithName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMZone) addZoneWithName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }
}

- (NSArray)zones
{
  currentZones = [(HMHome *)self currentZones];
  array = [currentZones array];

  return array;
}

- (id)userActionPredictionController
{
  homeManager = [(HMHome *)self homeManager];
  predictionProvider = [homeManager predictionProvider];

  if (predictionProvider)
  {
    v5 = [HMUserActionPredictionController alloc];
    uniqueIdentifier = [(HMHome *)self uniqueIdentifier];
    v7 = [(HMUserActionPredictionController *)v5 initWithHomeIdentifier:uniqueIdentifier predictionProvider:predictionProvider];

    context = [(HMHome *)self context];
    [(HMUserActionPredictionController *)v7 configureWithContext:context];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addUserWithCompletionHandler:(void *)completion
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = completion;
  context = [(HMHome *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) addUserWithCompletionHandler:]", @"completion"];
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

  v6 = context;
  if (context)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__HMHome_HMUser__addUserWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E754E430;
    v21 = v4;
    [delegateCaller invokeBlock:v20];

    v9 = v21;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v13;
      v24 = 2080;
      v25 = "[HMHome(HMUser) addUserWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v9);
  }
}

void __47__HMHome_HMUser__addUserWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  (*(*(a1 + 32) + 16))();
}

- (id)owner
{
  v41 = *MEMORY[0x1E69E9840];
  currentUser = [(HMHome *)self currentUser];
  homeAccessControl = [currentUser homeAccessControl];
  isOwner = [homeAccessControl isOwner];

  if (isOwner)
  {
    currentUser2 = [(HMHome *)self currentUser];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    currentUsers = [(HMHome *)self currentUsers];
    array = [currentUsers array];

    currentUser2 = [array countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (currentUser2)
    {
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != currentUser2; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(array);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          homeAccessControl2 = [v11 homeAccessControl];
          isOwner2 = [homeAccessControl2 isOwner];

          if (isOwner2)
          {
            currentUser2 = v11;
            goto LABEL_13;
          }
        }

        currentUser2 = [array countByEnumeratingWithState:&v26 objects:v40 count:16];
        if (currentUser2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    userID = [currentUser2 userID];
    [currentUser2 name];
    v19 = v25 = currentUser2;
    currentUser3 = [(HMHome *)selfCopy currentUser];
    userID2 = [currentUser3 userID];
    currentUsers2 = [(HMHome *)selfCopy currentUsers];
    array2 = [currentUsers2 array];
    *buf = 138544386;
    v31 = v17;
    v32 = 2112;
    v33 = userID;
    v34 = 2112;
    v35 = v19;
    v36 = 2112;
    v37 = userID2;
    v38 = 2112;
    v39 = array2;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEBUG, "%{public}@owner : %@, name: %@, currentUser: %@, all users: [%@]", buf, 0x34u);

    currentUser2 = v25;
  }

  objc_autoreleasePoolPop(v14);

  return currentUser2;
}

- (id)administrator
{
  v20 = *MEMORY[0x1E69E9840];
  currentUser = [(HMHome *)self currentUser];
  homeAccessControl = [currentUser homeAccessControl];
  isAdministrator = [homeAccessControl isAdministrator];

  if (isAdministrator)
  {
    currentUser2 = [(HMHome *)self currentUser];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    currentUsers = [(HMHome *)self currentUsers];
    array = [currentUsers array];

    currentUser2 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (currentUser2)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != currentUser2; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(array);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          homeAccessControl2 = [v11 homeAccessControl];
          isAdministrator2 = [homeAccessControl2 isAdministrator];

          if (isAdministrator2)
          {
            currentUser2 = v11;
            goto LABEL_13;
          }
        }

        currentUser2 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (currentUser2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return currentUser2;
}

- (id)residentDevices
{
  currentResidentDevices = [(HMHome *)self currentResidentDevices];
  array = [currentResidentDevices array];

  return array;
}

- (id)_createFailedAccessoriesListFromError:(id)error
{
  v42 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = [userInfo hmf_arrayForKey:@"kFailedAccessoriesListKey"];

  if (v5)
  {
    v25 = errorCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      v26 = *v35;
      do
      {
        v10 = 0;
        v27 = v8;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v10;
            v12 = v11;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v31;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v31 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v30 + 1) + 8 * i);
                  v18 = [v12 objectForKeyedSubscript:v17];
                  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
                  v38 = v19;
                  v39 = v18;
                  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
                  [array addObject:v20];
                }

                v14 = [v12 countByEnumeratingWithState:&v30 objects:v40 count:16];
              }

              while (v14);
            }

            v9 = v26;
            v8 = v27;
            v10 = v29;
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }

    v21 = dictionary;
    [dictionary setObject:array forKeyedSubscript:@"HMUserFailedAccessoriesKey"];

    errorCopy = v25;
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:objc_msgSend(errorCopy userInfo:{"code"), v21}];

  return v22;
}

- (void)_removeUser:(id)user completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) _removeUser:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v28;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = context;
  if (!context)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v21;
      v38 = 2080;
      v39 = "[HMHome(HMUser) _removeUser:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_11;
  }

  if (!userCopy)
  {
    delegateCaller = [context delegateCaller];
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v23];

LABEL_11:
    goto LABEL_12;
  }

  v34[0] = @"kUserUUIDKey";
  uuid = [userCopy uuid];
  uUIDString = [uuid UUIDString];
  v34[1] = @"kConfirmUserManagementKey";
  v35[0] = uUIDString;
  v35[1] = MEMORY[0x1E695E110];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

  senderCorrelationIdentifier = [userCopy senderCorrelationIdentifier];

  if (senderCorrelationIdentifier)
  {
    v14 = [v12 mutableCopy];
    senderCorrelationIdentifier2 = [userCopy senderCorrelationIdentifier];
    [v14 setObject:senderCorrelationIdentifier2 forKeyedSubscript:@"HM.senderCorrelationIdentifier"];

    v16 = [v14 copy];
    v12 = v16;
  }

  uuid2 = [(HMHome *)self uuid];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48__HMHome_HMUser___removeUser_completionHandler___block_invoke;
  v30[3] = &unk_1E754D030;
  v30[4] = self;
  v31 = userCopy;
  v32 = v9;
  v33 = handlerCopy;
  [(_HMContext *)v32 sendMessage:uuid2 target:v12 payload:v30 responseHandler:?];

LABEL_12:
}

void __48__HMHome_HMUser___removeUser_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 _createFailedAccessoriesListFromError:v5];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v21 = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to remove user: %@, with error: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [*(a1 + 48) delegateCaller];
    [v14 callCompletion:*(a1 + 56) error:v8];
  }

  else
  {
    v15 = [v7 currentUsers];
    [v15 removeObject:*(a1 + 40)];

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Calling completion for removed user: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v8 = [*(a1 + 48) delegateCaller];
    [v8 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)removeUser:(HMUser *)user completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = user;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) removeUser:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HMHome_HMUser__removeUser_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMUser) removeUser:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (BOOL)_areAllUserInviteInformationValid:(id)valid
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__HMHome_HMUser___areAllUserInviteInformationValid___block_invoke;
  v4[3] = &unk_1E7549FC0;
  v4[4] = self;
  return [valid na_all:v4];
}

- (void)inviteUsersWithInviteInformation:(id)information completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) inviteUsersWithInviteInformation:completionHandler:]", @"completion"];
    v43 = objc_autoreleasePoolPush();
    selfCopy = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v46;
      v57 = 2112;
      v58 = v42;
      _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v42 userInfo:0];
    objc_exception_throw(v47);
  }

  v9 = context;
  if (!context)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v29;
      v57 = 2080;
      v58 = "[HMHome(HMUser) inviteUsersWithInviteInformation:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, 0, v30);
    goto LABEL_11;
  }

  if (![informationCopy count])
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:handlerCopy invitations:0 error:v30];

LABEL_11:
    goto LABEL_20;
  }

  if ([(HMHome *)self _areAllUserInviteInformationValid:informationCopy])
  {
    v52 = 0;
    context5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:informationCopy requiringSecureCoding:1 error:&v52];
    v11 = v52;
    if (context5)
    {
      v53 = @"HMHomeUserInviteInformationKey";
      v54 = context5;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v13 = objc_alloc(MEMORY[0x1E69A2A10]);
      v14 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)self uuid];
      v16 = [v14 initWithTarget:uuid];
      context4 = [v13 initWithName:@"kInviteUsersRequestKey" destination:v16 payload:v12];

      context3 = [(HMHome *)self context];
      pendingRequests = [context3 pendingRequests];

      identifier = [context4 identifier];
      v21 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v21 forIdentifier:identifier];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __69__HMHome_HMUser__inviteUsersWithInviteInformation_completionHandler___block_invoke;
      v48[3] = &unk_1E754E0A8;
      v49 = pendingRequests;
      v50 = identifier;
      v22 = v9;
      v51 = v22;
      v23 = identifier;
      delegateCaller2 = pendingRequests;
      [context4 setResponseHandler:v48];
      messageDispatcher = [v22 messageDispatcher];
      [messageDispatcher sendMessage:context4];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v41;
        v57 = 2112;
        v58 = v11;
        _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode user invite information: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
      context4 = [(HMHome *)selfCopy3 context];
      delegateCaller2 = [context4 delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy invitations:0 error:v12];
    }
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
      v56 = v36;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Not all the HMUserInviteInformation objects are valid.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context5 = [(HMHome *)selfCopy4 context];
    delegateCaller3 = [context5 delegateCaller];
    [delegateCaller3 callCompletion:handlerCopy invitations:0 error:v11];
  }

LABEL_20:
}

void __69__HMHome_HMUser__inviteUsersWithInviteInformation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 obj:0 error:v5];
  }
}

- (void)_manageUsersWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) _manageUsersWithCompletionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v6 = context;
  if (context)
  {
    homeManager = [(HMHome *)self homeManager];
    if ([homeManager isViewServiceActive])
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:15 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v10];
    }

    else
    {
      [homeManager setViewServiceActive:1];
      v15 = objc_alloc(MEMORY[0x1E69A2A10]);
      v16 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMHome *)self uuid];
      v18 = [v16 initWithTarget:uuid];
      v19 = [v15 initWithName:@"HMHomeAllowUserManagementMessage" destination:v18 payload:0];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke;
      v27[3] = &unk_1E754E480;
      v27[4] = self;
      homeManager = homeManager;
      v28 = homeManager;
      v29 = handlerCopy;
      [v19 setResponseHandler:v27];
      messageDispatcher = [v6 messageDispatcher];
      [messageDispatcher sendMessage:v19];
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
      *buf = 138543618;
      v31 = v14;
      v32 = 2080;
      v33 = "[HMHome(HMUser) _manageUsersWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    homeManager = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, homeManager);
  }
}

void __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to allow user management: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[5] setViewServiceActive:0];
    v11 = [a1[4] context];
    v12 = [v11 delegateCaller];
    [v12 callCompletion:a1[6] error:v5];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_2059;
    v14[3] = &unk_1E754E0F8;
    v13 = a1[5];
    v14[4] = a1[4];
    v15 = v13;
    v16 = a1[6];
    runOnMainQueue(v14);
  }
}

void __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_2059(uint64_t a1)
{
  v2 = [HMUserListViewController alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E754E148;
  v3 = *(a1 + 32);
  v15 = *(a1 + 40);
  v4 = [(HMUserListViewController *)v2 initWithHome:v3 loadHandler:v14];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_3;
  v10 = &unk_1E754D898;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 48);
  [(HMUserListViewController *)v4 setCompletionHandler:&v7];
  [(HMUserListViewController *)v4 presentWhenLoaded:v7];
}

id *__52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_2(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] setViewServiceActive:0];
  }

  return result;
}

void __52__HMHome_HMUser___manageUsersWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setViewServiceActive:0];
  v6 = [*(a1 + 40) context];
  v5 = [v6 delegateCaller];
  [v5 callCompletion:*(a1 + 48) error:v4];
}

- (void)manageUsersWithCompletionHandler:(void *)completion
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = completion;
  context = [(HMHome *)self context];
  if (!v4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMUser) manageUsersWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMHome_HMUser__manageUsersWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v20 = v4;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2080;
      v24 = "[HMHome(HMUser) manageUsersWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }
}

- (id)restrictedGuests
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFA8] set];
  currentUser = [(HMHome *)self currentUser];
  if (currentUser)
  {
    v6 = currentUser;
    currentUser2 = [(HMHome *)self currentUser];
    homeAccessControl = [currentUser2 homeAccessControl];
    isRestrictedGuest = [homeAccessControl isRestrictedGuest];

    if (isRestrictedGuest)
    {
      currentUser3 = [(HMHome *)self currentUser];
      [v4 addObject:currentUser3];
    }
  }

  currentUsers = [(HMHome *)self currentUsers];
  array = [currentUsers array];
  v13 = [array na_filter:&__block_literal_global_2058];

  [v4 addObjectsFromArray:v13];
  allObjects = [v4 allObjects];

  objc_autoreleasePoolPop(v3);

  return allObjects;
}

uint64_t __34__HMHome_HMUser__restrictedGuests__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 homeAccessControl];
  v3 = [v2 isRestrictedGuest];

  return v3;
}

- (id)communalUsers
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFA8] set];
  currentUser = [(HMHome *)self currentUser];
  if (currentUser)
  {
    v6 = currentUser;
    currentUser2 = [(HMHome *)self currentUser];
    homeAccessControl = [currentUser2 homeAccessControl];
    isRestrictedGuest = [homeAccessControl isRestrictedGuest];

    if ((isRestrictedGuest & 1) == 0)
    {
      currentUser3 = [(HMHome *)self currentUser];
      [v4 addObject:currentUser3];
    }
  }

  currentUsers = [(HMHome *)self currentUsers];
  array = [currentUsers array];
  v13 = [array na_filter:&__block_literal_global_2056];

  [v4 addObjectsFromArray:v13];
  allObjects = [v4 allObjects];

  objc_autoreleasePoolPop(v3);

  return allObjects;
}

uint64_t __31__HMHome_HMUser__communalUsers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 homeAccessControl];
  v3 = [v2 isRestrictedGuest];

  return v3 ^ 1u;
}

- (id)allUsers
{
  v3 = objc_autoreleasePoolPush();
  currentUsers = [(HMHome *)self currentUsers];
  array = [currentUsers array];
  v6 = [array mutableCopy];

  currentUser = [(HMHome *)self currentUser];

  if (currentUser)
  {
    currentUser2 = [(HMHome *)self currentUser];
    [v6 addObject:currentUser2];
  }

  v9 = [v6 copy];

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (NSArray)users
{
  currentUsers = [(HMHome *)self currentUsers];
  array = [currentUsers array];

  return array;
}

- (id)removeMediaSystemRequestResponseHandlerWithMediaSystem:(id)system context:(id)context messageIdentifier:(id)identifier completionHandler:(id)handler
{
  systemCopy = system;
  contextCopy = context;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __120__HMHome_HMTrigger__removeMediaSystemRequestResponseHandlerWithMediaSystem_context_messageIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E754D030;
  v17[4] = self;
  v18 = systemCopy;
  v19 = contextCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = contextCopy;
  v14 = systemCopy;
  v15 = _Block_copy(v17);

  return v15;
}

void __120__HMHome_HMTrigger__removeMediaSystemRequestResponseHandlerWithMediaSystem_context_messageIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v18 = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Send remove request for media system: %@ responded with error: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 48) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 56);
    v15 = v5;
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) uuid];
    [v16 stageRemovedMediaSystemUUID:v17];

    v12 = [*(a1 + 48) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 56);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (void)removeMediaSystem:(id)system completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v11;
    v47 = 2112;
    v48 = systemCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending request to remove media system: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMHome *)selfCopy context];
  if (!handlerCopy)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) removeMediaSystem:completionHandler:]", @"completion"];
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v41;
      v47 = 2112;
      v48 = v37;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v42);
  }

  v13 = context;
  if (context)
  {
    if (systemCopy)
    {
      mediaSystemStageManager = [(HMHome *)selfCopy mediaSystemStageManager];
      uuid = [systemCopy uuid];
      v16 = [mediaSystemStageManager mediaSystemWithUUID:uuid];

      if (v16)
      {
        v43 = kMediaSystemUUIDCodingKey;
        uuid2 = [systemCopy uuid];
        uUIDString = [uuid2 UUIDString];
        v44 = uUIDString;
        context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

        v20 = objc_alloc(MEMORY[0x1E69A2A10]);
        v21 = kRemoveMediaSystemRequest;
        v22 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid3 = [(HMHome *)selfCopy uuid];
        v24 = [v22 initWithTarget:uuid3];
        v25 = [v20 initWithName:v21 destination:v24 payload:context2];

        identifier = [v25 identifier];
        v27 = [(HMHome *)selfCopy removeMediaSystemRequestResponseHandlerWithMediaSystem:systemCopy context:v13 messageIdentifier:identifier completionHandler:handlerCopy];
        [v25 setResponseHandler:v27];

        messageDispatcher = [v13 messageDispatcher];
        [messageDispatcher sendMessage:v25];

        goto LABEL_14;
      }

      context2 = [(HMHome *)selfCopy context];
      delegateCaller = [context2 delegateCaller];
      v34 = MEMORY[0x1E696ABC0];
      v35 = 2;
    }

    else
    {
      context2 = [(HMHome *)selfCopy context];
      delegateCaller = [context2 delegateCaller];
      v34 = MEMORY[0x1E696ABC0];
      v35 = 20;
    }

    v36 = [v34 hmErrorWithCode:v35];
    [delegateCaller callCompletion:handlerCopy error:v36];

    goto LABEL_14;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v32;
    v47 = 2080;
    v48 = "[HMHome(HMTrigger) removeMediaSystem:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  handlerCopy[2](handlerCopy, context2);
LABEL_14:
}

- (void)_userDidConfirmExecution:(BOOL)execution ofTriggerWithIdentifier:(id)identifier completionHandler:(id)handler
{
  executionCopy = execution;
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) _userDidConfirmExecution:ofTriggerWithIdentifier:completionHandler:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v11 = context;
  if (!context)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v24;
      v41 = 2080;
      v42 = "[HMHome(HMTrigger) _userDidConfirmExecution:ofTriggerWithIdentifier:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, context2);
    goto LABEL_9;
  }

  if (!identifierCopy)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:handlerCopy error:v27];

LABEL_9:
    goto LABEL_10;
  }

  v37[0] = @"kTriggerUUID";
  v37[1] = @"kTriggerExecuteConfirmationKey";
  v38[0] = identifierCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:executionCopy];
  v38[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

  v14 = objc_alloc(MEMORY[0x1E69A2A10]);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHome *)self uuid];
  v17 = [v15 initWithTarget:uuid];
  v18 = [v14 initWithName:@"kConfirmExecuteTriggerRequestKey" destination:v17 payload:v13];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __88__HMHome_HMTrigger___userDidConfirmExecution_ofTriggerWithIdentifier_completionHandler___block_invoke;
  v34[3] = &unk_1E754DE00;
  v19 = v11;
  v35 = v19;
  v36 = handlerCopy;
  [v18 setResponseHandler:v34];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v18];

LABEL_10:
}

void __88__HMHome_HMTrigger___userDidConfirmExecution_ofTriggerWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)userDidConfirmExecution:(BOOL)execution ofTriggerWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) userDidConfirmExecution:ofTriggerWithIdentifier:completionHandler:]", @"completion"];
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

  v11 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__HMHome_HMTrigger__userDidConfirmExecution_ofTriggerWithIdentifier_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    block[4] = self;
    executionCopy = execution;
    v25 = identifierCopy;
    v26 = handlerCopy;
    dispatch_async(queue, block);
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
      v29 = v16;
      v30 = 2080;
      v31 = "[HMHome(HMTrigger) userDidConfirmExecution:ofTriggerWithIdentifier:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v17);
  }
}

- (void)userDidConfirmExecution:(BOOL)execution ofTrigger:(id)trigger completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) userDidConfirmExecution:ofTrigger:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v11 = context;
  if (!context)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2080;
      v33 = "[HMHome(HMTrigger) userDidConfirmExecution:ofTrigger:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, context2);
    goto LABEL_9;
  }

  if (!triggerCopy)
  {
    context2 = [(HMHome *)self context];
    delegateCaller = [context2 delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:handlerCopy error:v19];

LABEL_9:
    goto LABEL_10;
  }

  queue = [context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HMHome_HMTrigger__userDidConfirmExecution_ofTrigger_completionHandler___block_invoke;
  block[3] = &unk_1E754A040;
  block[4] = self;
  executionCopy = execution;
  v27 = triggerCopy;
  v28 = handlerCopy;
  dispatch_async(queue, block);

LABEL_10:
}

void __73__HMHome_HMTrigger__userDidConfirmExecution_ofTrigger_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v5 UUIDString];
  [v3 _userDidConfirmExecution:v2 ofTriggerWithIdentifier:v4 completionHandler:*(a1 + 48)];
}

- (void)_removeTrigger:(id)trigger completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) _removeTrigger:completionHandler:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v32;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v9 = context;
  if (context)
  {
    if (triggerCopy)
    {
      currentTriggers = [(HMHome *)self currentTriggers];
      v11 = [currentTriggers containsObject:triggerCopy];

      if (v11)
      {
        v12 = MEMORY[0x1E69A2A10];
        messageDestination = [(HMHome *)self messageDestination];
        v37 = @"kTriggerUUID";
        uuid = [triggerCopy uuid];
        uUIDString = [uuid UUIDString];
        v38 = uUIDString;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v17 = [v12 messageWithName:@"kRemoveTriggerRequestKey" destination:messageDestination payload:v16];

        objc_initWeak(location, self);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __54__HMHome_HMTrigger___removeTrigger_completionHandler___block_invoke;
        v34[3] = &unk_1E754CFF8;
        objc_copyWeak(&v36, location);
        v35 = handlerCopy;
        [v17 setResponseHandler:v34];
        messageDispatcher = [v9 messageDispatcher];
        [messageDispatcher sendMessage:v17 completionHandler:0];

        objc_destroyWeak(&v36);
        objc_destroyWeak(location);

        goto LABEL_12;
      }

      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
    }

    else
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    }

    v27 = v26;
    [delegateCaller callCompletion:handlerCopy error:v26];

    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *location = 138543618;
    *&location[4] = v22;
    v40 = 2080;
    v41 = "[HMHome(HMTrigger) _removeTrigger:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, v23);

LABEL_12:
}

void __54__HMHome_HMTrigger___removeTrigger_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9 || !v5 || [WeakRetained _removeTriggerFromResponse:v5 completion:*(a1 + 32)])
  {
    v7 = [WeakRetained context];
    v8 = [v7 delegateCaller];
    [v8 callCompletion:*(a1 + 32) error:v9];
  }
}

- (void)removeTrigger:(HMTrigger *)trigger completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = trigger;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) removeTrigger:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMHome_HMTrigger__removeTrigger_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMTrigger) removeTrigger:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_addTrigger:(id)trigger completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) _addTrigger:completionHandler:]", @"clientCompletionHandler"];
    v46 = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = v45;
      _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v46);
    v50 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v45 userInfo:0];
    objc_exception_throw(v50);
  }

  v9 = context;
  if (context)
  {
    if (triggerCopy)
    {
      name = [triggerCopy name];
      v11 = [name length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      v12 = HMMaxLengthForNaming__hmf_once_v9;

      if (v11 > v12)
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Trigger name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        delegateCaller = [v9 delegateCaller];
        v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
        [delegateCaller callCompletion:handlerCopy error:v18];

        goto LABEL_19;
      }

      currentTriggers = [(HMHome *)self currentTriggers];
      v28 = [currentTriggers containsObject:triggerCopy];

      if (v28)
      {
        context2 = [(HMHome *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:13 userInfo:0];
      }

      else
      {
        home = [triggerCopy home];

        if (!home)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = @"kAddTimerTriggerRequestKey";
            v32 = @"kAddTimerTriggerRequestKey";
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              context2 = [(HMHome *)self context];
              delegateCaller2 = [context2 delegateCaller];
              v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:22 userInfo:0];
              goto LABEL_18;
            }

            v39 = @"kAddEventTriggerRequestKey";
            predicate = [triggerCopy predicate];
            v41 = [HMPredicateUtilities validatePredicate:predicate];

            if (!v41)
            {
              context3 = [(HMHome *)self context];
              delegateCaller3 = [context3 delegateCaller];
              v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
              [delegateCaller3 callCompletion:handlerCopy error:v44];

              goto LABEL_19;
            }

            v31 = @"kAddEventTriggerRequestKey";
          }

          _serializeForAdd = [triggerCopy _serializeForAdd];
          v34 = MEMORY[0x1E69A2A10];
          messageDestination = [(HMHome *)self messageDestination];
          v36 = [v34 messageWithName:v31 destination:messageDestination payload:_serializeForAdd];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v58 = __Block_byref_object_copy__31767;
          v59 = __Block_byref_object_dispose__31768;
          v37 = triggerCopy;
          v60 = v37;
          objc_initWeak(&location, self);
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __51__HMHome_HMTrigger___addTrigger_completionHandler___block_invoke;
          v51[3] = &unk_1E7549FE8;
          objc_copyWeak(&v55, &location);
          v52 = v37;
          v54 = buf;
          v53 = handlerCopy;
          [v36 setResponseHandler:v51];
          messageDispatcher = [v9 messageDispatcher];
          [messageDispatcher sendMessage:v36 completionHandler:0];

          objc_destroyWeak(&v55);
          objc_destroyWeak(&location);
          _Block_object_dispose(buf, 8);

          goto LABEL_19;
        }

        context2 = [(HMHome *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:11 userInfo:0];
      }
    }

    else
    {
      context2 = [(HMHome *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    }

LABEL_18:
    v30 = v26;
    [delegateCaller2 callCompletion:handlerCopy error:v26];

    goto LABEL_19;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = "[HMHome(HMTrigger) _addTrigger:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, v23);

LABEL_19:
}

void __51__HMHome_HMTrigger___addTrigger_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v12 || !v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *(a1 + 40);
  v9 = *(*(*(a1 + 48) + 8) + 40);
  if ((isKindOfClass & 1) == 0)
  {
    if (![WeakRetained _addEventTriggerFromResponse:v5 withEventTrigger:v9 completion:v8])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([WeakRetained _addTimerTriggerFromResponse:v5 withTimerTrigger:v9 completion:v8])
  {
LABEL_7:
    v10 = [WeakRetained context];
    v11 = [v10 delegateCaller];
    [v11 callCompletion:*(a1 + 40) error:v12];
  }

LABEL_8:
}

- (void)addTrigger:(HMTrigger *)trigger completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = trigger;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMTrigger) addTrigger:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HMHome_HMTrigger__addTrigger_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMTrigger) addTrigger:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (NSArray)triggers
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentTriggers = [(HMHome *)self currentTriggers];
  array2 = [currentTriggers array];

  v6 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(array2);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 compatibleWithApp])
        {
          [array addObject:v10];
        }
      }

      v7 = [array2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

- (void)updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMSoftwareUpdate) updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:completionHandler:]", @"completionHandler"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__HMHome_HMSoftwareUpdate__updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    block[4] = self;
    enabledCopy = enabled;
    v23 = handlerCopy;
    v22 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMHome(HMSoftwareUpdate) updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

void __102__HMHome_HMSoftwareUpdate__updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A2A10];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) messageDestination];
  v14 = @"kEnabledKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [v2 messageWithName:@"HM.afue" destination:v4 payload:v6];

  objc_initWeak(&location, *v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__HMHome_HMSoftwareUpdate__updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled_completionHandler___block_invoke_2;
  v9[3] = &unk_1E754A018;
  objc_copyWeak(&v11, &location);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 setResponseHandler:v9];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __102__HMHome_HMSoftwareUpdate__updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    [WeakRetained setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:*(a1 + 48)];
  }

  if (*(a1 + 32))
  {
    v4 = [WeakRetained context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 32) error:v6];
  }
}

- (void)setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_automaticThirdPartyAccessorySoftwareUpdateEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAutomaticThirdPartyAccessorySoftwareUpdateEnabled
{
  os_unfair_lock_lock_with_options();
  automaticThirdPartyAccessorySoftwareUpdateEnabled = self->_automaticThirdPartyAccessorySoftwareUpdateEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return automaticThirdPartyAccessorySoftwareUpdateEnabled;
}

- (void)updateAutomaticSoftwareUpdateEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating automatic software update to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMHome *)selfCopy context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMSoftwareUpdate) updateAutomaticSoftwareUpdateEnabled:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v13 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__HMHome_HMSoftwareUpdate__updateAutomaticSoftwareUpdateEnabled_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    block[4] = selfCopy;
    enabledCopy = enabled;
    v28 = handlerCopy;
    v27 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2080;
      v33 = "[HMHome(HMSoftwareUpdate) updateAutomaticSoftwareUpdateEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v19);
  }
}

void __83__HMHome_HMSoftwareUpdate__updateAutomaticSoftwareUpdateEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A2A10];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) messageDestination];
  v14 = @"kEnabledKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [v2 messageWithName:@"HM.aue" destination:v4 payload:v6];

  objc_initWeak(&location, *v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__HMHome_HMSoftwareUpdate__updateAutomaticSoftwareUpdateEnabled_completionHandler___block_invoke_2;
  v9[3] = &unk_1E754A018;
  objc_copyWeak(&v11, &location);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 setResponseHandler:v9];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __83__HMHome_HMSoftwareUpdate__updateAutomaticSoftwareUpdateEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    [WeakRetained setAutomaticSoftwareUpdateEnabled:*(a1 + 48)];
  }

  if (*(a1 + 32))
  {
    v4 = [WeakRetained context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 32) error:v6];
  }
}

- (void)setAutomaticSoftwareUpdateEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_automaticSoftwareUpdateEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAutomaticSoftwareUpdateEnabled
{
  os_unfair_lock_lock_with_options();
  automaticSoftwareUpdateEnabled = self->_automaticSoftwareUpdateEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return automaticSoftwareUpdateEnabled;
}

- (void)_removeServiceGroup:(id)group completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (groupCopy)
    {
      currentServiceGroups = [(HMHome *)self currentServiceGroups];
      v11 = [currentServiceGroups containsObject:groupCopy];

      if (v11)
      {
        uuid = [groupCopy uuid];
        uuid2 = [(HMHome *)self uuid];
        v29 = @"kServiceGroupUUID";
        uUIDString = [uuid UUIDString];
        v30 = uUIDString;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __64__HMHome_HMServiceGroup___removeServiceGroup_completionHandler___block_invoke;
        v24[3] = &unk_1E754D030;
        v25 = v9;
        v27 = uuid;
        v28 = handlerCopy;
        selfCopy = self;
        delegateCaller = uuid;
        [(_HMContext *)v25 sendMessage:uuid2 target:v15 payload:v24 responseHandler:?];

LABEL_12:
        goto LABEL_13;
      }

      delegateCaller = [v9 delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 2;
    }

    else
    {
      delegateCaller = [context delegateCaller];
      v21 = MEMORY[0x1E696ABC0];
      v22 = 20;
    }

    v23 = [v21 hmErrorWithCode:v22];
    [delegateCaller callCompletion:handlerCopy error:v23];

    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v20;
    v33 = 2080;
    v34 = "[HMHome(HMServiceGroup) _removeServiceGroup:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
    goto LABEL_12;
  }

LABEL_13:
}

void __64__HMHome_HMServiceGroup___removeServiceGroup_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) delegateCaller];
    [v3 callCompletion:*(a1 + 56) error:v6];
  }

  else
  {
    v3 = [*(a1 + 40) serviceGroupWithUUID:*(a1 + 48)];
    if (v3)
    {
      v4 = [*(a1 + 40) currentServiceGroups];
      [v4 removeObject:v3];

      [v3 _unconfigure];
    }

    v5 = [*(a1 + 32) delegateCaller];
    [v5 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)removeServiceGroup:(HMServiceGroup *)group completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = group;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMServiceGroup) removeServiceGroup:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HMHome_HMServiceGroup__removeServiceGroup_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMServiceGroup) removeServiceGroup:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_addServiceGroupWithName:(id)name completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        v22 = [(HMHome *)self serviceGroupWithName:nameCopy];

        if (!v22)
        {
          uuid = [(HMHome *)self uuid];
          v30 = @"kServiceGroupName";
          v31 = nameCopy;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __69__HMHome_HMServiceGroup___addServiceGroupWithName_completionHandler___block_invoke;
          v26[3] = &unk_1E754E480;
          v27 = v9;
          selfCopy = self;
          v29 = handlerCopy;
          [(_HMContext *)v27 sendMessage:uuid target:v25 payload:v26 responseHandler:?];

          goto LABEL_18;
        }

        delegateCaller = [v9 delegateCaller];
        v16 = MEMORY[0x1E696ABC0];
        v17 = 13;
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v14;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Service group name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        delegateCaller = [v9 delegateCaller];
        v16 = MEMORY[0x1E696ABC0];
        v17 = 46;
      }
    }

    else
    {
      delegateCaller = [context delegateCaller];
      v16 = MEMORY[0x1E696ABC0];
      v17 = 20;
    }

    v23 = [v16 hmErrorWithCode:v17];
    [delegateCaller callCompletion:handlerCopy serviceGroup:0 error:v23];

    goto LABEL_17;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v21;
    v34 = 2080;
    v35 = "[HMHome(HMServiceGroup) _addServiceGroupWithName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, delegateCaller);
LABEL_17:
  }

LABEL_18:
}

void __69__HMHome_HMServiceGroup___addServiceGroupWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 48) serviceGroup:0 error:v12];
  }

  else
  {
    v6 = [v5 hmf_UUIDForKey:@"kServiceGroupUUID"];
    v7 = [v5 hmf_stringForKey:@"kServiceGroupName"];
    v8 = [[HMServiceGroup alloc] initWithName:v7 uuid:v6];
    v9 = [*(a1 + 40) context];
    [(HMServiceGroup *)v8 __configureWithContext:v9 home:*(a1 + 40)];

    v10 = [*(a1 + 40) currentServiceGroups];
    [v10 addObject:v8];

    v11 = [*(a1 + 32) delegateCaller];
    [v11 callCompletion:*(a1 + 48) serviceGroup:v8 error:0];
  }
}

- (void)addServiceGroupWithName:(NSString *)serviceGroupName completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = serviceGroupName;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMServiceGroup) addServiceGroupWithName:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HMHome_HMServiceGroup__addServiceGroupWithName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMServiceGroup) addServiceGroupWithName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }
}

- (NSArray)serviceGroups
{
  currentServiceGroups = [(HMHome *)self currentServiceGroups];
  array = [currentServiceGroups array];

  return array;
}

- (void)_removeRoom:(id)room completionHandler:(id)handler
{
  v58 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (!roomCopy)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      goto LABEL_13;
    }

    uuid = [roomCopy uuid];
    roomForEntireHome = [(HMHome(HMRoom) *)self roomForEntireHome];
    uuid2 = [roomForEntireHome uuid];
    v12 = [uuid isEqual:uuid2];

    if (v12)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:29 userInfo:0];
LABEL_13:
      v40 = v15;
      [delegateCaller callCompletion:handlerCopy error:v15];

      goto LABEL_14;
    }

    currentRooms = [(HMHome *)self currentRooms];
    v22 = [currentRooms containsObject:roomCopy];

    if ((v22 & 1) == 0)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      goto LABEL_13;
    }

    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMHome *)self messageTargetUUID];
    v25 = [v23 initWithTarget:messageTargetUUID];

    v26 = MEMORY[0x1E69A2A10];
    v52 = @"kRoomUUID";
    uuid3 = [roomCopy uuid];
    uUIDString = [uuid3 UUIDString];
    v53 = uUIDString;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v30 = [v26 messageWithName:@"kRemoveRoomRequestKey" destination:v25 payload:v29];

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HMHome_HMRoom___removeRoom_completionHandler___block_invoke;
    aBlock[3] = &unk_1E754D988;
    objc_copyWeak(&v51, buf);
    v49 = roomCopy;
    v50 = handlerCopy;
    v31 = _Block_copy(aBlock);
    context3 = [(HMHome *)self context];
    pendingRequests = [context3 pendingRequests];

    identifier = [v30 identifier];
    v35 = _Block_copy(v31);
    [pendingRequests addCompletionBlock:v35 forIdentifier:identifier];

    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __48__HMHome_HMRoom___removeRoom_completionHandler___block_invoke_2;
    v44 = &unk_1E754E480;
    v36 = pendingRequests;
    v45 = v36;
    v37 = identifier;
    v46 = v37;
    v38 = v31;
    v47 = v38;
    [v30 setResponseHandler:&v41];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v30 completionHandler:0];

    objc_destroyWeak(&v51);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v19;
      v56 = 2080;
      v57 = "[HMHome(HMRoom) _removeRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (handlerCopy)
    {
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(handlerCopy + 2))(handlerCopy, v20);
    }
  }

LABEL_14:
}

void __48__HMHome_HMRoom___removeRoom_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3)
  {
    v6 = [WeakRetained currentRooms];
    [v6 removeObject:*(a1 + 32)];

    [*(a1 + 32) _unconfigure];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 zones];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) _removeRoom:*(a1 + 32)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = [v5 context];
  v13 = [v12 delegateCaller];
  [v13 callCompletion:*(a1 + 40) error:v3];
}

void __48__HMHome_HMRoom___removeRoom_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)removeRoom:(HMRoom *)room completionHandler:(void *)completion
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = room;
  v7 = completion;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HMHome_HMRoom__removeRoom_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMHome(HMRoom) removeRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)_addRoomWithName:(id)name completionHandler:(id)handler
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMRoom) _addRoomWithName:completionHandler:]", @"completion"];
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v48;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v49 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v44 userInfo:0];
    objc_exception_throw(v49);
  }

  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        v25 = [nameCopy copy];
        v26 = [(HMHome *)self roomWithName:v25];

        if (v26)
        {
          context2 = [(HMHome *)self context];
          delegateCaller = [context2 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:13 userInfo:0];
          [delegateCaller callCompletion:handlerCopy room:0 error:v29];
        }

        else
        {
          v30 = objc_alloc(MEMORY[0x1E69A2A00]);
          messageTargetUUID = [(HMHome *)self messageTargetUUID];
          v50 = [v30 initWithTarget:messageTargetUUID];

          v32 = MEMORY[0x1E69A2A10];
          v59 = @"kRoomName";
          v60 = v25;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v34 = [v32 messageWithName:@"kAddRoomRequestKey" destination:v50 payload:v33];

          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __53__HMHome_HMRoom___addRoomWithName_completionHandler___block_invoke;
          aBlock[3] = &unk_1E754D058;
          objc_copyWeak(&v58, buf);
          v56 = v25;
          v57 = handlerCopy;
          v35 = _Block_copy(aBlock);
          context3 = [(HMHome *)self context];
          pendingRequests = [context3 pendingRequests];

          identifier = [v34 identifier];
          v39 = _Block_copy(v35);
          [pendingRequests addCompletionBlock:v39 forIdentifier:identifier];

          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __53__HMHome_HMRoom___addRoomWithName_completionHandler___block_invoke_3;
          v51[3] = &unk_1E754E480;
          v40 = pendingRequests;
          v52 = v40;
          v41 = identifier;
          v53 = v41;
          v42 = v35;
          v54 = v42;
          [v34 setResponseHandler:v51];
          messageDispatcher = [v9 messageDispatcher];
          [messageDispatcher sendMessage:v34 completionHandler:0];

          objc_destroyWeak(&v58);
          objc_destroyWeak(buf);
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
          *buf = 138543362;
          v62 = v14;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Room name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        delegateCaller2 = [v9 delegateCaller];
        v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
        [delegateCaller2 callCompletion:handlerCopy room:0 error:v16];
      }
    }

    else
    {
      context4 = [(HMHome *)self context];
      delegateCaller3 = [context4 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [delegateCaller3 callCompletion:handlerCopy room:0 error:v24];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v20;
      v63 = 2080;
      v64 = "[HMHome(HMRoom) _addRoomWithName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

void __53__HMHome_HMRoom___addRoomWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 hmf_UUIDForKey:@"kRoomUUID"];
    if (v9)
    {
      v8 = [[HMRoom alloc] initWithName:*(a1 + 32)];
      [(HMRoom *)v8 setUuid:v9];
      v10 = [WeakRetained context];
      [(HMRoom *)v8 __configureWithContext:v10 home:WeakRetained];

      v11 = [WeakRetained currentRooms];
      [v11 addObject:v8];

      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v8 = 0;
    }
  }

  v12 = [WeakRetained context];
  v13 = [v12 delegateCaller];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__HMHome_HMRoom___addRoomWithName_completionHandler___block_invoke_2;
  v17[3] = &unk_1E754E0F8;
  v14 = *(a1 + 40);
  v19 = v5;
  v20 = v14;
  v18 = v8;
  v15 = v5;
  v16 = v8;
  [v13 invokeBlock:v17];
}

void __53__HMHome_HMRoom___addRoomWithName_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)addRoomWithName:(NSString *)roomName completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = roomName;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMRoom) addRoomWithName:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMHome_HMRoom__addRoomWithName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMRoom) addRoomWithName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }
}

- (NSArray)rooms
{
  currentRooms = [(HMHome *)self currentRooms];
  array = [currentRooms array];

  return array;
}

- (void)reRegisterHMMMHandlers
{
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [HMMMLogOrigin originWithLogIdentifier:uUIDString];

  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock_with_options();
  hmModernMessagingOptionsByMessageName = [(HMHome *)self hmModernMessagingOptionsByMessageName];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__HMHome_HMModernMessagingInternal__reRegisterHMMMHandlers__block_invoke;
  v10[3] = &unk_1E754A1A0;
  v10[4] = v5;
  v10[5] = self;
  v8 = array;
  v11 = v8;
  [hmModernMessagingOptionsByMessageName na_each:v10];

  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__HMHome_HMModernMessagingInternal__reRegisterHMMMHandlers__block_invoke_2297;
  v9[3] = &unk_1E754A1C8;
  v9[4] = self;
  [v8 na_each:v9];
}

void __59__HMHome_HMModernMessagingInternal__reRegisterHMMMHandlers__block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Reregistering with homed for HMMM request handler with message name: %@ options: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "userRestriction")}];
  [v12 setObject:v13 forKeyedSubscript:@"HMMM.options.user.restriction"];

  [v11 setObject:v5 forKeyedSubscript:@"HMMM.payload.key.message.name"];
  [v11 setObject:v12 forKeyedSubscript:@"HMMM.payload.key.options"];
  v14 = objc_alloc(MEMORY[0x1E69A2A00]);
  v15 = [a1[5] messageTargetUUID];
  v16 = [v14 initWithTarget:v15];

  v17 = [MEMORY[0x1E69A2A10] messageWithName:@"HMMM.register.request.handler" destination:v16 payload:v11];
  [a1[6] addObject:v17];
}

void __59__HMHome_HMModernMessagingInternal__reRegisterHMMMHandlers__block_invoke_2297(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 context];
  v4 = [v5 messageDispatcher];
  [v4 sendMessage:v3];
}

- (id)userFromPayload:(id)payload
{
  v4 = [payload hmf_UUIDForKey:@"HMMM.payload.key.user"];
  if (v4)
  {
    currentUser = [(HMHome *)self currentUser];
    uuid = [currentUser uuid];
    v7 = [uuid isEqual:v4];

    if (v7)
    {
      currentUser2 = [(HMHome *)self currentUser];
    }

    else
    {
      users = [(HMHome *)self users];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53__HMHome_HMModernMessagingInternal__userFromPayload___block_invoke;
      v11[3] = &unk_1E754A178;
      v12 = v4;
      currentUser2 = [users na_firstObjectPassingTest:v11];
    }
  }

  else
  {
    currentUser2 = 0;
  }

  return currentUser2;
}

uint64_t __53__HMHome_HMModernMessagingInternal__userFromPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler
{
  v67 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  destinationCopy = destination;
  payloadCopy = payload;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];
  v20 = [HMMMLogOrigin originWithLogIdentifier:uUIDString];

  v54 = nameCopy;
  v21 = [nameCopy copy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = [(HMHome *)self context];
  v56 = v20;
  if (context)
  {
    timeout = [optionsCopy timeout];
    [dictionary setObject:timeout forKeyedSubscript:@"HMMM.options.timeout"];

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "transportRestriction")}];
    [dictionary setObject:v25 forKeyedSubscript:@"HMMM.options.transport.restriction"];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:handlerCopy == 0];
    [dictionary setObject:v26 forKeyedSubscript:@"HMMM.options.oneway"];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:v21 forKeyedSubscript:@"HMMM.payload.key.message.name"];
    v28 = handlerCopy;
    v29 = destinationCopy;
    idsIdentifier = [destinationCopy idsIdentifier];
    [dictionary2 setObject:idsIdentifier forKeyedSubscript:@"HMMM.payload.key.destination.identifier"];

    idsTokenURI = [destinationCopy idsTokenURI];
    [dictionary2 setObject:idsTokenURI forKeyedSubscript:@"HMMM.payload.key.destination.uri"];

    [dictionary2 setObject:dictionary forKeyedSubscript:@"HMMM.payload.key.options"];
    v51 = context;
    [dictionary2 setObject:payloadCopy forKeyedSubscript:@"HMMM.payload.key.payload"];
    v32 = objc_alloc(MEMORY[0x1E69A2A00]);
    [(HMHome *)self messageTargetUUID];
    v49 = optionsCopy;
    v34 = v33 = v21;
    v35 = [v32 initWithTarget:v34];

    v36 = [MEMORY[0x1E69A2A10] messageWithName:@"HMMM.send.request" destination:v35 payload:dictionary2];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __140__HMHome_HMModernMessaging__sendModernMessagingRequestWithMessageName_destination_requestPayload_options_responseHandler_completionHandler___block_invoke;
    v57[3] = &unk_1E754A148;
    v37 = v28;
    v61 = v28;
    v58 = v33;
    v59 = v56;
    v60 = v51;
    v38 = completionHandlerCopy;
    v62 = completionHandlerCopy;
    [v36 setResponseHandler:v57];
    context2 = [(HMHome *)self context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v36];

    v21 = v33;
    v41 = v29;
    v42 = v37;
    v43 = v49;
    context = v51;
    v44 = payloadCopy;
  }

  else
  {
    v52 = handlerCopy;
    v43 = optionsCopy;
    v44 = payloadCopy;
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v48 = v50 = v21;
      *buf = 138543618;
      v64 = v48;
      v65 = 2080;
      v66 = "[HMHome(HMModernMessaging) sendModernMessagingRequestWithMessageName:destination:requestPayload:options:responseHandler:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);

      v21 = v50;
    }

    objc_autoreleasePoolPop(v45);
    v41 = destinationCopy;
    v42 = v52;
    v38 = completionHandlerCopy;
  }
}

void __140__HMHome_HMModernMessaging__sendModernMessagingRequestWithMessageName_destination_requestPayload_options_responseHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = "ClearAllMessage" + 6;
  if (*(a1 + 56))
  {
    v9 = [v6 hmf_dataForKey:@"HMMM.payload.key.payload"];
    v10 = [v7 hmf_stringForKey:@"HMMM.payload.key.destination.identifier"];
    v11 = [v7 hmf_stringForKey:@"HMMM.payload.key.destination.uri"];
    v12 = [HMMMClientResponseHandlerOptions alloc];
    v24 = v10;
    v13 = [[HMMMMessageDestination alloc] initWithIDSIdentifier:v10 idsTokenURI:v11];
    v14 = [(HMMMClientResponseHandlerOptions *)v12 initWithPeerDestination:v13 messageName:*(a1 + 32)];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 32);
      *buf = 138543874;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Response received for HMMT request with message name: %@. Sending response with options: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [*(a1 + 48) delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v8 = "llMessage";
    v28[1] = 3221225472;
    v28[2] = __140__HMHome_HMModernMessaging__sendModernMessagingRequestWithMessageName_destination_requestPayload_options_responseHandler_completionHandler___block_invoke_2288;
    v28[3] = &unk_1E754D208;
    v32 = *(a1 + 56);
    v29 = v9;
    v30 = v14;
    v31 = v5;
    v21 = v14;
    v22 = v9;
    [v20 invokeBlock:v28];
  }

  if (*(a1 + 64))
  {
    v23 = [*(a1 + 48) delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = *(v8 + 185);
    v25[2] = __140__HMHome_HMModernMessaging__sendModernMessagingRequestWithMessageName_destination_requestPayload_options_responseHandler_completionHandler___block_invoke_2;
    v25[3] = &unk_1E754E458;
    v27 = *(a1 + 64);
    v26 = v5;
    [v23 invokeBlock:v25];
  }
}

- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];
  v10 = [HMMMLogOrigin originWithLogIdentifier:uUIDString];

  v11 = [nameCopy copy];
  context = [(HMHome *)self context];
  if (context)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v11 forKeyedSubscript:@"HMMM.payload.key.message.name"];
    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMHome *)self messageTargetUUID];
    v28 = [v13 initWithTarget:messageTargetUUID];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMMM.unregister.request.handler" destination:v28 payload:dictionary];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __102__HMHome_HMModernMessaging__unregisterModernMessagingRequestHandlerWithMessageName_completionHandler___block_invoke;
    v30[3] = &unk_1E754D030;
    v30[4] = v10;
    v16 = v11;
    v31 = v16;
    v33 = handlerCopy;
    v32 = context;
    [v15 setResponseHandler:v30];
    [(HMHome *)self context];
    v17 = context;
    v18 = v11;
    v19 = nameCopy;
    v21 = v20 = handlerCopy;
    [v21 messageDispatcher];
    v23 = v22 = v10;
    [v23 sendMessage:v15];

    v10 = v22;
    handlerCopy = v20;
    nameCopy = v19;
    v11 = v18;
    context = v17;
    [(HMHome *)self _clearRequestHandlerForMessageName:v16];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v27;
      v36 = 2080;
      v37 = "[HMHome(HMModernMessaging) unregisterModernMessagingRequestHandlerWithMessageName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

void __102__HMHome_HMModernMessaging__unregisterModernMessagingRequestHandlerWithMessageName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v5;
    v13 = "%{public}@Error while unregistering HMMM request handler for message name: %@, error: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v17;
    v13 = "%{public}@Unregistered HMMM request handler for message name: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
  }

  _os_log_impl(&dword_19BB39000, v14, v15, v13, buf, v16);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  if (*(a1 + 56))
  {
    v18 = [*(a1 + 48) delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__HMHome_HMModernMessaging__unregisterModernMessagingRequestHandlerWithMessageName_completionHandler___block_invoke_2286;
    v19[3] = &unk_1E754E458;
    v21 = *(a1 + 56);
    v20 = v5;
    [v18 invokeBlock:v19];
  }
}

- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];
  v15 = [HMMMLogOrigin originWithLogIdentifier:uUIDString];

  v16 = [nameCopy copy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "userRestriction")}];
  [dictionary setObject:v18 forKeyedSubscript:@"HMMM.options.user.restriction"];

  context = [(HMHome *)self context];
  v37 = dictionary;
  if (context)
  {
    [MEMORY[0x1E695DF90] dictionary];
    v20 = v34 = nameCopy;
    [v20 setObject:v16 forKeyedSubscript:@"HMMM.payload.key.message.name"];
    [v20 setObject:dictionary forKeyedSubscript:@"HMMM.payload.key.options"];
    v21 = objc_alloc(MEMORY[0x1E69A2A00]);
    [(HMHome *)self messageTargetUUID];
    v23 = v22 = v16;
    v24 = [v21 initWithTarget:v23];

    v25 = [MEMORY[0x1E69A2A10] messageWithName:@"HMMM.register.request.handler" destination:v24 payload:v20];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __123__HMHome_HMModernMessaging__registerModernMessagingRequestHandlerWithMessageName_options_requestHandler_completionHandler___block_invoke;
    v38[3] = &unk_1E754A0F8;
    v38[4] = v15;
    v39 = v22;
    selfCopy = self;
    v43 = handlerCopy;
    v41 = optionsCopy;
    v44 = completionHandlerCopy;
    v42 = context;
    [v25 setResponseHandler:v38];
    context2 = [(HMHome *)self context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v25];

    v28 = v37;
    v29 = handlerCopy;

    nameCopy = v34;
  }

  else
  {
    v22 = v16;
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = v35 = nameCopy;
      *buf = 138543618;
      v46 = v33;
      v47 = 2080;
      v48 = "[HMHome(HMModernMessaging) registerModernMessagingRequestHandlerWithMessageName:options:requestHandler:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);

      nameCopy = v35;
    }

    objc_autoreleasePoolPop(v30);
    v29 = handlerCopy;
    v28 = v37;
  }
}

void __123__HMHome_HMModernMessaging__registerModernMessagingRequestHandlerWithMessageName_options_requestHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
      v12 = *(a1 + 40);
      *buf = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error while registering HMMM request handler for message name: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Registered HMMM request handler for message name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) _setRequestHandler:*(a1 + 72) forMessageName:*(a1 + 40) withOptions:*(a1 + 56)];
  }

  if (*(a1 + 80))
  {
    v15 = [*(a1 + 64) delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __123__HMHome_HMModernMessaging__registerModernMessagingRequestHandlerWithMessageName_options_requestHandler_completionHandler___block_invoke_2285;
    v16[3] = &unk_1E754E458;
    v18 = *(a1 + 80);
    v17 = v5;
    [v15 invokeBlock:v16];
  }
}

- (void)_clearRequestHandlerForMessageName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hmModernMessagingRequestHandlersByMessageName = [(HMHome *)self hmModernMessagingRequestHandlersByMessageName];
  [hmModernMessagingRequestHandlersByMessageName setObject:0 forKeyedSubscript:nameCopy];

  hmModernMessagingOptionsByMessageName = [(HMHome *)self hmModernMessagingOptionsByMessageName];
  [hmModernMessagingOptionsByMessageName setObject:0 forKeyedSubscript:nameCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setRequestHandler:(id)handler forMessageName:(id)name withOptions:(id)options
{
  aBlock = handler;
  nameCopy = name;
  optionsCopy = options;
  os_unfair_lock_lock_with_options();
  v10 = _Block_copy(aBlock);
  hmModernMessagingRequestHandlersByMessageName = [(HMHome *)self hmModernMessagingRequestHandlersByMessageName];
  [hmModernMessagingRequestHandlersByMessageName setObject:v10 forKeyedSubscript:nameCopy];

  hmModernMessagingOptionsByMessageName = [(HMHome *)self hmModernMessagingOptionsByMessageName];
  [hmModernMessagingOptionsByMessageName setObject:optionsCopy forKeyedSubscript:nameCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateMediaPassword:(id)password completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMMediaProfile) updateMediaPassword:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HMHome_HMMediaProfile__updateMediaPassword_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v23 = passwordCopy;
    selfCopy2 = self;
    v26 = handlerCopy;
    v25 = v9;
    dispatch_async(queue, block);

    v11 = v23;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMHome(HMMediaProfile) updateMediaPassword:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __64__HMHome_HMMediaProfile__updateMediaPassword_completionHandler___block_invoke(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v23 = 0;
  v3 = [HMHome isValidMediaPassword:v2 error:&v23];
  v4 = v23;
  if (v3)
  {
    v5 = a1[4];
    if (v5)
    {
      v24 = @"value";
      v25 = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
LABEL_7:
      v7 = MEMORY[0x1E69A2A10];
      v8 = [a1[5] messageDestination];
      v9 = [v7 messageWithName:@"HM.mpw" destination:v8 payload:v6];

      objc_initWeak(location, a1[5]);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __64__HMHome_HMMediaProfile__updateMediaPassword_completionHandler___block_invoke_2137;
      v19 = &unk_1E754D058;
      objc_copyWeak(&v22, location);
      v20 = a1[4];
      v21 = a1[7];
      [v9 setResponseHandler:&v16];
      v10 = [a1[6] messageDispatcher];
      [v10 sendMessage:v9 completionHandler:0];

      objc_destroyWeak(&v22);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = a1[5];
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v15 = a1[4];
    *location = 138543874;
    *&location[4] = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid media password, %@, with error: %@", location, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v6 = [a1[5] context];
  v9 = [v6 delegateCaller];
  [v9 callCompletion:a1[7] error:v4];
LABEL_11:
}

void __64__HMHome_HMMediaProfile__updateMediaPassword_completionHandler___block_invoke_2137(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v6)
  {
    [WeakRetained setMediaPassword:*(a1 + 32)];
  }

  if (*(a1 + 40))
  {
    v4 = [WeakRetained context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 40) error:v6];
  }
}

- (void)setMediaPassword:(id)password
{
  passwordCopy = password;
  os_unfair_lock_lock_with_options();
  v4 = [passwordCopy copy];
  mediaPassword = self->_mediaPassword;
  self->_mediaPassword = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mediaPassword
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaPassword;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateMediaPeerToPeerEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMMediaProfile) updateMediaPeerToPeerEnabled:completionHandler:]", @"completionHandler"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__HMHome_HMMediaProfile__updateMediaPeerToPeerEnabled_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    block[4] = self;
    enabledCopy = enabled;
    v23 = handlerCopy;
    v22 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMHome(HMMediaProfile) updateMediaPeerToPeerEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

void __73__HMHome_HMMediaProfile__updateMediaPeerToPeerEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A2A10];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) messageDestination];
  v14 = @"kEnabledKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [v2 messageWithName:@"HM.p2p" destination:v4 payload:v6];

  objc_initWeak(&location, *v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__HMHome_HMMediaProfile__updateMediaPeerToPeerEnabled_completionHandler___block_invoke_2;
  v9[3] = &unk_1E754A018;
  objc_copyWeak(&v11, &location);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 setResponseHandler:v9];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __73__HMHome_HMMediaProfile__updateMediaPeerToPeerEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    [WeakRetained setMediaPeerToPeerEnabled:*(a1 + 48)];
  }

  if (*(a1 + 32))
  {
    v4 = [WeakRetained context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 32) error:v6];
  }
}

- (void)setMediaPeerToPeerEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_mediaPeerToPeerEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isMediaPeerToPeerEnabled
{
  os_unfair_lock_lock_with_options();
  mediaPeerToPeerEnabled = self->_mediaPeerToPeerEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return mediaPeerToPeerEnabled;
}

- (void)updateMinimumMediaUserPrivilege:(int64_t)privilege completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMMediaProfile) updateMinimumMediaUserPrivilege:completionHandler:]", @"completionHandler"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__HMHome_HMMediaProfile__updateMinimumMediaUserPrivilege_completionHandler___block_invoke;
    block[3] = &unk_1E754E0D0;
    block[4] = self;
    privilegeCopy = privilege;
    v23 = handlerCopy;
    v22 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMHome(HMMediaProfile) updateMinimumMediaUserPrivilege:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

void __76__HMHome_HMMediaProfile__updateMinimumMediaUserPrivilege_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A2A10];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) messageDestination];
  v13 = @"kUserPrivilegeLevelKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v2 messageWithName:@"HM.mup" destination:v4 payload:v6];

  objc_initWeak(&location, *v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__HMHome_HMMediaProfile__updateMinimumMediaUserPrivilege_completionHandler___block_invoke_2;
  v9[3] = &unk_1E754A068;
  objc_copyWeak(v11, &location);
  v11[1] = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 setResponseHandler:v9];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __76__HMHome_HMMediaProfile__updateMinimumMediaUserPrivilege_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    [WeakRetained setMinimumMediaUserPrivilege:*(a1 + 48)];
  }

  if (*(a1 + 32))
  {
    v4 = [WeakRetained context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 32) error:v6];
  }
}

- (void)setMinimumMediaUserPrivilege:(int64_t)privilege
{
  os_unfair_lock_lock_with_options();
  self->_minimumMediaUserPrivilege = privilege;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)minimumMediaUserPrivilege
{
  os_unfair_lock_lock_with_options();
  minimumMediaUserPrivilege = self->_minimumMediaUserPrivilege;
  os_unfair_lock_unlock(&self->_lock);
  return minimumMediaUserPrivilege;
}

- (id)accessoryWithIdsIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accessories = [(HMHome *)self accessories];
  v6 = [accessories countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        device = [v9 device];

        if (device)
        {
          device2 = [v9 device];
          idsIdentifier = [device2 idsIdentifier];
          v13 = [idsIdentifier isEqual:identifierCopy];

          if (v13)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [accessories countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (void)_executeActionSet:(id)set activity:(id)activity reportContext:(id)context completionHandler:(id)handler
{
  v74 = *MEMORY[0x1E69E9840];
  setCopy = set;
  activityCopy = activity;
  contextCopy = context;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) _executeActionSet:activity:reportContext:completionHandler:]", @"completion"];
    v51 = objc_autoreleasePoolPush();
    selfCopy = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v54;
      v72 = 2112;
      v73 = v50;
      _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    v55 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v50 userInfo:0];
    objc_exception_throw(v55);
  }

  if (context)
  {
    if (!setCopy)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      goto LABEL_11;
    }

    actionSetType = [setCopy actionSetType];
    if ([actionSetType isEqualToString:@"HMActionSetTypeTriggerOwned"])
    {
      v12 = isInternalBuild();

      if (!v12)
      {
        context2 = [(HMHome *)self context];
        delegateCaller = [context2 delegateCaller];
        v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
LABEL_11:
        v21 = v15;
        [delegateCaller callCompletion:handlerCopy error:v15];

        goto LABEL_29;
      }
    }

    else
    {
    }

    actionSetType2 = [setCopy actionSetType];
    v23 = [actionSetType2 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

    if (v23)
    {
      actions = [setCopy actions];
      [(HMHome *)self executeActions:actions completionHandler:handlerCopy];

      goto LABEL_29;
    }

    currentActionSets = [(HMHome *)self currentActionSets];
    v26 = [currentActionSets containsObject:setCopy];

    if (v26)
    {
LABEL_16:
      v67[0] = @"kActionSetUUID";
      uuid = [setCopy uuid];
      uUIDString = [uuid UUIDString];
      v67[1] = @"kHomeUUID";
      v68[0] = uUIDString;
      uuid2 = [(HMHome *)self uuid];
      uUIDString2 = [uuid2 UUIDString];
      v68[1] = uUIDString2;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
      v32 = [v31 mutableCopy];

      v33 = _dictionaryRepresentationForReportContext(contextCopy);
      [v32 addEntriesFromDictionary:v33];

      v34 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid3 = [(HMHome *)self uuid];
      v36 = [v34 initWithTarget:uuid3];

      v37 = [MEMORY[0x1E69A2A10] messageWithName:@"kExecuteActionSetRequestKey" destination:v36 payload:v32];
      [v37 setActivity:activityCopy];
      objc_initWeak(buf, self);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __82__HMHome_HMActionSet___executeActionSet_activity_reportContext_completionHandler___block_invoke;
      v60[3] = &unk_1E754CFF8;
      objc_copyWeak(&v62, buf);
      v61 = handlerCopy;
      [v37 setResponseHandler:v60];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v37];

      objc_destroyWeak(&v62);
      objc_destroyWeak(buf);

      goto LABEL_29;
    }

    if (isInternalBuild())
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      triggers = [(HMHome *)self triggers];
      v40 = [triggers countByEnumeratingWithState:&v63 objects:v69 count:16];
      if (v40)
      {
        v41 = 0;
        v42 = *v64;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v64 != v42)
            {
              objc_enumerationMutation(triggers);
            }

            actionSets = [*(*(&v63 + 1) + 8 * i) actionSets];
            uuid4 = [setCopy uuid];
            v46 = [actionSets hmf_firstObjectWithUUID:uuid4];

            v41 |= v46 != 0;
          }

          v40 = [triggers countByEnumeratingWithState:&v63 objects:v69 count:16];
        }

        while (v40);

        if (v41)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    context3 = [(HMHome *)self context];
    delegateCaller2 = [context3 delegateCaller];
    v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v49];

    goto LABEL_29;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v19;
    v72 = 2080;
    v73 = "[HMHome(HMActionSet) _executeActionSet:activity:reportContext:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, v20);

LABEL_29:
}

void __82__HMHome_HMActionSet___executeActionSet_activity_reportContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

- (void)executeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = actionSet;
  v8 = completion;
  v9 = objc_alloc(MEMORY[0x1E69A29C0]);
  v10 = MEMORY[0x1E696AEC0];
  v11 = MEMORY[0x19EAEB2A0](self, a2);
  8817 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 8817];
  v13 = [v9 initWithName:8817];

  context = [(HMHome *)self context];
  if (!v8)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) executeActionSet:completionHandler:]", @"completion"];
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

  v15 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__HMHome_HMActionSet__executeActionSet_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    v29 = v13;
    selfCopy2 = self;
    v31 = v7;
    v32 = v8;
    dispatch_async(queue, block);

    v17 = v29;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2080;
      v36 = "[HMHome(HMActionSet) executeActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v8 + 2))(v8, v17);
  }
}

uint64_t __58__HMHome_HMActionSet__executeActionSet_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _executeActionSet:*(a1 + 48) activity:*(a1 + 32) reportContext:0 completionHandler:*(a1 + 56)];
  v2 = *(a1 + 32);

  return [v2 end];
}

- (void)_removeActionSet:(id)set completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  setCopy = set;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) _removeActionSet:completionHandler:]", @"clientCompletionHandler"];
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v34;
      v43 = 2112;
      v44 = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v9 = context;
  if (context)
  {
    if (!setCopy)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      goto LABEL_13;
    }

    actionSetType = [setCopy actionSetType];
    v11 = [actionSetType isEqualToString:@"HMActionSetTypeTriggerOwned"];

    if (v11)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
LABEL_13:
      v29 = v14;
      [delegateCaller callCompletion:handlerCopy error:v14];

      goto LABEL_14;
    }

    currentActionSets = [(HMHome *)self currentActionSets];
    v21 = [currentActionSets containsObject:setCopy];

    if ((v21 & 1) == 0)
    {
      context2 = [(HMHome *)self context];
      delegateCaller = [context2 delegateCaller];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      goto LABEL_13;
    }

    v39 = @"kActionSetUUID";
    uuid = [setCopy uuid];
    uUIDString = [uuid UUIDString];
    v40 = uUIDString;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    v25 = MEMORY[0x1E69A2A10];
    messageDestination = [(HMHome *)self messageDestination];
    v27 = [v25 messageWithName:@"kRemoveActionSetRequestKey" destination:messageDestination payload:v24];

    objc_initWeak(buf, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __58__HMHome_HMActionSet___removeActionSet_completionHandler___block_invoke;
    v36[3] = &unk_1E754CFF8;
    objc_copyWeak(&v38, buf);
    v37 = handlerCopy;
    [v27 setResponseHandler:v36];
    messageDispatcher = [v9 messageDispatcher];
    [messageDispatcher sendMessage:v27 completionHandler:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v18;
      v43 = 2080;
      v44 = "[HMHome(HMActionSet) _removeActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v19);
  }

LABEL_14:
}

void __58__HMHome_HMActionSet___removeActionSet_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9 || !v5 || [WeakRetained _handleActionSetRemovedFromResponse:*(a1 + 32) responsePayload:v5])
  {
    v7 = [WeakRetained context];
    v8 = [v7 delegateCaller];
    [v8 callCompletion:*(a1 + 32) error:v9];
  }
}

- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = actionSet;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) removeActionSet:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMHome_HMActionSet__removeActionSet_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMActionSet) removeActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_addActionSetWithName:(id)name completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) _addActionSetWithName:completionHandler:]", @"clientCompletionHandler"];
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v38;
      v47 = 2112;
      v48 = v34;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v34 userInfo:0];
    objc_exception_throw(v39);
  }

  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 > HMMaxLengthForNaming__hmf_once_v9)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v46 = v14;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Action set name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        delegateCaller = [v9 delegateCaller];
        v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
        [delegateCaller callCompletion:handlerCopy actionSet:0 error:v16];

        goto LABEL_17;
      }

      v25 = [(HMHome *)self actionSetWithName:nameCopy];

      if (!v25)
      {
        v27 = MEMORY[0x1E69A2A10];
        v28 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMHome *)self uuid];
        v30 = [v28 initWithTarget:uuid];
        v43 = @"kActionSetName";
        v44 = nameCopy;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v32 = [v27 messageWithName:@"kAddActionSetRequestKey" destination:v30 payload:v31];

        objc_initWeak(buf, self);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __63__HMHome_HMActionSet___addActionSetWithName_completionHandler___block_invoke;
        v40[3] = &unk_1E754CFF8;
        objc_copyWeak(&v42, buf);
        v41 = handlerCopy;
        [v32 setResponseHandler:v40];
        messageDispatcher = [v9 messageDispatcher];
        [messageDispatcher sendMessage:v32 completionHandler:0];

        objc_destroyWeak(&v42);
        objc_destroyWeak(buf);

        goto LABEL_17;
      }

      context2 = [(HMHome *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:13 userInfo:0];
    }

    else
    {
      context2 = [(HMHome *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    }

    v26 = v24;
    [delegateCaller2 callCompletion:handlerCopy actionSet:0 error:v24];

    goto LABEL_17;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v20;
    v47 = 2080;
    v48 = "[HMHome(HMActionSet) _addActionSetWithName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, 0, v21);

LABEL_17:
}

void __63__HMHome_HMActionSet___addActionSetWithName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9 || !v5 || [WeakRetained _addActionSetFromResponse:v5 completion:*(a1 + 32)])
  {
    v7 = [WeakRetained context];
    v8 = [v7 delegateCaller];
    [v8 callCompletion:*(a1 + 32) actionSet:0 error:v9];
  }
}

- (void)addActionSetWithName:(NSString *)actionSetName completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = actionSetName;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionSet) addActionSetWithName:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMHome_HMActionSet__addActionSetWithName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMActionSet) addActionSetWithName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }
}

- (HMActionSet)builtinActionSetOfType:(NSString *)actionSetType
{
  v4 = actionSetType;
  if ([(NSString *)v4 isEqualToString:@"HMActionSetTypeUserDefined"])
  {
    v5 = 0;
  }

  else
  {
    currentActionSets = [(HMHome *)self currentActionSets];
    v5 = [currentActionSets firstItemWithValue:v4 forKey:@"actionSetType"];
  }

  return v5;
}

- (NSArray)triggerOwnedActionSets
{
  currentTriggerOwnedActionSets = [(HMHome *)self currentTriggerOwnedActionSets];
  array = [currentTriggerOwnedActionSets array];

  return array;
}

- (NSArray)actionSets
{
  currentActionSets = [(HMHome *)self currentActionSets];
  array = [currentActionSets array];

  return array;
}

- (void)retrieveResultsWithReportingContext:(id)context progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (handlerCopy)
    {
      v13 = objc_alloc(MEMORY[0x1E69A29C0]);
      v14 = MEMORY[0x1E696AEC0];
      v15 = MEMORY[0x19EAEB2A0](self, a2);
      7933 = [v14 stringWithFormat:@"%@, %s:%ld", v15, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 7933];
      v17 = [v13 initWithName:7933];

      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__HMHome_HMAccessory__retrieveResultsWithReportingContext_progressHandler_completionHandler___block_invoke;
      block[3] = &unk_1E7549F68;
      v27 = v17;
      selfCopy = self;
      v29 = contextCopy;
      v30 = handlerCopy;
      v31 = completionHandlerCopy;
      v19 = v17;
      dispatch_async(queue, block);

LABEL_10:
      goto LABEL_11;
    }

    v24 = MEMORY[0x1E696ABC0];
    v25 = 20;
LABEL_9:
    v19 = [v24 hmErrorWithCode:v25];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, v19);
    goto LABEL_10;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v23;
    v34 = 2080;
    v35 = "[HMHome(HMAccessory) retrieveResultsWithReportingContext:progressHandler:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  if (completionHandlerCopy)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = 12;
    goto LABEL_9;
  }

LABEL_11:
}

uint64_t __93__HMHome_HMAccessory__retrieveResultsWithReportingContext_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _retrieveResultsWithReportingContext:*(a1 + 48) progressHandler:*(a1 + 56) completionHandler:*(a1 + 64) activity:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [v2 end];
}

- (void)_retrieveResultsWithReportingContext:(id)context progressHandler:(id)handler completionHandler:(id)completionHandler activity:(id)activity
{
  v10 = MEMORY[0x1E695DF90];
  activityCopy = activity;
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  contextCopy = context;
  dictionary = [v10 dictionary];
  v16 = _dictionaryRepresentationForReportContext(contextCopy);

  [dictionary addEntriesFromDictionary:v16];
  v17 = [MEMORY[0x1E69A2A10] messageWithName:@"HM.retrieveAsyncResults" messagePayload:dictionary];
  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMHome *)self uuid];
  v20 = [v18 initWithTarget:uuid];
  [v17 setDestination:v20];

  [v17 setActivity:activityCopy];
  v21 = [(HMHome *)self __responseHandlerForRequests:0 progressHandler:handlerCopy completionHandler:completionHandlerCopy activity:activityCopy];

  context = [(HMHome *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [v17 identifier];
  v25 = _Block_copy(v21);
  [pendingRequests addCompletionBlock:v25 forIdentifier:identifier];

  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __103__HMHome_HMAccessory___retrieveResultsWithReportingContext_progressHandler_completionHandler_activity___block_invoke;
  v33 = &unk_1E754E570;
  v34 = pendingRequests;
  v35 = identifier;
  v26 = identifier;
  v27 = pendingRequests;
  [v17 setResponseHandler:&v30];
  v28 = [(HMHome *)self context:v30];
  messageDispatcher = [v28 messageDispatcher];
  [messageDispatcher sendMessage:v17];
}

void __103__HMHome_HMAccessory___retrieveResultsWithReportingContext_progressHandler_completionHandler_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, v6, 0, 0);
    }

    v3 = v6;
  }
}

- (void)_performBatchRequest:(id)request activity:(id)activity
{
  v129 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  activityCopy = activity;
  context = [(HMHome *)self context];
  if (context)
  {
    v100 = a2;
    selfCopy = self;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requests = [requestCopy requests];
    v11 = [requests count];

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    v106 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    clientContext = [requestCopy clientContext];
    metricIdentifier = [clientContext metricIdentifier];
    v101 = activityCopy;
    [activityCopy setClientMetricIdentifier:metricIdentifier];

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = [requestCopy requests];
    v107 = dictionary;
    v109 = [obj countByEnumeratingWithState:&v118 objects:v124 count:16];
    v15 = 0;
    if (!v109)
    {
      goto LABEL_56;
    }

    v110 = *v119;
    v105 = v12;
    v102 = requestCopy;
LABEL_4:
    v16 = 0;
    while (1)
    {
      if (*v119 != v110)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v118 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      delegateCaller2 = v18;

      if (delegateCaller2)
      {
        v93 = objc_autoreleasePoolPush();
        v94 = selfCopy;
        v95 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v96 = HMFGetLogIdentifier();
          *buf = 138543618;
          v126 = v96;
          v127 = 2112;
          v128 = delegateCaller2;
          _os_log_impl(&dword_19BB39000, v95, OS_LOG_TYPE_ERROR, "%{public}@Attribute requests not yet supported %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v93);
        requestCopy = v102;
        completionHandler = [v102 completionHandler];
        v98 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
        (completionHandler)[2](completionHandler, v98);

        goto LABEL_69;
      }

      v20 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      delegateCaller2 = v21;

      if (delegateCaller2)
      {
        requestCopy = v102;
        [(HMHome *)selfCopy __handleExecuteRequest:delegateCaller2 activity:v101 batchRequest:v102];
        goto LABEL_70;
      }

      v22 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      v25 = v24;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      v28 = v25;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v114 = v29;

      characteristic = [v28 characteristic];
      service = [characteristic service];
      targetAccessoryUUID = [service targetAccessoryUUID];
      v33 = targetAccessoryUUID;
      v113 = v27;
      if (!targetAccessoryUUID)
      {
        uUIDString = [[HMCharacteristicResponse alloc] initWithRequest:v28 value:0 error:v106];
        [v12 addObject:uUIDString];
        v41 = 5;
        goto LABEL_52;
      }

      uUIDString = [targetAccessoryUUID UUIDString];
      dictionary2 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
      if (dictionary2)
      {
        if (v27)
        {
          goto LABEL_27;
        }
      }

      else
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:? forKey:?];
        if (v27)
        {
LABEL_27:
          if (v15)
          {
            v111 = v15;
            if (([(__CFString *)v15 isEqual:@"kMultipleCharacteristicReadRequestKey"]& 1) == 0)
            {
              v35 = objc_autoreleasePoolPush();
              v36 = selfCopy;
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v38 = HMFGetLogIdentifier();
                *buf = 138543618;
                v126 = v38;
                v127 = 2112;
                v128 = v111;
                v39 = v37;
                v40 = "%{public}@Batch request does not support combining read requests with other request types - %@";
                goto LABEL_38;
              }

LABEL_39:

              objc_autoreleasePoolPop(v35);
              completionHandler2 = [v102 completionHandler];
              instanceID3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
              (completionHandler2)[2](completionHandler2, instanceID3);
              v41 = 1;
              goto LABEL_50;
            }
          }

          else
          {
            v44 = @"kMultipleCharacteristicReadRequestKey";
            v111 = @"kMultipleCharacteristicReadRequestKey";
          }

          instanceID = [service instanceID];
          stringValue = [instanceID stringValue];
          completionHandler2 = [dictionary2 hmf_mutableArrayForKey:stringValue];

          if (!completionHandler2)
          {
            completionHandler2 = [MEMORY[0x1E695DF70] array];
            instanceID2 = [service instanceID];
            stringValue2 = [instanceID2 stringValue];
            [dictionary2 setObject:completionHandler2 forKey:stringValue2];
          }

          instanceID3 = [characteristic instanceID];
          [completionHandler2 addObject:instanceID3];
          goto LABEL_49;
        }
      }

      if (v114)
      {
        if (v15)
        {
          v111 = v15;
          if (([(__CFString *)v15 isEqual:@"kMultipleCharacteristicWriteRequestKey"]& 1) == 0)
          {
            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543618;
              v126 = v38;
              v127 = 2112;
              v128 = v111;
              v39 = v37;
              v40 = "%{public}@Batch request does not support combining write requests with other request types - %@";
LABEL_38:
              _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, v40, buf, 0x16u);

              dictionary = v107;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v49 = @"kMultipleCharacteristicWriteRequestKey";
          v111 = @"kMultipleCharacteristicWriteRequestKey";
        }

        instanceID4 = [service instanceID];
        stringValue3 = [instanceID4 stringValue];
        completionHandler2 = [dictionary2 hmf_mutableDictionaryForKey:stringValue3];

        if (!completionHandler2)
        {
          completionHandler2 = [MEMORY[0x1E695DF90] dictionary];
          instanceID5 = [service instanceID];
          stringValue4 = [instanceID5 stringValue];
          [dictionary2 setObject:completionHandler2 forKey:stringValue4];
        }

        instanceID3 = [v114 value];
        instanceID6 = [characteristic instanceID];
        stringValue5 = [instanceID6 stringValue];
        [completionHandler2 setObject:instanceID3 forKey:stringValue5];

LABEL_49:
        v41 = 0;
        dictionary = v107;
LABEL_50:

        v12 = v105;
        v15 = v111;
        goto LABEL_51;
      }

      v41 = 0;
LABEL_51:

LABEL_52:
      if (v41 != 5 && v41)
      {
        requestCopy = v102;
        goto LABEL_71;
      }

      if (v109 == ++v16)
      {
        requestCopy = v102;
        v109 = [obj countByEnumeratingWithState:&v118 objects:v124 count:16];
        if (v109)
        {
          goto LABEL_4;
        }

LABEL_56:

        if ([v12 count])
        {
          delegateCaller = [context delegateCaller];
          progressHandler = [requestCopy progressHandler];
          [delegateCaller callCompletion:progressHandler array:v12];
        }

        if ([dictionary count])
        {
          v58 = objc_alloc(MEMORY[0x1E69A29C0]);
          v59 = MEMORY[0x1E696AEC0];
          v60 = MEMORY[0x19EAEB2A0](selfCopy, v100);
          [v59 stringWithFormat:@"%@, %s:%ld", v60, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 7831];
          v62 = v61 = requestCopy;
          v63 = [v58 initWithName:v62];

          requests2 = [v61 requests];
          [requests2 count];

          requests3 = [v61 requests];
          progressHandler2 = [v61 progressHandler];
          completionHandler3 = [v61 completionHandler];
          v68 = [(HMHome *)selfCopy __responseHandlerForRequests:requests3 progressHandler:progressHandler2 completionHandler:completionHandler3 activity:v63];

          v123[0] = v107;
          v122[0] = @"kAccessoriesListKey";
          v122[1] = @"kHomeUUID";
          uuid = [(HMHome *)selfCopy uuid];
          uUIDString2 = [uuid UUIDString];
          v122[2] = @"kMultiPartResponseKey";
          v123[1] = uUIDString2;
          v123[2] = MEMORY[0x1E695E118];
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];
          delegateCaller2 = [v71 mutableCopy];

          reportContext = [v61 reportContext];
          v73 = _dictionaryRepresentationForReportContext(reportContext);
          [delegateCaller2 addEntriesFromDictionary:v73];

          v74 = objc_alloc(MEMORY[0x1E69A2A10]);
          v75 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid2 = [(HMHome *)selfCopy uuid];
          v77 = [v75 initWithTarget:uuid2];
          v78 = [v74 initWithName:v15 destination:v77 payload:delegateCaller2];

          [v78 setActivity:v63];
          pendingRequests = [context pendingRequests];
          identifier = [v78 identifier];
          obj = v68;
          v81 = _Block_copy(v68);
          v82 = v15;
          v83 = v81;
          [pendingRequests addCompletionBlock:v81 forIdentifier:identifier];

          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 3221225472;
          v115[2] = __53__HMHome_HMAccessory___performBatchRequest_activity___block_invoke;
          v115[3] = &unk_1E754E570;
          v116 = pendingRequests;
          v117 = identifier;
          v84 = identifier;
          v85 = pendingRequests;
          [v78 setResponseHandler:v115];
          messageDispatcher = [context messageDispatcher];
          [messageDispatcher sendMessage:v78];

          v15 = v82;
          [v63 end];

          requestCopy = v61;
          dictionary = v107;

          v101 = v63;
        }

        else
        {
          v99 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
          delegateCaller2 = [context delegateCaller];
          completionHandler = [requestCopy completionHandler];
          obj = v99;
          [delegateCaller2 callCompletion:completionHandler error:v99];
LABEL_69:
        }

LABEL_70:

LABEL_71:
        activityCopy = v101;
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  v87 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v89 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v91 = v90 = requestCopy;
    *buf = 138543618;
    v126 = v91;
    v127 = 2080;
    v128 = "[HMHome(HMAccessory) _performBatchRequest:activity:]";
    _os_log_impl(&dword_19BB39000, v89, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);

    requestCopy = v90;
  }

  objc_autoreleasePoolPop(v87);
  completionHandler4 = [requestCopy completionHandler];

  if (completionHandler4)
  {
    dictionary = [requestCopy completionHandler];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (dictionary)[2](dictionary, v12);
    goto LABEL_72;
  }

LABEL_73:
}

void __53__HMHome_HMAccessory___performBatchRequest_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, v6, 0, 0);
    }

    v3 = v6;
  }
}

- (id)__responseHandlerForRequests:(id)requests progressHandler:(id)handler completionHandler:(id)completionHandler activity:(id)activity
{
  requestsCopy = requests;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  activityCopy = activity;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__HMHome_HMAccessory____responseHandlerForRequests_progressHandler_completionHandler_activity___block_invoke;
  v20[3] = &unk_1E7549F40;
  objc_copyWeak(&v25, &location);
  v21 = activityCopy;
  v22 = requestsCopy;
  v23 = handlerCopy;
  v24 = completionHandlerCopy;
  v14 = completionHandlerCopy;
  v15 = handlerCopy;
  v16 = requestsCopy;
  v17 = activityCopy;
  v18 = _Block_copy(v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v18;
}

void __95__HMHome_HMAccessory____responseHandlerForRequests_progressHandler_completionHandler_activity___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v45 = a1;
  [*(a1 + 32) begin];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = v6;
  v43 = [v7 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v43)
  {
    v41 = *v52;
    v42 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v7);
        }

        v46 = v8;
        v44 = *(*(&v51 + 1) + 8 * v8);
        v9 = [v44 request];
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

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v12 = *(v45 + 40);
        v13 = [v12 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v48;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v48 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v47 + 1) + 8 * v16);
            objc_opt_class();
            v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v17 : 0;
            v19 = v18;

            v20 = [v19 characteristic];
            v21 = [v11 characteristic];
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v14)
              {
                goto LABEL_11;
              }

              goto LABEL_20;
            }
          }

          if (!v19)
          {
            goto LABEL_23;
          }

          [v44 setRequest:v19];
          v23 = [v19 characteristic];
          v24 = [v23 service];
          v25 = *(v45 + 32);
          v26 = [v24 accessory];
          [v26 uuid];

          [v23 instanceID];
          v27 = [v44 error];
          [v27 domain];

          v28 = [v44 error];

          [v28 code];
        }

        else
        {
LABEL_20:

LABEL_23:
          v17 = [v11 characteristic];
          v23 = [v17 service];
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [v17 uniqueIdentifier];
            *buf = 138543618;
            v56 = v31;
            v57 = 2112;
            v58 = v32;
            _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@Unable to match the response characteristic %@ with request", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v33 = [v23 accessory];
          [v33 uuid];

          v24 = [v17 instanceID];
        }

        v7 = v42;

        v8 = v46 + 1;
      }

      while (v46 + 1 != v43);
      v43 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v43);
  }

  if ([v7 count])
  {
    [*(v45 + 32) markWithReason:@"Calling progress handler"];
    v34 = [WeakRetained context];
    v35 = [v34 delegateCaller];
    [v35 callCompletion:*(v45 + 48) array:v7];
  }

  if ((a3 & 1) == 0)
  {
    [*(v45 + 32) markWithReason:@"Calling completion handler"];
    [v7 count];
    [v40 domain];

    [v40 code];
    v36 = [WeakRetained context];
    v37 = [v36 delegateCaller];
    [v37 callCompletion:*(v45 + 56) error:v40];
  }

  [*(v45 + 32) end];
}

- (void)__handleExecuteRequest:(id)request activity:(id)activity batchRequest:(id)batchRequest
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  activityCopy = activity;
  batchRequestCopy = batchRequest;
  requests = [batchRequestCopy requests];
  v12 = [requests count];

  if (v12 < 2)
  {
    actionSet = [requestCopy actionSet];
    reportContext = [batchRequestCopy reportContext];
    completionHandler = [batchRequestCopy completionHandler];
    [(HMHome *)self _executeActionSet:actionSet activity:activityCopy reportContext:reportContext completionHandler:completionHandler];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Batch execute request does not support multiple requests - have %lu", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    actionSet = [batchRequestCopy completionHandler];
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    (actionSet)[2](actionSet, v18);
  }
}

- (void)performBatchRequest:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = objc_alloc(MEMORY[0x1E69A29C0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x19EAEB2A0](self, a2);
  7613 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 7613];
  v10 = [v6 initWithName:7613];

  completionHandler = [requestCopy completionHandler];
  if (!completionHandler || (v12 = completionHandler, [requestCopy progressHandler], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v22);
  }

  context = [(HMHome *)self context];
  if (context)
  {
    [v10 begin];
    [(HMHome *)self _performBatchRequest:requestCopy activity:v10];
    [v10 end];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v18;
      v25 = 2080;
      v26 = "[HMHome(HMAccessory) performBatchRequest:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    completionHandler2 = [requestCopy completionHandler];

    if (completionHandler2)
    {
      completionHandler3 = [requestCopy completionHandler];
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (completionHandler3)[2](completionHandler3, v21);
    }
  }
}

- (void)performBatchCharacteristicRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = objc_alloc(MEMORY[0x1E69A29C0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x19EAEB2A0](self, a2);
  7595 = [v7 stringWithFormat:@"%@, %s:%ld", v8, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 7595];
  v10 = [v6 initWithName:7595];

  completionHandler = [requestCopy completionHandler];
  if (!completionHandler || (v12 = completionHandler, [requestCopy progressHandler], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v23);
  }

  context = [(HMHome *)self context];
  if (context)
  {
    [v10 begin];
    batchRequest = [requestCopy batchRequest];
    [(HMHome *)self _performBatchRequest:batchRequest activity:v10];

    [v10 end];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2080;
      v27 = "[HMHome(HMAccessory) performBatchCharacteristicRequest:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    completionHandler2 = [requestCopy completionHandler];

    if (completionHandler2)
    {
      completionHandler3 = [requestCopy completionHandler];
      v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (completionHandler3)[2](completionHandler3, v22);
    }
  }
}

- (void)unblockAccessory:(HMAccessory *)accessory completionHandler:(void *)completion
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = accessory;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) unblockAccessory:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__HMHome_HMAccessory__unblockAccessory_completionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v23 = v7;
    dispatch_async(queue, block);

    v11 = v23;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMHome(HMAccessory) unblockAccessory:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v11);
  }
}

void __58__HMHome_HMAccessory__unblockAccessory_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) context];
    v2 = [v3 delegateCaller];
    [v2 callCompletion:*(a1 + 40) error:0];
  }
}

- (NSArray)servicesWithTypes:(NSArray *)serviceTypes
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = serviceTypes;
  v5 = v4;
  if (v4 && [(NSArray *)v4 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(HMHome *)self accessories];
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          services = [v8 services];
          v10 = [services countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(services);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                serviceType = [v14 serviceType];
                v16 = [(NSArray *)v5 containsObject:serviceType];

                if (v16)
                {
                  [array addObject:v14];
                }
              }

              v11 = [services countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    if ([array count])
    {
      v17 = array;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_assignAccessory:(id)accessory toRoom:(id)room completionHandler:(id)handler
{
  handlerCopy = handler;
  if (accessory && room)
  {
    [accessory _updateRoom:room completionHandler:handlerCopy];
    v8 = handlerCopy;
  }

  else
  {
    context = [(HMHome *)self context];
    delegateCaller = [context delegateCaller];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller callCompletion:handlerCopy error:v11];

    v8 = context;
  }
}

- (void)assignAccessory:(HMAccessory *)accessory toRoom:(HMRoom *)room completionHandler:(void *)completion
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = accessory;
  v9 = room;
  v10 = completion;
  context = [(HMHome *)self context];
  if (!v10)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) assignAccessory:toRoom:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v12 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__HMHome_HMAccessory__assignAccessory_toRoom_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    block[4] = self;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    dispatch_async(queue, block);
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
      v30 = v17;
      v31 = 2080;
      v32 = "[HMHome(HMAccessory) assignAccessory:toRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v18);
  }
}

- (void)_removeAccessory:(id)accessory completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  v9 = context;
  if (context)
  {
    if (accessoryCopy)
    {
      uuid = [(HMHome *)self uuid];
      v24 = @"kAccessoryUUID";
      uuid2 = [accessoryCopy uuid];
      uUIDString = [uuid2 UUIDString];
      v25 = uUIDString;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__HMHome_HMAccessory___removeAccessory_completionHandler___block_invoke;
      v20[3] = &unk_1E754E480;
      v21 = v9;
      selfCopy = self;
      v23 = handlerCopy;
      [(_HMContext *)v21 sendMessage:uuid target:v13 payload:v20 responseHandler:?];

      goto LABEL_10;
    }

    delegateCaller = [context delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:handlerCopy error:v19];

LABEL_9:
    goto LABEL_10;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v17;
    v28 = 2080;
    v29 = "[HMHome(HMAccessory) _removeAccessory:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
    goto LABEL_9;
  }

LABEL_10:
}

void __58__HMHome_HMAccessory___removeAccessory_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = v9;
  }

  else
  {
    [*(a1 + 40) _handleAccessoryRemovedResponse:a3];
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)removeAccessory:(HMAccessory *)accessory completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = accessory;
  v7 = completion;
  context = [(HMHome *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) removeAccessory:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMHome_HMAccessory__removeAccessory_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMAccessory) removeAccessory:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_cancelPairingForAccessoryWithDescription:(id)description completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    if (descriptionCopy)
    {
      v9 = encodeRootObject(descriptionCopy);
      context3 = v9;
      if (v9)
      {
        v30 = @"kAccessoryDescriptionDataKey";
        v31 = v9;
        context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v12 = objc_alloc(MEMORY[0x1E69A2A10]);
        v13 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMHome *)self uuid];
        v15 = [v13 initWithTarget:uuid];
        delegateCaller = [v12 initWithName:@"kCancelPairingAccessoryRequestKey" destination:v15 payload:context2];

        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __83__HMHome_HMAccessory___cancelPairingForAccessoryWithDescription_completionHandler___block_invoke;
        v27 = &unk_1E754DE00;
        v17 = context;
        v28 = v17;
        v29 = handlerCopy;
        [delegateCaller setResponseHandler:&v24];
        messageDispatcher = [v17 messageDispatcher];
        [messageDispatcher sendMessage:delegateCaller];
      }

      else
      {
        context2 = [(HMHome *)self context];
        delegateCaller = [context2 delegateCaller];
        v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
        [delegateCaller callCompletion:handlerCopy error:v23];
      }
    }

    else
    {
      context3 = [(HMHome *)self context];
      context2 = [context3 delegateCaller];
      delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [context2 callCompletion:handlerCopy error:delegateCaller];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v22;
      v34 = 2080;
      v35 = "[HMHome(HMAccessory) _cancelPairingForAccessoryWithDescription:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __83__HMHome_HMAccessory___cancelPairingForAccessoryWithDescription_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)cancelPairingForAccessoryWithDescription:(id)description completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) cancelPairingForAccessoryWithDescription:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__HMHome_HMAccessory__cancelPairingForAccessoryWithDescription_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = descriptionCopy;
    v24 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMAccessory) cancelPairingForAccessoryWithDescription:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)userDidRespondToConsentRequestForSetupAccessoryDescription:(id)description withResponse:(int64_t)response
{
  v29 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  context = [(HMHome *)self context];
  if (context)
  {
    v8 = encodeRootObject(descriptionCopy);
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E69A29F8];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{response, @"kAccessoryDescriptionDataKey", @"HMHomeUserConsentResponseForAccessoryMessageKey", v8}];
      v24[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:2];
      v13 = [v10 messageWithName:@"HMHomeUserConsentForAccessoryReplacementRequestKey" messagePayload:v12];

      messageDispatcher = [context messageDispatcher];
      uuid = [(HMHome *)self uuid];
      [messageDispatcher sendMessage:v13 target:uuid andInvokeCompletionHandler:&__block_literal_global_1939];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@unable to encode accessory description in user consent response", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2080;
      v28 = "[HMHome(HMAccessory) userDidRespondToConsentRequestForSetupAccessoryDescription:withResponse:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)_startPairingWithAccessoryDescription:(id)description progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v65 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(HMHome *)self context];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (context)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v15;
      v63 = 2112;
      v64 = descriptionCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Starting pairing with accessory description: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (descriptionCopy)
    {
      v48 = encodeRootObject(descriptionCopy);
      if (v48)
      {
        appIdentifier = [descriptionCopy appIdentifier];
        if (!appIdentifier)
        {
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          appIdentifier = [mainBundle bundleIdentifier];
        }

        delegateCaller = objc_alloc_init(HMAddAccessoryRequestPayload);
        [(HMAddAccessoryRequestPayload *)delegateCaller setAccessoryDescription:descriptionCopy];
        [(HMAddAccessoryRequestPayload *)delegateCaller setSetupCodeDeferred:1];
        -[HMAddAccessoryRequestPayload setShouldRetrySetup:](delegateCaller, "setShouldRetrySetup:", [descriptionCopy retry]);
        setupAccessoryPayload = [descriptionCopy setupAccessoryPayload];
        v19 = objc_alloc(MEMORY[0x1E69A29C0]);
        v20 = MEMORY[0x1E696AEC0];
        v21 = MEMORY[0x19EAEB2A0](selfCopy, a2);
        7401 = [v20 stringWithFormat:@"%@, %s:%ld", v21, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 7401];
        v23 = [v19 initWithName:7401];

        [(HMHome *)selfCopy uuid];
        [setupAccessoryPayload categoryNumber];

        if (setupAccessoryPayload)
        {
          [setupAccessoryPayload supportsBTLE];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __95__HMHome_HMAccessory___startPairingWithAccessoryDescription_progressHandler_completionHandler___block_invoke;
        aBlock[3] = &unk_1E7549EF0;
        v47 = v23;
        v58 = v47;
        v59 = selfCopy;
        v60 = completionHandlerCopy;
        v24 = _Block_copy(aBlock);
        context2 = [(HMHome *)selfCopy context];
        pendingRequests = [context2 pendingRequests];

        uUID = [MEMORY[0x1E696AFB0] UUID];
        v28 = _Block_copy(handlerCopy);
        v29 = _Block_copy(v24);
        [pendingRequests addAccessoryDescription:descriptionCopy progressBlock:v28 andCompletionBlock:v29 forIdentifier:uUID];

        objc_initWeak(buf, selfCopy);
        messageDispatcher = [context messageDispatcher];
        messageDestination = [(HMHome *)selfCopy messageDestination];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __95__HMHome_HMAccessory___startPairingWithAccessoryDescription_progressHandler_completionHandler___block_invoke_2;
        v52[3] = &unk_1E7549F18;
        objc_copyWeak(&v56, buf);
        v32 = pendingRequests;
        v53 = v32;
        v33 = uUID;
        v54 = v33;
        v34 = v24;
        v55 = v34;
        [messageDispatcher sendRequestWithPayload:delegateCaller headers:0 destination:messageDestination messageUUID:v33 qualityOfService:-1 responseHandler:v52];

        objc_destroyWeak(&v56);
        objc_destroyWeak(buf);
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v62 = v46;
          v63 = 2112;
          v64 = descriptionCopy;
          _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode accessory description: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        appIdentifier = [(HMHome *)v44 context];
        delegateCaller = [appIdentifier delegateCaller];
        setupAccessoryPayload = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
        [(HMAddAccessoryRequestPayload *)delegateCaller callCompletion:completionHandlerCopy array:0 additionalAccessoryInfo:0 error:setupAccessoryPayload];
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
        *buf = 138543362;
        v62 = v39;
        _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot start pairing with nil accessory description", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      context3 = [(HMHome *)v37 context];
      delegateCaller2 = [context3 delegateCaller];
      v42 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [delegateCaller2 callCompletion:completionHandlerCopy array:0 additionalAccessoryInfo:0 error:v42];
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v35;
      v63 = 2080;
      v64 = "[HMHome(HMAccessory) _startPairingWithAccessoryDescription:progressHandler:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

uint64_t __95__HMHome_HMAccessory___startPairingWithAccessoryDescription_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 begin];
  [*(a1 + 40) uuid];

  [v8 domain];
  [v8 code];
  (*(*(a1 + 48) + 16))();

  v11 = *(a1 + 32);

  return [v11 end];
}

void __95__HMHome_HMAccessory___startPairingWithAccessoryDescription_progressHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v9)
  {
    v5 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
    v6 = v5;
    if (WeakRetained && v5)
    {
      v7 = [WeakRetained context];
      v8 = [v7 delegateCaller];
      [v8 callCompletion:*(a1 + 48) array:0 additionalAccessoryInfo:0 error:v9];
    }
  }
}

- (void)startPairingWithAccessoryDescription:(id)description progress:(id)progress completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  progressCopy = progress;
  completionCopy = completion;
  if (!completionCopy)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v19);
  }

  v11 = completionCopy;
  context = [(HMHome *)self context];
  v13 = context;
  if (context)
  {
    queue = [context queue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__HMHome_HMAccessory__startPairingWithAccessoryDescription_progress_completion___block_invoke;
    v20[3] = &unk_1E7549EA0;
    v20[4] = self;
    v21 = descriptionCopy;
    v22 = progressCopy;
    v23 = v11;
    dispatch_async(queue, v20);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2080;
      v27 = "[HMHome(HMAccessory) startPairingWithAccessoryDescription:progress:completion:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)stopDiscoveringSymptomsForNearbyDevices
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (context)
  {
    v4 = [MEMORY[0x1E69A29F8] messageWithName:@"kStopDiscoveringSymptomsForNearbyDevicesRequestKey" messagePayload:0];
    messageDispatcher = [context messageDispatcher];
    uuid = [(HMHome *)self uuid];
    [messageDispatcher sendMessage:v4 target:uuid];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2080;
      v14 = "[HMHome(HMAccessory) stopDiscoveringSymptomsForNearbyDevices]";
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)startDiscoveringSymptomsForNearbyDevices
{
  v15 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (context)
  {
    v4 = [MEMORY[0x1E69A29F8] messageWithName:@"kStartDiscoveringSymptomsForNearbyDevicesRequestKey" messagePayload:0];
    messageDispatcher = [context messageDispatcher];
    uuid = [(HMHome *)self uuid];
    [messageDispatcher sendMessage:v4 target:uuid];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2080;
      v14 = "[HMHome(HMAccessory) startDiscoveringSymptomsForNearbyDevices]";
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (id)__defaultProgressHandlerForAddAccessory
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__HMHome_HMAccessory____defaultProgressHandlerForAddAccessory__block_invoke;
  v5[3] = &unk_1E7549EC8;
  objc_copyWeak(&v6, &location);
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __62__HMHome_HMAccessory____defaultProgressHandlerForAddAccessory__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == 6)
    {
      v7 = 1;
    }

    else
    {
      if (a3 != 9)
      {
        goto LABEL_7;
      }

      v7 = 3;
    }

    [WeakRetained userDidRespondToConsentRequestForSetupAccessoryDescription:v8 withResponse:v7];
  }

LABEL_7:
}

- (void)addAccessoryWithAccessorySetupPayload:(id)payload progress:(id)progress completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  progressCopy = progress;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v19);
  }

  v11 = handlerCopy;
  context = [(HMHome *)self context];
  v13 = context;
  if (context)
  {
    queue = [context queue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__HMHome_HMAccessory__addAccessoryWithAccessorySetupPayload_progress_completionHandler___block_invoke;
    v20[3] = &unk_1E7549EA0;
    v20[4] = self;
    v21 = payloadCopy;
    v22 = progressCopy;
    v23 = v11;
    dispatch_async(queue, v20);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2080;
      v27 = "[HMHome(HMAccessory) addAccessoryWithAccessorySetupPayload:progress:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __88__HMHome_HMAccessory__addAccessoryWithAccessorySetupPayload_progress_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) internalSetupPayload];
    v7 = [*(a1 + 40) ownershipToken];
    *buf = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding accessory with setup payload: %@ ownership token: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [HMSetupAccessoryDescription alloc];
  v9 = [*(a1 + 40) internalSetupPayload];
  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [*(a1 + 32) uuid];
  v13 = [*(a1 + 40) ownershipToken];
  v14 = [(HMSetupAccessoryDescription *)v8 initWithSetupAccessoryPayload:v9 appID:v11 homeUUID:v12 ownershipToken:v13];

  v15 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__HMHome_HMAccessory__addAccessoryWithAccessorySetupPayload_progress_completionHandler___block_invoke_1931;
  v17[3] = &unk_1E7549E78;
  v17[4] = v15;
  v16 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v15 _startPairingWithAccessoryDescription:v14 progressHandler:v16 completionHandler:v17];
}

void __88__HMHome_HMAccessory__addAccessoryWithAccessorySetupPayload_progress_completionHandler___block_invoke_1931(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v10 = [v6 context];
  v9 = [v10 delegateCaller];
  [v9 callCompletion:*(a1 + 40) error:v7 array:v8];
}

- (void)establishShareWithHomeOwner:(id)owner container:(id)container allowWriteAccess:(BOOL)access completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  containerCopy = container;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v25);
  }

  v13 = handlerCopy;
  context = [(HMHome *)self context];
  v15 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__HMHome_HMAccessory__establishShareWithHomeOwner_container_allowWriteAccess_completionHandler___block_invoke;
    block[3] = &unk_1E754A988;
    block[4] = self;
    v29 = v13;
    v27 = ownerCopy;
    v28 = containerCopy;
    accessCopy = access;
    dispatch_async(queue, block);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v20;
      v33 = 2080;
      v34 = "[HMHome(HMAccessory) establishShareWithHomeOwner:container:allowWriteAccess:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

void __96__HMHome_HMAccessory__establishShareWithHomeOwner_container_allowWriteAccess_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) owner];
  v3 = [*(a1 + 32) currentUser];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = v2;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Owner %@ or current user %@ is not known.", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 56);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Owner or current user not known" reason:@"Need owner and current user" suggestion:0];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    v11 = [[HMUserCloudShareWithOwnerOperation alloc] initWithShare:*(a1 + 40) container:*(a1 + 48) ownerUser:v2 allowWriteAccess:*(a1 + 64) currentUser:v3];
    [(HMUserCloudShareWithOwnerOperation *)v11 setCompletion:*(a1 + 56)];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Adding establish share with home owner cloud share operation.", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 32) shareWithHomeOwnerOperationQueue];
    [v17 addOperation:v11];
  }
}

- (void)shareWithHomeOwner:(id)owner container:(id)container completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__HMHome_HMAccessory__shareWithHomeOwner_container_completionHandler___block_invoke;
  v10[3] = &unk_1E7549E50;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(HMHome *)self establishShareWithHomeOwner:owner container:container completionHandler:v10];
}

void __70__HMHome_HMAccessory__shareWithHomeOwner_container_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 participant];
  v7 = [v6 ownerUser];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)addAndSetUpNewAccessoriesWithSuggestedRoomName:(id)name completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v26);
  }

  v8 = handlerCopy;
  context = [(HMHome *)self context];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (context)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = nameCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding and setting up accessories with suggested room name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(HMAccessorySetupRequest);
    uniqueIdentifier = [(HMHome *)selfCopy uniqueIdentifier];
    [(HMAccessorySetupRequest *)v15 setHomeUniqueIdentifier:uniqueIdentifier];

    if (nameCopy)
    {
      v17 = [(HMHome *)selfCopy roomWithName:nameCopy];
      v18 = v17;
      if (v17)
      {
        uniqueIdentifier2 = [v17 uniqueIdentifier];
        [(HMAccessorySetupRequest *)v15 setSuggestedRoomUniqueIdentifier:uniqueIdentifier2];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v24;
          v32 = 2112;
          v33 = nameCopy;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find room with name: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    v25 = objc_alloc_init(HMAccessorySetupManager);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__HMHome_HMAccessory__addAndSetUpNewAccessoriesWithSuggestedRoomName_completionHandler___block_invoke;
    v27[3] = &unk_1E754AB90;
    v27[4] = selfCopy;
    v28 = context;
    v29 = v8;
    [(HMAccessorySetupManager *)v25 performAccessorySetupUsingRequest:v15 completionHandler:v27];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v20;
      v32 = 2080;
      v33 = "[HMHome(HMAccessory) addAndSetUpNewAccessoriesWithSuggestedRoomName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __88__HMHome_HMAccessory__addAndSetUpNewAccessoriesWithSuggestedRoomName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 accessoryUniqueIdentifiers];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__HMHome_HMAccessory__addAndSetUpNewAccessoriesWithSuggestedRoomName_completionHandler___block_invoke_1922;
    v15[3] = &unk_1E754DFD0;
    v15[4] = *(a1 + 32);
    v8 = [v7 na_map:v15];

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
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup with suggested room name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [*(a1 + 40) delegateCaller];
    [v14 callCompletion:*(a1 + 48) error:v6 array:0];
  }
}

- (void)addAndSetupAccessoriesWithPayload:(HMAccessorySetupPayload *)payload completionHandler:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = payload;
  v7 = completion;
  if (!v7)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  context = [(HMHome *)self context];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (context)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      internalSetupPayload = [(HMAccessorySetupPayload *)v6 internalSetupPayload];
      ownershipToken = [(HMAccessorySetupPayload *)v6 ownershipToken];
      *buf = 138543874;
      v26 = v14;
      v27 = 2112;
      v28 = internalSetupPayload;
      v29 = 2112;
      v30 = ownershipToken;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding and setting up accessories with setup payload: %@ ownership token: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v17 = objc_alloc_init(HMAccessorySetupRequest);
    uniqueIdentifier = [(HMHome *)selfCopy uniqueIdentifier];
    [(HMAccessorySetupRequest *)v17 setHomeUniqueIdentifier:uniqueIdentifier];

    [(HMAccessorySetupRequest *)v17 setPayload:v6];
    v19 = objc_alloc_init(HMAccessorySetupManager);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__HMHome_HMAccessory__addAndSetupAccessoriesWithPayload_completionHandler___block_invoke;
    v22[3] = &unk_1E754AB90;
    v22[4] = selfCopy;
    v23 = context;
    v24 = v8;
    [(HMAccessorySetupManager *)v19 performAccessorySetupUsingRequest:v17 completionHandler:v22];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2080;
      v28 = "[HMHome(HMAccessory) addAndSetupAccessoriesWithPayload:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __75__HMHome_HMAccessory__addAndSetupAccessoriesWithPayload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 accessoryUniqueIdentifiers];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__HMHome_HMAccessory__addAndSetupAccessoriesWithPayload_completionHandler___block_invoke_1920;
    v15[3] = &unk_1E754DFD0;
    v15[4] = *(a1 + 32);
    v8 = [v7 na_map:v15];

    v9 = [*(a1 + 40) delegateCaller];
    [v9 callCompletion:*(a1 + 48) obj:v8 error:0];
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
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup with setup payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [*(a1 + 40) delegateCaller];
    [v14 callCompletion:*(a1 + 48) obj:0 error:v6];
  }
}

- (void)addAndSetupAccessoriesWithCompletionHandler:(void *)completion
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = completion;
  context = [(HMHome *)self context];
  if (!v4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) addAndSetupAccessoriesWithCompletionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding and setting up accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = objc_alloc_init(HMAccessorySetupRequest);
    uniqueIdentifier = [(HMHome *)selfCopy2 uniqueIdentifier];
    [(HMAccessorySetupRequest *)v12 setHomeUniqueIdentifier:uniqueIdentifier];

    v14 = objc_alloc_init(HMAccessorySetupManager);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__HMHome_HMAccessory__addAndSetupAccessoriesWithCompletionHandler___block_invoke;
    v22[3] = &unk_1E7549E28;
    v22[4] = selfCopy2;
    v23 = v4;
    [(HMAccessorySetupManager *)v14 performAccessorySetupUsingRequest:v12 completionHandler:v22];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMHome(HMAccessory) addAndSetupAccessoriesWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }
}

void __67__HMHome_HMAccessory__addAndSetupAccessoriesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 context];
  v6 = [v7 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v5];
}

- (void)_continuePairingForAccessoryWithUUID:(id)d setupCode:(id)code onboardingSetupPayloadString:(id)string completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  codeCopy = code;
  stringCopy = string;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    v34[0] = @"kAccessoryUUID";
    v34[1] = @"kAccessoryPairingPasswordKey";
    v35[0] = dCopy;
    v35[1] = codeCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v16 = [v15 mutableCopy];

    [v16 setObject:stringCopy forKeyedSubscript:@"kAccessoryOnboardingSetupPayloadStringKey"];
    v17 = objc_alloc(MEMORY[0x1E69A2A10]);
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v20 = [v18 initWithTarget:uuid];
    v21 = [v17 initWithName:@"kContinuePairingAccessoryRequestKey" destination:v20 payload:v16];

    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __117__HMHome_HMAccessory___continuePairingForAccessoryWithUUID_setupCode_onboardingSetupPayloadString_completionHandler___block_invoke;
    v31 = &unk_1E754DE00;
    v22 = context;
    v32 = v22;
    v33 = handlerCopy;
    [v21 setResponseHandler:&v28];
    messageDispatcher = [v22 messageDispatcher];
    [messageDispatcher sendMessage:v21];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2080;
      v39 = "[HMHome(HMAccessory) _continuePairingForAccessoryWithUUID:setupCode:onboardingSetupPayloadString:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

void __117__HMHome_HMAccessory___continuePairingForAccessoryWithUUID_setupCode_onboardingSetupPayloadString_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)continuePairingForAccessoryWithUUID:(id)d setupCode:(id)code onboardingSetupPayloadString:(id)string completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  codeCopy = code;
  stringCopy = string;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) continuePairingForAccessoryWithUUID:setupCode:onboardingSetupPayloadString:completionHandler:]", @"completion"];
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

  v15 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__HMHome_HMAccessory__continuePairingForAccessoryWithUUID_setupCode_onboardingSetupPayloadString_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v29 = dCopy;
    v30 = codeCopy;
    v31 = stringCopy;
    v32 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMHome(HMAccessory) continuePairingForAccessoryWithUUID:setupCode:onboardingSetupPayloadString:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v21);
  }
}

- (void)_cancelPairingForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (context)
  {
    v28 = @"kAccessoryUUID";
    uUIDString = [dCopy UUIDString];
    v29 = uUIDString;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v11 = objc_alloc(MEMORY[0x1E69A2A10]);
    v12 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)self uuid];
    v14 = [v12 initWithTarget:uuid];
    v15 = [v11 initWithName:@"kCancelPairingAccessoryRequestKey" destination:v14 payload:v10];

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __76__HMHome_HMAccessory___cancelPairingForAccessoryWithUUID_completionHandler___block_invoke;
    v25 = &unk_1E754DE00;
    v16 = context;
    v26 = v16;
    v27 = handlerCopy;
    [v15 setResponseHandler:&v22];
    messageDispatcher = [v16 messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v21;
      v32 = 2080;
      v33 = "[HMHome(HMAccessory) _cancelPairingForAccessoryWithUUID:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void __76__HMHome_HMAccessory___cancelPairingForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)cancelPairingForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) cancelPairingForAccessoryWithUUID:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__HMHome_HMAccessory__cancelPairingForAccessoryWithUUID_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = dCopy;
    v24 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMHome(HMAccessory) cancelPairingForAccessoryWithUUID:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }
}

- (void)addAccessory:(id)accessory password:(id)password progress:(id)progress completionHandler:(id)handler
{
  v100 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  passwordCopy = password;
  aBlock = progress;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = @"<non-nil>";
    *buf = 138543874;
    v95 = v17;
    v96 = 2112;
    if (!passwordCopy)
    {
      v18 = @"<nil>";
    }

    v97 = accessoryCopy;
    v98 = 2112;
    v99 = v18;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending add request for accessory: %@ password: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  context = [(HMHome *)selfCopy context];
  if (!handlerCopy)
  {
    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMAccessory) addAccessory:password:progress:completionHandler:]", @"completion"];
    v69 = objc_autoreleasePoolPush();
    v70 = selfCopy;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = HMFGetLogIdentifier();
      *buf = 138543618;
      v95 = v72;
      v96 = 2112;
      v97 = v68;
      _os_log_impl(&dword_19BB39000, v71, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v69);
    v73 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v68 userInfo:0];
    objc_exception_throw(v73);
  }

  v20 = context;
  if (context)
  {
    v78 = a2;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v23 = [HMSetupAccessoryDescription alloc];
    uuid = [accessoryCopy uuid];
    name = [accessoryCopy name];
    uuid2 = [(HMHome *)selfCopy uuid];
    v81 = bundleIdentifier;
    v83 = [(HMSetupAccessoryDescription *)v23 initWithAccessoryUUID:uuid accessoryName:name appID:bundleIdentifier homeUUID:uuid2];

    v27 = aBlock;
    __defaultProgressHandlerForAddAccessory = _Block_copy(aBlock);
    if (!__defaultProgressHandlerForAddAccessory)
    {
      __defaultProgressHandlerForAddAccessory = [(HMHome *)selfCopy __defaultProgressHandlerForAddAccessory];
    }

    v82 = passwordCopy;
    if (accessoryCopy)
    {
      name2 = [accessoryCopy name];
      v30 = [name2 length];
      v80 = __defaultProgressHandlerForAddAccessory;
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      v31 = HMMaxLengthForNaming__hmf_once_v9;

      if (v30 <= v31)
      {
        v77 = v20;
        v49 = passwordCopy;
        delegateCaller = objc_alloc_init(HMAddAccessoryRequestPayload);
        uuid3 = [accessoryCopy uuid];
        [(HMAddAccessoryRequestPayload *)delegateCaller setAccessoryUUID:uuid3];

        [(HMAddAccessoryRequestPayload *)delegateCaller setShouldRetrySetup:[(HMSetupAccessoryDescription *)v83 retry]];
        [(HMAddAccessoryRequestPayload *)delegateCaller setAccessoryPairingPassword:v49];
        peerIdentifier = [accessoryCopy peerIdentifier];
        [(HMAddAccessoryRequestPayload *)delegateCaller setAccessoryPeerIdentifier:peerIdentifier];

        setupAccessoryPayload = [(HMSetupAccessoryDescription *)v83 setupAccessoryPayload];
        v52 = objc_alloc(MEMORY[0x1E69A29C0]);
        v53 = MEMORY[0x1E696AEC0];
        v54 = MEMORY[0x19EAEB2A0](selfCopy, v78);
        6982 = [v53 stringWithFormat:@"%@, %s:%ld", v54, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Home/HMHome.m", 6982];
        v56 = [v52 initWithName:6982];

        appIdentifier = [(HMSetupAccessoryDescription *)v83 appIdentifier];
        if (!appIdentifier)
        {
          mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
          appIdentifier = [mainBundle2 bundleIdentifier];
        }

        v79 = appIdentifier;
        v76 = [MEMORY[0x1E69A29F8] messageHeadersWithXPCTimeoutDisabled:1];
        [(HMHome *)selfCopy uuid];

        [setupAccessoryPayload categoryNumber];
        v20 = v77;
        if (setupAccessoryPayload)
        {
          [setupAccessoryPayload supportsBTLE];
        }

        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __72__HMHome_HMAccessory__addAccessory_password_progress_completionHandler___block_invoke;
        v90[3] = &unk_1E754D898;
        v91 = v56;
        v92 = selfCopy;
        v93 = handlerCopy;
        v75 = v56;
        v74 = _Block_copy(v90);
        context2 = [(HMHome *)selfCopy context];
        pendingRequests = [context2 pendingRequests];

        uUID = [MEMORY[0x1E696AFB0] UUID];
        v62 = _Block_copy(v74);
        [pendingRequests addAccessory:accessoryCopy andCompletionBlock:v62 forIdentifier:uUID];

        v63 = _Block_copy(v80);
        [pendingRequests addAccessoryDescription:v83 progressBlock:v63 andCompletionBlock:0 forIdentifier:uUID];

        messageDispatcher = [v77 messageDispatcher];
        messageDestination = [(HMHome *)selfCopy messageDestination];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __72__HMHome_HMAccessory__addAccessory_password_progress_completionHandler___block_invoke_2;
        v85[3] = &unk_1E7549E00;
        v86 = pendingRequests;
        v87 = uUID;
        v88 = v77;
        v89 = selfCopy;
        v66 = uUID;
        v67 = pendingRequests;
        [messageDispatcher sendRequestWithPayload:delegateCaller headers:v76 destination:messageDestination messageUUID:v66 qualityOfService:-1 responseHandler:v85];

        __defaultProgressHandlerForAddAccessory = v80;
        v27 = aBlock;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v35;
          _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Accessory name is longer than the pre-defined max length", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        delegateCaller = [v20 delegateCaller];
        setupAccessoryPayload = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
        [(HMAddAccessoryRequestPayload *)delegateCaller callCompletion:handlerCopy error:setupAccessoryPayload];
        __defaultProgressHandlerForAddAccessory = v80;
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v47 = v46 = __defaultProgressHandlerForAddAccessory;
        *buf = 138543362;
        v95 = v47;
        _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to add accessory due to no accessory given", buf, 0xCu);

        __defaultProgressHandlerForAddAccessory = v46;
      }

      objc_autoreleasePoolPop(v43);
      delegateCaller = [(HMHome *)v44 context];
      setupAccessoryPayload = [(HMAddAccessoryRequestPayload *)delegateCaller delegateCaller];
      v48 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [setupAccessoryPayload callCompletion:handlerCopy error:v48];
    }

    v42 = v81;
    passwordCopy = v82;
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v95 = v41;
      v96 = 2080;
      v97 = "[HMHome(HMAccessory) addAccessory:password:progress:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v42);
    v27 = aBlock;
  }
}

uint64_t __72__HMHome_HMAccessory__addAccessory_password_progress_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 begin];
  [*(a1 + 40) uuid];

  [v4 domain];
  [v4 code];
  (*(*(a1 + 48) + 16))();

  v5 = *(a1 + 32);

  return [v5 end];
}

void __72__HMHome_HMAccessory__addAccessory_password_progress_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v5 error:v4];

    v7 = [*(a1 + 32) removeAccessoryForIdentifier:*(a1 + 40)];
    v8 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__HMHome_HMAccessory__addAccessory_password_progress_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7549CF8;
    v10 = v4;
    [v8 _notifySetupFailedIfInHomeUIService:v9];
  }
}

- (void)addAccessory:(HMAccessory *)accessory completionHandler:(void *)completion
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = accessory;
  v7 = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending add request for accessory: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMHome *)selfCopy addAccessory:v6 password:0 progress:0 completionHandler:v7];
}

+ (BOOL)isValidMediaPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v6 = passwordCopy;
  if (!passwordCopy)
  {
    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = 20;
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v7 = [passwordCopy lengthOfBytesUsingEncoding:4];
  if (!v7)
  {
    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = 3;
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v7 < 0x41)
  {
    if (isValidMediaPassword_error__onceToken != -1)
    {
      dispatch_once(&isValidMediaPassword_error__onceToken, &__block_literal_global_2134);
    }

    if ([v6 rangeOfCharacterFromSet:isValidMediaPassword_error__invalidCharacters] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!SecPasswordIsPasswordWeak())
      {
        v11 = 1;
        goto LABEL_22;
      }

      if (!error)
      {
        goto LABEL_21;
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = 2201;
    }

    else
    {
      if (!error)
      {
        goto LABEL_21;
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = 2200;
    }

    v10 = [v12 hmPrivateErrorWithCode:v13];
    goto LABEL_11;
  }

  if (!error)
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = 46;
LABEL_10:
  v10 = [v8 hmErrorWithCode:v9];
LABEL_11:
  v11 = 0;
  *error = v10;
LABEL_22:

  return v11;
}

void __53__HMHome_HMMediaProfile__isValidMediaPassword_error___block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v0 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  [v4 formUnionWithCharacterSet:v0];

  v1 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 invertedSet];
  v3 = isValidMediaPassword_error__invalidCharacters;
  isValidMediaPassword_error__invalidCharacters = v2;
}

- (void)fetchRoomsSupportingLocalPresenceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMHome *)self messageTargetUUID];
  v7 = [v5 initWithTarget:messageTargetUUID];

  v8 = [MEMORY[0x1E69A2A10] messageWithName:@"HMRoomsSupportingLocalPresenceMessage" destination:v7 payload:0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __67__HMHome_Climate__fetchRoomsSupportingLocalPresenceWithCompletion___block_invoke;
  v15 = &unk_1E754DE00;
  selfCopy = self;
  v17 = completionCopy;
  v9 = completionCopy;
  [v8 setResponseHandler:&v12];
  v10 = [(HMHome *)self context:v12];
  messageDispatcher = [v10 messageDispatcher];
  [messageDispatcher sendMessage:v8 completionHandler:0];
}

void __67__HMHome_Climate__fetchRoomsSupportingLocalPresenceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 hmf_setForKey:@"HMRoomsSupportingLocalPresenceMessageRoomsKey"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__HMHome_Climate__fetchRoomsSupportingLocalPresenceWithCompletion___block_invoke_2;
    v12[3] = &unk_1E754B790;
    v8 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v7;
    v14 = v8;
    v9 = v7;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
    v10 = *(a1 + 40);
    v11 = [v9 copy];
    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__HMHome_Climate__fetchRoomsSupportingLocalPresenceWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) roomWithUUID:a2];
  v8 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    *a3 = 1;
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (id)createSiriEndpointProfilesMessenger
{
  v17 = *MEMORY[0x1E69E9840];
  uuid = [(HMHome *)self uuid];
  v4 = [HMSiriEndpointProfilesMessenger messageTargetUUIDWithHomeUUID:uuid];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating siri endpoint profile messenger with message target UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  context = [(HMHome *)selfCopy context];
  messageDispatcher = [context messageDispatcher];

  if (!messageDispatcher)
  {
    _HMFPreconditionFailure();
  }

  v11 = [[HMSiriEndpointProfilesMessenger alloc] initWithMessageTargetUUID:v4 messageDispatcher:messageDispatcher];

  return v11;
}

- (void)executeActions:(id)actions completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(HMActionExecution) executeActions:completionHandler:]", @"completionHandler"];
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
  if (!context)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v15;
      v35 = 2080;
      v36 = "[HMHome(HMActionExecution) executeActions:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = MEMORY[0x1E696ABC0];
    v17 = 12;
    goto LABEL_11;
  }

  if (![actionsCopy count])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = actionsCopy;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@No actions to execute, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v16 = MEMORY[0x1E696ABC0];
    v17 = 3;
LABEL_11:
    v11 = [v16 hmErrorWithCode:v17];
    handlerCopy[2](handlerCopy, v11);
    goto LABEL_12;
  }

  queue = [v9 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke;
  block[3] = &unk_1E754D208;
  v29 = actionsCopy;
  selfCopy4 = self;
  v31 = v9;
  v32 = handlerCopy;
  dispatch_async(queue, block);

  v11 = v29;
LABEL_12:
}

void __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke(id *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke_2;
  v33[3] = &unk_1E754C198;
  v33[4] = a1[5];
  v3 = [v2 na_all:v33];
  v4 = [a1[6] delegateCaller];
  if (v3)
  {
    v5 = [a1[4] na_map:&__block_literal_global_45463];
    v6 = [v5 allObjects];

    v7 = [v6 count];
    if (v7 == [a1[4] count])
    {
      v8 = MEMORY[0x1E69A2A10];
      v9 = [a1[5] messageDestination];
      v34 = @"HM.homeExecuteActionsActionInfoKey";
      v35 = v6;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v11 = [v8 messageWithName:@"HM.homeExecuteActionsRequestKey" destination:v9 payload:v10];

      objc_initWeak(location, a1[5]);
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke_17;
      v29 = &unk_1E754D058;
      objc_copyWeak(&v32, location);
      v30 = v4;
      v31 = a1[7];
      [v11 setResponseHandler:&v26];
      v12 = [a1[6] messageDispatcher];
      [v12 sendMessage:v11 completionHandler:0];

      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = a1[5];
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v6 count];
        v23 = [a1[4] count];
        v24 = a1[4];
        *location = 138544386;
        *&location[4] = v21;
        v37 = 2048;
        v38 = v22;
        v39 = 2048;
        v40 = v23;
        v41 = 2112;
        v42 = v6;
        v43 = 2112;
        v44 = v24;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Only %tu of %tu actions could be serialized. Serialized: < %@ > from the given actions: < %@ >", location, 0x34u);
      }

      objc_autoreleasePoolPop(v18);
      v25 = a1[7];
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
      [v4 callCompletion:v25 error:v11];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v16;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid action detected", location, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = a1[7];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:3 userInfo:0];
    [v4 callCompletion:v17 error:v6];
  }
}

uint64_t __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isValid];
  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid action: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

void __62__HMHome_HMActionExecution__executeActions_completionHandler___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Execution of actions failed (%@)", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [*(a1 + 32) callCompletion:*(a1 + 40) error:v5];
}

- (void)configurePersonManager
{
  v18 = *MEMORY[0x1E69E9840];
  personManagerSettings = [(HMHome *)self personManagerSettings];
  if ([personManagerSettings isFaceClassificationEnabled] && (-[HMHome personManager](self, "personManager"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating person manager because face classification is enabled", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [[HMHomePersonManager alloc] initWithHome:selfCopy];
    [(HMHome *)selfCopy setPersonManager:v14];

    personManager = [(HMHome *)selfCopy personManager];
    [personManager configure];
  }

  else if (([personManagerSettings isFaceClassificationEnabled] & 1) == 0)
  {
    personManager2 = [(HMHome *)self personManager];

    if (personManager2)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Destroying person manager because face classification is disabled", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMHome *)selfCopy2 setPersonManager:0];
    }
  }
}

- (void)updatePersonManagerSettings:(id)settings completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (context)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Update person manager settings"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      identifier = [v9 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543874;
      v34 = v13;
      v35 = 2114;
      v36 = shortDescription;
      v37 = 2112;
      v38 = settingsCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Updating person manager settings: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v31 = @"HMHomePersonManagerSettingsMessageKey";
    v16 = encodeRootObject(settingsCopy);
    v32 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy uuid];
    v20 = [v18 initWithTarget:uuid];

    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeUpdatePersonManagerSettingsMessage" destination:v20 payload:v17];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __57__HMHome_Person__updatePersonManagerSettings_completion___block_invoke;
    v28[3] = &unk_1E754E480;
    v28[4] = selfCopy;
    v29 = v9;
    v30 = completionCopy;
    v22 = v9;
    [v21 setResponseHandler:v28];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21 completionHandler:0];

    goto LABEL_9;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v27;
    v35 = 2080;
    v36 = "[HMHome(Person) updatePersonManagerSettings:completion:]";
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (completionCopy)
  {
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v17);
LABEL_9:
  }
}

void __57__HMHome_Person__updatePersonManagerSettings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v32[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMHomePersonManagerSettingsMessageKey" ofClasses:v7];

  v9 = [v6 hmf_UUIDForKey:@"HMHomePersonManagerZoneUUIDMessageKey"];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v22 = v5;
      v15 = [*(a1 + 40) identifier];
      v16 = [v15 shortDescription];
      *buf = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully updated person manager settings: %@, zone UUID: %@", buf, 0x2Au);

      v5 = v22;
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setPersonManagerSettings:v8];
    [*(a1 + 32) setPersonManagerZoneUUID:v9];
    [*(a1 + 32) configurePersonManager];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [*(a1 + 40) identifier];
      v18 = v23 = v5;
      v19 = [v18 shortDescription];
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update person manager settings: %@", buf, 0x20u);

      v5 = v23;
    }

    objc_autoreleasePoolPop(v10);
  }

  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 48) error:v5];
}

- (id)personManagerWithUUID:(id)d
{
  dCopy = d;
  personManager = [(HMHome *)self personManager];
  uUID = [personManager UUID];
  v7 = [uUID isEqual:dCopy];

  if (v7)
  {
    [(HMHome *)self personManager];
  }

  else
  {
    [(HMHome *)self photosPersonManagerWithUUID:dCopy];
  }
  v8 = ;

  return v8;
}

- (id)photosPersonManagerWithUUID:(id)d
{
  dCopy = d;
  v5 = [HMPhotosPersonManager alloc];
  context = [(HMHome *)self context];
  v7 = [(HMPhotosPersonManager *)v5 initWithContext:context UUID:dCopy];

  [(HMPersonManager *)v7 configure];

  return v7;
}

id __56__HMHome_Matter__matterStartupParametersXPCConnectBlock__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.matter.native.xpc" options:0];

  return v0;
}

id __49__HMHome_Matter__matterControllerXPCConnectBlock__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.matter.framework.xpc" options:0];

  return v0;
}

- (NSString)matterControllerID
{
  uuid = [(HMHome *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)resetAndRemoveAllCHIPPairingsFromAccessory:(id)accessory completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  completionCopy = completion;
  context = [(HMHome *)self context];
  if (!completionCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(CHIP) resetAndRemoveAllCHIPPairingsFromAccessory:completion:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v28;
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = context;
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v14;
      v39 = 2112;
      v40 = accessoryCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Resetting and removing all CHIP pairings from accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMHome *)selfCopy2 uuid];
    v17 = [v15 initWithTarget:uuid];

    v35 = @"kAccessoryUUID";
    uuid2 = [accessoryCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v36 = uUIDString;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeResetAndRemoveAllCHIPPairingsFromAccessoryMessage" destination:v17 payload:v20];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __70__HMHome_CHIP__resetAndRemoveAllCHIPPairingsFromAccessory_completion___block_invoke;
    v30[3] = &unk_1E754C7E8;
    v31 = v21;
    v32 = selfCopy2;
    v33 = v9;
    v34 = completionCopy;
    v22 = v21;
    [accessoryCopy removeCorrespondingSystemCommissionerPairingWithCompletion:v30];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v23;
      v39 = 2080;
      v40 = "[HMHome(CHIP) resetAndRemoveAllCHIPPairingsFromAccessory:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

void __70__HMHome_CHIP__resetAndRemoveAllCHIPPairingsFromAccessory_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__HMHome_CHIP__resetAndRemoveAllCHIPPairingsFromAccessory_completion___block_invoke_2;
  v4[3] = &unk_1E754E480;
  v2 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v2;
  v6 = *(a1 + 56);
  [*(a1 + 32) setResponseHandler:v4];
  v3 = [*(a1 + 48) messageDispatcher];
  [v3 sendMessage:*(a1 + 32)];
}

void __70__HMHome_CHIP__resetAndRemoveAllCHIPPairingsFromAccessory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "%{public}@Failed to reset and remove all CHIP pairings: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Successfully reset and removed all CHIP pairings";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)addTimerTriggerFromBuilder:(id)builder completionHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(AutomationBuilders) addTimerTriggerFromBuilder:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v40;
      v51 = 2112;
      v52 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v9 = context;
  if (context)
  {
    v48 = 0;
    v10 = [(HMHome *)self validateBuilder:builderCopy error:&v48];
    v11 = v48;
    v12 = v11;
    if (v10)
    {
      v47 = v11;
      v13 = builderCopy;
      if (self)
      {
        v14 = [(HMHome *)self _encodeTriggerBuilder:v13 error:&v47];
        v15 = [v14 mutableCopy];

        if (v15)
        {
          fireDateIfSet = [v13 fireDateIfSet];
          [v15 setObject:fireDateIfSet forKeyedSubscript:@"kTimerTriggerInitialFireDateKey"];

          timeZone = [v13 timeZone];
          v18 = timeZone;
          if (timeZone)
          {
            v19 = encodeRootObject(timeZone);
            [v15 setObject:v19 forKeyedSubscript:@"kTimerTriggerTimeZoneDataKey"];
          }

          v42 = v18;
          recurrence = [v13 recurrence];
          v21 = recurrence;
          if (recurrence)
          {
            v22 = encodeRootObject(recurrence);
            [v15 setObject:v22 forKeyedSubscript:@"kTimerTriggerRecurrenceDataKey"];
          }

          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "recurrenceDays")}];
          [v15 setObject:v23 forKeyedSubscript:@"kTimerTriggerRecurrencesKey"];

          significantEvent = [v13 significantEvent];
          [v15 setObject:significantEvent forKeyedSubscript:@"kTimerTriggerSignificantEventKey"];

          significantEventOffset = [v13 significantEventOffset];
          v26 = significantEventOffset;
          if (significantEventOffset)
          {
            v27 = encodeRootObject(significantEventOffset);
            [v15 setObject:v27 forKeyedSubscript:@"kTimerTriggerSignificantEventOffsetKey"];
          }

          delegateCaller2 = [v15 copy];
        }

        else
        {
          delegateCaller2 = 0;
        }
      }

      else
      {
        delegateCaller2 = 0;
      }

      v33 = v47;
      if (delegateCaller2)
      {
        uuid = [(HMHome *)self uuid];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __75__HMHome_AutomationBuilders__addTimerTriggerFromBuilder_completionHandler___block_invoke;
        v43[3] = &unk_1E754E480;
        v44 = v9;
        selfCopy2 = self;
        v46 = handlerCopy;
        [(_HMContext *)v44 sendMessage:uuid target:delegateCaller2 payload:v43 responseHandler:?];

        delegateCaller = v44;
      }

      else
      {
        delegateCaller = [v9 delegateCaller];
        [delegateCaller callCompletion:handlerCopy timerTrigger:0 error:v33];
      }
    }

    else
    {
      delegateCaller2 = [v9 delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy timerTrigger:0 error:v12];
      v33 = v12;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v32;
      v51 = 2080;
      v52 = "[HMHome(AutomationBuilders) addTimerTriggerFromBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v33);
  }
}

void __75__HMHome_AutomationBuilders__addTimerTriggerFromBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 48) timerTrigger:0 error:v14];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) currentTriggers];
    v6 = [(HMHome *)v7 _addObjectOfClass:v8 fromResponse:v5 toArray:v9];

    v10 = [*(a1 + 32) delegateCaller];
    v11 = v10;
    v12 = *(a1 + 48);
    if (v6)
    {
      [v10 callCompletion:v12 timerTrigger:v6 error:0];
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v11 callCompletion:v12 timerTrigger:0 error:v13];
    }
  }
}

- (id)_addObjectOfClass:(void *)class fromResponse:(void *)response toArray:
{
  v24 = *MEMORY[0x1E69E9840];
  classCopy = class;
  responseCopy = response;
  if (self)
  {
    v9 = [[a2 alloc] initWithDictionary:classCopy home:self];
    v10 = v9;
    if (v9)
    {
      uuid = [v9 uuid];
      v12 = [responseCopy firstItemWithUUID:uuid];

      if (v12)
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v16;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Returning existing %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v17 = v12;
      }

      else
      {
        context = [self context];
        [v10 __configureWithContext:context home:self];

        [responseCopy addObject:v10];
        v17 = v10;
      }

      self = v17;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_encodeTriggerBuilder:(void *)builder error:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    name = [v5 name];
    configuredName = [v5 configuredName];
    if (![HMTrigger _validateName:name configuredName:configuredName error:builder])
    {
      self = 0;
LABEL_22:

      goto LABEL_23;
    }

    selfCopy = self;
    v30 = name;
    [v6 setObject:name forKeyedSubscript:@"kTriggerName"];
    v29 = configuredName;
    [v6 setObject:configuredName forKeyedSubscript:@"HMT.triggerConfiguredNameKey"];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isEnabled")}];
    [v6 setObject:v9 forKeyedSubscript:@"kTriggerActivate"];

    v10 = MEMORY[0x1E696AD98];
    policy = [v5 policy];
    objc_opt_class();
    v12 = [v10 numberWithBool:objc_opt_isKindOfClass() & 1];
    v31 = v6;
    [v6 setObject:v12 forKeyedSubscript:@"HMT.deleteAfterExecutionPolicyKey"];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v5;
    actionSets = [v5 actionSets];
    v15 = [actionSets countByEnumeratingWithState:&v33 objects:v37 count:16];
    builderCopy = builder;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(actionSets);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          actionSetType = [v20 actionSetType];
          if ([actionSetType isEqualToString:@"HMActionSetTypeTriggerOwned"])
          {
            v22 = v20;
            uuid = v17;
            v17 = v22;
          }

          else
          {
            uuid = [v20 uuid];
            uUIDString = [uuid UUIDString];
            [v13 addObject:uUIDString];
          }
        }

        v16 = [actionSets countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v25 = [v13 copy];
    v6 = v31;
    [v31 setObject:v25 forKeyedSubscript:@"kTriggerActionSetUUIDKey"];

    v5 = v32;
    name = v30;
    if (v17 && ([v17 isEmpty] & 1) == 0)
    {
      self = [selfCopy encodeActionSetBuilder:v17 error:builderCopy];
      if (!self)
      {
LABEL_21:

        configuredName = v29;
        goto LABEL_22;
      }

      [v31 setObject:self forKeyedSubscript:@"kTriggerOwnedActionSetKey"];
    }

    self = [v31 copy];
    goto LABEL_21;
  }

LABEL_23:

  return self;
}

- (id)newTimerTriggerBuilderWithName:(id)name significantEvent:(id)event significantEventOffset:(id)offset recurrences:(id)recurrences
{
  nameCopy = name;
  eventCopy = event;
  offsetCopy = offset;
  recurrencesCopy = recurrences;
  newTimerTriggerBuilder = [(HMHome *)self newTimerTriggerBuilder];
  v15 = newTimerTriggerBuilder;
  if (newTimerTriggerBuilder)
  {
    [newTimerTriggerBuilder setName:nameCopy];
    [v15 setSignificantEvent:eventCopy];
    [v15 setSignificantEventOffset:offsetCopy];
    [v15 setRecurrences:recurrencesCopy];
  }

  return v15;
}

- (id)newTimerTriggerBuilderWithName:(id)name fireDate:(id)date timeZone:(id)zone recurrence:(id)recurrence
{
  nameCopy = name;
  dateCopy = date;
  zoneCopy = zone;
  recurrenceCopy = recurrence;
  newTimerTriggerBuilder = [(HMHome *)self newTimerTriggerBuilder];
  v15 = newTimerTriggerBuilder;
  if (newTimerTriggerBuilder)
  {
    [newTimerTriggerBuilder setName:nameCopy];
    [v15 setFireDate:dateCopy];
    [v15 setTimeZone:zoneCopy];
    [v15 setRecurrence:recurrenceCopy];
  }

  return v15;
}

- (id)newTimerTriggerBuilder
{
  v14 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (!context)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2080;
      v13 = "[HMHome(AutomationBuilders) newTimerTriggerBuilder]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_7;
  }

  if (![(HMHome *)self areAutomationBuildersSupported])
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [[HMTimerTriggerBuilder alloc] initWithContext:context home:self];
LABEL_8:

  return v4;
}

- (id)encodeEventTriggerBuilder:(id)builder error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  v7 = [(HMHome *)self _encodeTriggerBuilder:builderCopy error:error];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v19 = 0;
    goto LABEL_18;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(builderCopy, "recurrenceDays")}];
  [v8 setObject:v9 forKeyedSubscript:@"kEventTriggerRecurrencesKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(builderCopy, "executeOnce")}];
  [v8 setObject:v10 forKeyedSubscript:@"kEventTriggerExecuteOnce"];

  predicate = [builderCopy predicate];
  if (predicate)
  {
    v12 = [HMPredicateUtilities rewritePredicateForDaemon:predicate];
    if (!v12)
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
        v28 = predicate;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid event trigger predicate: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (error)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    }

    v13 = v12;
    v14 = encodeRootObject(v12);
    [v8 setObject:v14 forKeyedSubscript:@"kEventTriggerConditionKey"];
  }

  events = [builderCopy events];
  v16 = [(HMHome *)self _encodeEvents:events error:error];

  if (v16)
  {
    [v8 setObject:v16 forKeyedSubscript:@"kEventTriggerEventsKey"];
    endEvents = [builderCopy endEvents];
    v18 = [(HMHome *)self _encodeEvents:endEvents error:error];

    if (v18)
    {
      [v8 setObject:v18 forKeyedSubscript:@"kEventTriggerEndEventsKey"];
      v19 = [v8 copy];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_17:
LABEL_18:

  return v19;
}

- (id)_encodeEvents:(void *)events error:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          _serializeForAdd = [v12 _serializeForAdd];
          if (!_serializeForAdd)
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v26 = v19;
              v27 = 2112;
              v28 = v12;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize event: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            if (events)
            {
              *events = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
            }

            v15 = 0;
            goto LABEL_16;
          }

          v14 = _serializeForAdd;
          [v6 addObject:_serializeForAdd];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v6 copy];
LABEL_16:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)addEventTriggerFromBuilder:(id)builder completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(AutomationBuilders) addEventTriggerFromBuilder:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v9 = context;
  if (context)
  {
    v32 = 0;
    v10 = [(HMHome *)self validateBuilder:builderCopy error:&v32];
    v11 = v32;
    v12 = v11;
    if (v10)
    {
      v31 = v11;
      delegateCaller2 = [(HMHome *)self encodeEventTriggerBuilder:builderCopy error:&v31];
      v14 = v31;

      if (delegateCaller2)
      {
        uuid = [(HMHome *)self uuid];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __75__HMHome_AutomationBuilders__addEventTriggerFromBuilder_completionHandler___block_invoke;
        v27[3] = &unk_1E754E480;
        v28 = v9;
        selfCopy2 = self;
        v30 = handlerCopy;
        [(_HMContext *)v28 sendMessage:uuid target:delegateCaller2 payload:v27 responseHandler:?];

        delegateCaller = v28;
      }

      else
      {
        delegateCaller = [v9 delegateCaller];
        [delegateCaller callCompletion:handlerCopy eventTrigger:0 error:v14];
      }
    }

    else
    {
      delegateCaller2 = [v9 delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy eventTrigger:0 error:v12];
      v14 = v12;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMHome(AutomationBuilders) addEventTriggerFromBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __75__HMHome_AutomationBuilders__addEventTriggerFromBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 48) eventTrigger:0 error:v14];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) currentTriggers];
    v6 = [(HMHome *)v7 _addObjectOfClass:v8 fromResponse:v5 toArray:v9];

    v10 = [*(a1 + 32) delegateCaller];
    v11 = v10;
    v12 = *(a1 + 48);
    if (v6)
    {
      [v10 callCompletion:v12 eventTrigger:v6 error:0];
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v11 callCompletion:v12 eventTrigger:0 error:v13];
    }
  }
}

- (id)newEventTriggerBuilderWithName:(id)name events:(id)events endEvents:(id)endEvents recurrences:(id)recurrences predicate:(id)predicate
{
  nameCopy = name;
  eventsCopy = events;
  endEventsCopy = endEvents;
  recurrencesCopy = recurrences;
  predicateCopy = predicate;
  newEventTriggerBuilder = [(HMHome *)self newEventTriggerBuilder];
  v18 = newEventTriggerBuilder;
  if (newEventTriggerBuilder)
  {
    [newEventTriggerBuilder setName:nameCopy];
    [v18 setEvents:eventsCopy];
    [v18 setEndEvents:endEventsCopy];
    [v18 setRecurrences:recurrencesCopy];
    [v18 setPredicate:predicateCopy];
  }

  return v18;
}

- (id)newEventTriggerBuilderWithName:(id)name events:(id)events predicate:(id)predicate
{
  nameCopy = name;
  eventsCopy = events;
  predicateCopy = predicate;
  newEventTriggerBuilder = [(HMHome *)self newEventTriggerBuilder];
  v12 = newEventTriggerBuilder;
  if (newEventTriggerBuilder)
  {
    [newEventTriggerBuilder setName:nameCopy];
    [v12 setEvents:eventsCopy];
    [v12 setPredicate:predicateCopy];
  }

  return v12;
}

- (id)newEventTriggerBuilder
{
  v3 = [HMEventTriggerBuilder alloc];
  context = [(HMHome *)self context];
  v5 = [(HMEventTriggerBuilder *)v3 initWithContext:context home:self];

  return v5;
}

- (id)encodeActionSetBuilder:(id)builder error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  name = [builderCopy name];
  [v5 setObject:name forKeyedSubscript:@"kActionSetName"];

  applicationData = [builderCopy applicationData];
  dictionary = [applicationData dictionary];
  [v5 setObject:dictionary forKeyedSubscript:@"kAppDataInformationKey"];

  actions = [builderCopy actions];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(actions, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = actions;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      v33 = 0;
      v17 = [v16 isValidWithError:&v33];
      v18 = v33;
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        break;
      }

      _serializeForAdd = [v16 _serializeForAdd];
      if (!_serializeForAdd)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        }

LABEL_19:

        v23 = 0;
        goto LABEL_20;
      }

      v21 = _serializeForAdd;
      [v10 addObject:_serializeForAdd];

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (error)
    {
      if (v18)
      {
        v24 = v18;
        *error = v19;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        *error = v29;
      }
    }

    goto LABEL_19;
  }

LABEL_10:

  v22 = [v10 copy];
  [v5 setObject:v22 forKeyedSubscript:@"kActionSetActions"];

  v23 = [v5 copy];
LABEL_20:

  return v23;
}

- (void)addActionSetFromBuilder:(id)builder completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMHome *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHome(AutomationBuilders) addActionSetFromBuilder:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v9 = context;
  if (context)
  {
    v32 = 0;
    v10 = [(HMHome *)self validateBuilder:builderCopy error:&v32];
    v11 = v32;
    v12 = v11;
    if (v10)
    {
      v31 = v11;
      delegateCaller2 = [(HMHome *)self encodeActionSetBuilder:builderCopy error:&v31];
      v14 = v31;

      if (delegateCaller2)
      {
        uuid = [(HMHome *)self uuid];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __72__HMHome_AutomationBuilders__addActionSetFromBuilder_completionHandler___block_invoke;
        v27[3] = &unk_1E754E480;
        v28 = v9;
        selfCopy2 = self;
        v30 = handlerCopy;
        [(_HMContext *)v28 sendMessage:uuid target:delegateCaller2 payload:v27 responseHandler:?];

        delegateCaller = v28;
      }

      else
      {
        delegateCaller = [v9 delegateCaller];
        [delegateCaller callCompletion:handlerCopy actionSet:0 error:v14];
      }
    }

    else
    {
      delegateCaller2 = [v9 delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy actionSet:0 error:v12];
      v14 = v12;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMHome(AutomationBuilders) addActionSetFromBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __72__HMHome_AutomationBuilders__addActionSetFromBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 48) actionSet:0 error:v14];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = [*(a1 + 40) currentActionSets];
    v6 = [(HMHome *)v7 _addObjectOfClass:v8 fromResponse:v5 toArray:v9];

    v10 = [*(a1 + 32) delegateCaller];
    v11 = v10;
    v12 = *(a1 + 48);
    if (v6)
    {
      [v10 callCompletion:v12 actionSet:v6 error:0];
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v11 callCompletion:v12 actionSet:0 error:v13];
    }
  }
}

- (id)newActionSetBuilderWithName:(id)name
{
  nameCopy = name;
  newActionSetBuilder = [(HMHome *)self newActionSetBuilder];
  v6 = newActionSetBuilder;
  if (newActionSetBuilder)
  {
    [newActionSetBuilder setName:nameCopy];
  }

  return v6;
}

- (id)newActionSetBuilder
{
  v14 = *MEMORY[0x1E69E9840];
  context = [(HMHome *)self context];
  if (!context)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2080;
      v13 = "[HMHome(AutomationBuilders) newActionSetBuilder]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_7;
  }

  if (![(HMHome *)self areAutomationBuildersSupported])
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [[HMActionSetBuilder alloc] initWithType:@"HMActionSetTypeBuilder" context:context home:self];
LABEL_8:

  return v4;
}

- (BOOL)validateBuilder:(id)builder error:(id *)error
{
  builderCopy = builder;
  if (![(HMHome *)self areAutomationBuildersSupported])
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v12 = 48;
LABEL_11:
    [MEMORY[0x1E696ABC0] hmErrorWithCode:v12];
    *error = v11 = 0;
    goto LABEL_13;
  }

  if (!builderCopy)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v12 = 20;
    goto LABEL_11;
  }

  home = [builderCopy home];
  uuid = [home uuid];
  uuid2 = [(HMHome *)self uuid];
  v10 = [uuid isEqual:uuid2];

  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v12 = 11;
      goto LABEL_11;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)areAutomationBuildersSupported
{
  homeManager = [(HMHome *)self homeManager];
  isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

  return isDaemonRunningWithROARFramework;
}

- (void)fetchMostRecentEventWithCharacteristicType:(id)type serviceType:(id)serviceType homeSPIClientIdentifier:(id)identifier library:(id)library completion:(id)completion
{
  v110[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  serviceTypeCopy = serviceType;
  identifierCopy = identifier;
  libraryCopy = library;
  completionCopy = completion;
  v74 = libraryCopy;
  accessoryControl = [libraryCopy AccessoryControl];
  v17 = objc_alloc(MEMORY[0x1E698F2D0]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v19 = [v17 initWithStartDate:distantPast endDate:0 maxEvents:0 lastN:0 reversed:0];

  v75 = v19;
  v77 = [accessoryControl publisherWithOptions:v19];
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke;
  v95[3] = &unk_1E754DF58;
  v73 = identifierCopy;
  v96 = v73;
  v20 = serviceTypeCopy;
  v97 = v20;
  v21 = typeCopy;
  v98 = v21;
  v22 = [v77 filterWithIsIncluded:v95];
  last = [v22 last];

  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__64154;
  v93 = __Block_byref_object_dispose__64155;
  v94 = 0;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke_2;
  v85[3] = &unk_1E754DF80;
  v88 = &v89;
  v85[4] = self;
  v23 = v21;
  v86 = v23;
  v24 = v20;
  v87 = v24;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke_4;
  v84[3] = &unk_1E754DFA8;
  v84[4] = &v89;
  v25 = [last sinkWithCompletion:v85 shouldContinue:v84];
  if (v90[5])
  {
    v26 = objc_alloc(MEMORY[0x1E696AFB0]);
    serviceUniqueIdentifier = [v90[5] serviceUniqueIdentifier];
    v28 = [v26 initWithUUIDString:serviceUniqueIdentifier];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E696AFB0]);
      accessoryUniqueIdentifier = [v90[5] accessoryUniqueIdentifier];
      v31 = [v29 initWithUUIDString:accessoryUniqueIdentifier];

      if (v31)
      {
        v32 = [(HMHome *)self accessoryWithUniqueIdentifier:v31];
        v72 = v32;
        if (v32)
        {
          uniqueIdentifiersForBridgedAccessories = [v32 uniqueIdentifiersForBridgedAccessories];
          v34 = [uniqueIdentifiersForBridgedAccessories count];

          v110[0] = v72;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:1];
          if (v34)
          {
            uniqueIdentifiersForBridgedAccessories2 = [v72 uniqueIdentifiersForBridgedAccessories];
            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 3221225472;
            v83[2] = __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke_8;
            v83[3] = &unk_1E754DFD0;
            v83[4] = self;
            v37 = [uniqueIdentifiersForBridgedAccessories2 na_map:v83];

            v35 = v37;
          }

          v71 = v31;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v38 = v35;
          v39 = [v38 countByEnumeratingWithState:&v79 objects:v109 count:16];
          if (v39)
          {
            v40 = *v80;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v80 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = [*(*(&v79 + 1) + 8 * i) _findServiceWithUniqueIdentifier:v28];
                if (v42)
                {

                  v31 = v71;
                  context = objc_autoreleasePoolPush();
                  selfCopy = self;
                  v62 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    v69 = selfCopy;
                    v63 = HMFGetLogIdentifier();
                    accessory = [v42 accessory];
                    *buf = 138544386;
                    v100 = v63;
                    v101 = 2112;
                    v102 = v42;
                    v103 = 2112;
                    v104 = accessory;
                    v105 = 2112;
                    v106 = v24;
                    v107 = 2112;
                    v108 = v23;
                    _os_log_impl(&dword_19BB39000, v62, OS_LOG_TYPE_INFO, "%{public}@Found MRU service (%@/%@) for service type %@ characteristic type %@", buf, 0x34u);

                    selfCopy = v69;
                  }

                  objc_autoreleasePoolPop(context);
                  completionCopy[2](completionCopy, v42, 0);
                  goto LABEL_30;
                }
              }

              v39 = [v38 countByEnumeratingWithState:&v79 objects:v109 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          v31 = v71;
          v43 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = HMFGetLogIdentifier();
            *buf = 138543874;
            v100 = v46;
            v101 = 2112;
            v102 = v28;
            v103 = 2112;
            v104 = v38;
            _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Unable to find service with unique identifier %@ on accessories %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v43);
          v47 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
          (completionCopy)[2](completionCopy, 0, v47);

          v42 = 0;
LABEL_30:
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            *buf = 138544130;
            v100 = v68;
            v101 = 2112;
            v102 = v31;
            v103 = 2112;
            v104 = v23;
            v105 = 2112;
            v106 = v24;
            _os_log_impl(&dword_19BB39000, v67, OS_LOG_TYPE_ERROR, "%{public}@No accessory for identifier %@ for biome query for characteristic type %@ service type %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v65);
          v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
          (completionCopy)[2](completionCopy, 0, v38);
        }

        v60 = v72;
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543874;
          v100 = v59;
          v101 = 2112;
          v102 = v23;
          v103 = 2112;
          v104 = v24;
          _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_ERROR, "%{public}@Nil accessory identifier for biome query for characteristic type %@ service type %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v56);
        v60 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
        (completionCopy)[2](completionCopy, 0, v60);
      }
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543874;
        v100 = v55;
        v101 = 2112;
        v102 = v23;
        v103 = 2112;
        v104 = v24;
        _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_ERROR, "%{public}@Nil service identifier for biome query for characteristic type %@ service type %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v52);
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      (completionCopy)[2](completionCopy, 0, v31);
    }
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543874;
      v100 = v51;
      v101 = 2112;
      v102 = v23;
      v103 = 2112;
      v104 = v24;
      _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_INFO, "%{public}@No past events for characteristic type %@ service type %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (completionCopy)[2](completionCopy, 0, v28);
  }

  _Block_object_dispose(&v89, 8);
}

uint64_t __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v5 = a1[4];
    v6 = [v3 base];
    v7 = [v6 homeUniqueIdentifier];
    LODWORD(v5) = [v5 hmf_isEqualToUUIDString:v7];

    v8 = a1[5];
    v9 = [v4 serviceType];
    LODWORD(v8) = [v8 isEqualToString:v9];

    v10 = a1[6];
    v11 = objc_msgSend_characteristicType(v4);
    LODWORD(v10) = [v10 isEqualToString:v11];

    v12 = v5 & v8 & v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 40) && [v3 state])
  {
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error fetching most recent event of characteristic type: %@, service type: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t __115__HMHome_Biome__fetchMostRecentEventWithCharacteristicType_serviceType_homeSPIClientIdentifier_library_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (void)fetchMostRecentEventWithCharacteristicType:(id)type serviceType:(id)serviceType homeSPIClientIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  uniqueIdentifier = [(HMHome *)self uniqueIdentifier];
  v12 = BiomeLibrary();
  homeKit = [v12 HomeKit];
  client = [homeKit Client];
  [(HMHome *)self fetchMostRecentEventWithCharacteristicType:typeCopy serviceType:serviceTypeCopy homeSPIClientIdentifier:uniqueIdentifier library:client completion:completionCopy];
}

@end